import 'dart:convert';
import 'dart:io';

import 'package:mime/mime.dart';
import 'package:path/path.dart' as p;
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;

class NetlifyCmsAndOauthStack extends pulumi.Stack {
  late final pulumi.Output<String> cmsContentBucketUri;
  late final pulumi.Output<String> cmsCloudFrontDomain;
  late final pulumi.Output<String> cmsTargetDomainEndpoint;
  late final pulumi.Output<String> oauthEndpoint;

  NetlifyCmsAndOauthStack() {
    final cmsCfg = pulumi.Config('pulumi-website-cms');
    final oauthCfg = pulumi.Config('netlify-cms-oauth-provider-infrastructure');

    final pathToWebsiteContents =
        cmsCfg.get('pathToWebsiteContents') ?? '../cms/build';
    final cmsTargetDomain = cmsCfg.require('targetDomain');
    final cmsCertificateArn = cmsCfg.get('certificateArn');

    final oauthTargetDomain = oauthCfg.require('targetDomain');
    final githubKey = oauthCfg.require('githubKey');
    final githubSecret = oauthCfg.requireSecret('githubSecret');
    final githubScope = oauthCfg.get('githubScope') ?? 'public_repo';
    final targetGroupPort = oauthCfg.getInt('targetGroupPort') ?? 80;
    final sessionSecret = oauthCfg.requireSecret('sessionSecret');

    final cmsBucket = aws.s3.Bucket(
      'contentBucket',
      args: aws.s3.BucketArgs(bucket: cmsTargetDomain.output()),
    );

    final cmsOwnership = aws.s3.BucketOwnershipControls(
      'contentBucket-ownership',
      args: aws.s3.BucketOwnershipControlsArgs(
        bucket: cmsBucket.bucket,
        rule: aws.s3.BucketOwnershipControlsRule(
          objectOwnership: 'BucketOwnerPreferred'.output(),
        ).input(),
      ),
    );

    final cmsPublicBlock = aws.s3.BucketPublicAccessBlock(
      'contentBucket-public-access',
      args: aws.s3.BucketPublicAccessBlockArgs(
        bucket: cmsBucket.bucket,
        blockPublicAcls: false.output(),
        blockPublicPolicy: false.output(),
        ignorePublicAcls: false.output(),
        restrictPublicBuckets: false.output(),
      ),
    );

    aws.s3.BucketAcl(
      'contentBucket-acl',
      args: aws.s3.BucketAclArgs(
        bucket: cmsBucket.bucket,
        acl: 'public-read'.output(),
      ),
      options: pulumi.CustomResourceOptions(
        dependsOn: [cmsOwnership, cmsPublicBlock],
      ),
    );

    final cmsWebsite = aws.s3.BucketWebsiteConfiguration(
      'contentBucket-website',
      args: aws.s3.BucketWebsiteConfigurationArgs(
        bucket: cmsBucket.bucket,
        indexDocument: aws.s3.BucketWebsiteConfigurationIndexDocument(
          suffix: 'index.html'.output(),
        ).input(),
        errorDocument: aws.s3.BucketWebsiteConfigurationErrorDocument(
          key: '404.html'.output(),
        ).input(),
      ),
    );

    final cmsRoot = Directory(pathToWebsiteContents);
    if (cmsRoot.existsSync()) {
      final rootAbs = cmsRoot.absolute.path.replaceAll('\\', '/');
      var i = 0;
      for (final entity in cmsRoot.listSync(recursive: true)) {
        if (entity is! File) continue;
        final abs = entity.absolute.path.replaceAll('\\', '/');
        final rel = abs.startsWith('$rootAbs/')
            ? abs.substring(rootAbs.length + 1)
            : entity.uri.pathSegments.last;
        aws.s3.BucketObject(
          'cms-content-$i',
          args: aws.s3.BucketObjectArgs(
            key: rel.output(),
            bucket: cmsBucket.bucket,
            acl: 'public-read'.output(),
            contentType: (lookupMimeType(entity.path) ?? 'application/octet-stream')
                .output(),
            source: pulumi.FileAsset(entity.path).output(),
          ),
          options: pulumi.CustomResourceOptions(parent: cmsBucket),
        );
        i++;
      }
    }

    final logsBucket = aws.s3.Bucket(
      'requestLogs',
      args: aws.s3.BucketArgs(bucket: '${cmsTargetDomain}-logs'.output()),
    );

    final east = aws.Provider(
      'east',
      args: aws.ProviderArgs(region: 'us-east-1'.output()),
    );

    pulumi.Input<String> cmsCertArnInput;
    if (cmsCertificateArn != null && cmsCertificateArn.isNotEmpty) {
      cmsCertArnInput = cmsCertificateArn.output();
    } else {
      final cmsDomain = _domainParts(cmsTargetDomain);
      final cmsZone = aws.route53.getZoneOutput(
        args: aws.route53.GetZoneArgs(name: cmsDomain.parentDomain.output()),
      );

      final cert = aws.acm.Certificate(
        'cms-certificate',
        args: aws.acm.CertificateArgs(
          domainName: cmsTargetDomain.output(),
          validationMethod: 'DNS'.output(),
        ),
        options: pulumi.CustomResourceOptions(provider: east),
      );

      final certValidationDomain = aws.route53.Record(
        '${cmsTargetDomain}-validation',
        args: aws.route53.RecordArgs(
          name: cert.domainValidationOptions.apply((dvo) {
            if (dvo == null || dvo.isEmpty) return '';
            return dvo.first.resourceRecordName;
          }),
          zoneId: cmsZone.zoneId,
          type: cert.domainValidationOptions.apply((dvo) {
            if (dvo == null || dvo.isEmpty) return '';
            return dvo.first.resourceRecordType;
          }),
          records: cert.domainValidationOptions.apply((dvo) {
            if (dvo == null || dvo.isEmpty) return <String>[];
            final value = dvo.first.resourceRecordValue;
            return value == null ? <String>[] : <String>[value];
          }),
          ttl: 600.output(),
        ),
      );

      final certValidation = aws.acm.CertificateValidation(
        'cms-certificateValidation',
        args: aws.acm.CertificateValidationArgs(
          certificateArn: cert.arn,
          validationRecordFqdns: [certValidationDomain.fqdn].output(),
        ),
        options: pulumi.CustomResourceOptions(provider: east),
      );
      cmsCertArnInput = certValidation.certificateArn;
    }

    final cdn = aws.cloudfront.Distribution(
      'cdn',
      args: aws.cloudfront.DistributionArgs(
        enabled: true.output(),
        aliases: [cmsTargetDomain.output()].output(),
        origins: [
          aws.cloudfront.DistributionOrigin(
            originId: cmsBucket.arn,
            domainName: cmsWebsite.websiteEndpoint,
            customOriginConfig: aws.cloudfront.DistributionOriginCustomOriginConfig(
              originProtocolPolicy: 'http-only'.output(),
              httpPort: 80.output(),
              httpsPort: 443.output(),
              originSslProtocols: ['TLSv1.2'].output(),
            ).input(),
          ),
        ].output(),
        defaultRootObject: 'index.html'.output(),
        defaultCacheBehavior: aws.cloudfront.DistributionDefaultCacheBehavior(
          targetOriginId: cmsBucket.arn,
          viewerProtocolPolicy: 'redirect-to-https'.output(),
          allowedMethods: ['GET', 'HEAD', 'OPTIONS'].output(),
          cachedMethods: ['GET', 'HEAD', 'OPTIONS'].output(),
          forwardedValues: aws.cloudfront.DistributionDefaultCacheBehaviorForwardedValues(
            queryString: false.output(),
            cookies: aws.cloudfront.DistributionDefaultCacheBehaviorForwardedValuesCookies(
              forward: 'none'.output(),
            ).input(),
          ).input(),
          minTtl: 0.output(),
          defaultTtl: 600.output(),
          maxTtl: 600.output(),
        ).input(),
        priceClass: 'PriceClass_100'.output(),
        restrictions: aws.cloudfront.DistributionRestrictions(
          geoRestriction: aws.cloudfront.DistributionRestrictionsGeoRestriction(
            restrictionType: 'none'.output(),
          ).input(),
        ).input(),
        viewerCertificate: aws.cloudfront.DistributionViewerCertificate(
          acmCertificateArn: cmsCertArnInput,
          sslSupportMethod: 'sni-only'.output(),
        ).input(),
        loggingConfig: aws.cloudfront.DistributionLoggingConfig(
          bucket: logsBucket.bucketDomainName,
          includeCookies: false.output(),
          prefix: '${cmsTargetDomain}/'.output(),
        ).input(),
      ),
    );

    _createAliasRecord('cms', cmsTargetDomain, cdn.domainName, cdn.hostedZoneId);

    final oauthDomain = _domainParts(oauthTargetDomain);
    final oauthZone = aws.route53.getZoneOutput(
      args: aws.route53.GetZoneArgs(name: oauthDomain.parentDomain.output()),
    );

    final oauthCert = aws.acm.Certificate(
      'oauth-certificate',
      args: aws.acm.CertificateArgs(
        domainName: oauthTargetDomain.output(),
        validationMethod: 'DNS'.output(),
      ),
    );

    final oauthValidationRecord = aws.route53.Record(
      '${oauthTargetDomain}-validation',
      args: aws.route53.RecordArgs(
        name: oauthCert.domainValidationOptions.apply((dvo) {
          if (dvo == null || dvo.isEmpty) return '';
          return dvo.first.resourceRecordName;
        }),
        zoneId: oauthZone.zoneId,
        type: oauthCert.domainValidationOptions.apply((dvo) {
          if (dvo == null || dvo.isEmpty) return '';
          return dvo.first.resourceRecordType;
        }),
        records: oauthCert.domainValidationOptions.apply((dvo) {
          if (dvo == null || dvo.isEmpty) return <String>[];
          final value = dvo.first.resourceRecordValue;
          return value == null ? <String>[] : <String>[value];
        }),
        ttl: 600.output(),
      ),
    );

    final oauthCertValidation = aws.acm.CertificateValidation(
      'oauth-certificateValidation',
      args: aws.acm.CertificateValidationArgs(
        certificateArn: oauthCert.arn,
        validationRecordFqdns: [oauthValidationRecord.fqdn].output(),
      ),
    );

    final oauthVpc = aws.ec2.Vpc(
      'oauth-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: '10.42.0.0/16'.output(),
        enableDnsHostnames: true.output(),
      ),
    );

    final region = aws.getRegionOutput();
    final oauthSubnetA = aws.ec2.Subnet(
      'oauth-subnet-a',
      args: aws.ec2.SubnetArgs(
        vpcId: oauthVpc.id,
        cidrBlock: '10.42.1.0/24'.output(),
        availabilityZone: region.apply((r) => '${r?.name ?? ''}a'),
        mapPublicIpOnLaunch: true.output(),
      ),
    );
    final oauthSubnetB = aws.ec2.Subnet(
      'oauth-subnet-b',
      args: aws.ec2.SubnetArgs(
        vpcId: oauthVpc.id,
        cidrBlock: '10.42.2.0/24'.output(),
        availabilityZone: region.apply((r) => '${r?.name ?? ''}b'),
        mapPublicIpOnLaunch: true.output(),
      ),
    );

    final oauthIgw = aws.ec2.InternetGateway(
      'oauth-igw',
      args: aws.ec2.InternetGatewayArgs(vpcId: oauthVpc.id),
    );
    final oauthRt = aws.ec2.RouteTable(
      'oauth-rt',
      args: aws.ec2.RouteTableArgs(
        vpcId: oauthVpc.id,
        routes: [
          aws.ec2.RouteTableRoute(
            cidrBlock: '0.0.0.0/0'.output(),
            gatewayId: oauthIgw.id,
          ),
        ].output(),
      ),
    );
    aws.ec2.RouteTableAssociation(
      'oauth-rta-a',
      args: aws.ec2.RouteTableAssociationArgs(
        subnetId: oauthSubnetA.id,
        routeTableId: oauthRt.id,
      ),
    );
    aws.ec2.RouteTableAssociation(
      'oauth-rta-b',
      args: aws.ec2.RouteTableAssociationArgs(
        subnetId: oauthSubnetB.id,
        routeTableId: oauthRt.id,
      ),
    );

    final oauthCluster = aws.ecs.Cluster('oauth-cluster');

    final oauthSg = aws.ec2.SecurityGroup(
      'oauth-sg',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: oauthVpc.id,
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.output(),
            fromPort: 443.output(),
            toPort: 443.output(),
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
        ].output(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1'.output(),
            fromPort: 0.output(),
            toPort: 0.output(),
            cidrBlocks: ['0.0.0.0/0'].output(),
          ),
        ].output(),
      ),
    );

    final oauthLb = aws.lb.LoadBalancer(
      'oauth-lb',
      args: aws.lb.LoadBalancerArgs(
        loadBalancerType: 'application'.output(),
        securityGroups: [oauthSg.id].output(),
        subnets: [oauthSubnetA.id, oauthSubnetB.id].output(),
      ),
    );

    final oauthTg = aws.lb.TargetGroup(
      'oauth-tg',
      args: aws.lb.TargetGroupArgs(
        port: targetGroupPort.output(),
        protocol: 'HTTP'.output(),
        targetType: 'ip'.output(),
        vpcId: oauthVpc.id,
      ),
    );

    aws.lb.Listener(
      'oauth-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: oauthLb.arn,
        port: 443.output(),
        protocol: 'HTTPS'.output(),
        certificateArn: oauthCertValidation.certificateArn,
        defaultActions: [
          aws.lb.ListenerDefaultAction(
            type: 'forward'.output(),
            targetGroupArn: oauthTg.arn,
          ),
        ].output(),
      ),
    );

    final oauthRepo = awsx.ecr.Repository(
      'oauth-repo',
      args: awsx.ecr.RepositoryArgs(forceDelete: true.input()),
    );
    final oauthImageContextPath = p.normalize(
      p.join('..', '..', '..', 'aws-ts-netlify-cms-and-oauth', 'cms-oauth'),
    );
    final oauthImage = awsx.ecr.Image(
      'oauth-image',
      args: awsx.ecr.ImageArgs(
        repositoryUrl: oauthRepo.url,
        context: oauthImageContextPath.input(),
        platform: 'linux/amd64'.input(),
      ),
    );

    final taskExecRole = aws.iam.Role(
      'oauth-task-exec-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: '''{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Principal":{"Service":"ecs-tasks.amazonaws.com"},"Action":"sts:AssumeRole"}]}'''
            .output(),
      ),
    );
    aws.iam.RolePolicyAttachment(
      'oauth-task-exec-role-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: taskExecRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy'
                .output(),
      ),
    );

    final taskDef = aws.ecs.TaskDefinition(
      'oauth-task',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'netlify-cms-oauth'.output(),
        cpu: '256'.output(),
        memory: '512'.output(),
        networkMode: 'awsvpc'.output(),
        requiresCompatibilities: ['FARGATE'].output(),
        executionRoleArn: taskExecRole.arn,
        containerDefinitions: pulumi.Output.tuple3(
          oauthImage.imageUri,
          githubSecret,
          sessionSecret,
        ).apply((values) {
          final (imageUri, githubSecretValue, sessionSecretValue) = values;
          return jsonEncode([
            {
              'name': 'oauth',
              'image': imageUri,
              'essential': true,
              'portMappings': [
                {
                  'containerPort': targetGroupPort,
                  'hostPort': targetGroupPort,
                  'protocol': 'tcp',
                },
              ],
              'environment': [
                {'name': 'HOST', 'value': 'https://$oauthTargetDomain'},
                {'name': 'SESSION_SECRET', 'value': sessionSecretValue},
                {'name': 'GITHUB_KEY', 'value': githubKey},
                {'name': 'GITHUB_SECRET', 'value': githubSecretValue},
                {'name': 'GITHUB_SCOPE', 'value': githubScope},
                {'name': 'TARGET_PORT', 'value': '$targetGroupPort'},
              ],
            },
          ]);
        }),
      ),
    );

    aws.ecs.Service(
      'oauth-service',
      args: aws.ecs.ServiceArgs(
        cluster: oauthCluster.arn,
        desiredCount: 1.output(),
        launchType: 'FARGATE'.output(),
        taskDefinition: taskDef.arn,
        networkConfiguration: aws.ecs.ServiceNetworkConfiguration(
          assignPublicIp: true.output(),
          subnets: [oauthSubnetA.id, oauthSubnetB.id].output(),
          securityGroups: [oauthSg.id].output(),
        ).input(),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: oauthTg.arn,
            containerName: 'oauth'.output(),
            containerPort: targetGroupPort.output(),
          ),
        ].output(),
      ),
    );

    _createAliasRecord('oauth', oauthTargetDomain, oauthLb.dnsName, oauthLb.zoneId);

    cmsContentBucketUri = cmsBucket.bucket.apply((b) => 's3://$b');
    cmsCloudFrontDomain = cdn.domainName;
    cmsTargetDomainEndpoint = 'https://$cmsTargetDomain'.output();
    oauthEndpoint = oauthLb.dnsName.apply((d) => 'https://${d ?? ''}');
  }

  _DomainParts _domainParts(String domain) {
    final parts = domain.split('.');
    if (parts.length < 2) {
      throw StateError('No TLD found on $domain');
    }
    if (parts.length == 2) {
      return _DomainParts('', '$domain.');
    }
    final sub = parts.first;
    final parent = '${parts.sublist(1).join('.')}.';
    return _DomainParts(sub, parent);
  }

  aws.route53.Record _createAliasRecord(
    String resourceName,
    String targetDomain,
    pulumi.Input<String> aliasDnsName,
    pulumi.Input<String> aliasZoneId,
  ) {
    final domainParts = _domainParts(targetDomain);
    final hostedZone = aws.route53.getZoneOutput(
      args: aws.route53.GetZoneArgs(name: domainParts.parentDomain.output()),
    );
    return aws.route53.Record(
      '$resourceName-alias',
      args: aws.route53.RecordArgs(
        name: (domainParts.subdomain.isEmpty
                ? targetDomain
                : domainParts.subdomain)
            .output(),
        zoneId: hostedZone.zoneId,
        type: 'A'.output(),
        aliases: [
          aws.route53.RecordAlias(
            name: aliasDnsName,
            zoneId: aliasZoneId,
            evaluateTargetHealth: true.output(),
          ),
        ].output(),
      ),
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('cmsContentBucketUri', cmsContentBucketUri),
      pulumi.OutputProperty('cmsCloudFrontDomain', cmsCloudFrontDomain),
      pulumi.OutputProperty('cmsTargetDomainEndpoint', cmsTargetDomainEndpoint),
      pulumi.OutputProperty('oauthEndpoint', oauthEndpoint),
    ];
  }
}

class _DomainParts {
  final String subdomain;
  final String parentDomain;
  _DomainParts(this.subdomain, this.parentDomain);
}
