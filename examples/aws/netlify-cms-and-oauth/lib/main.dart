import 'dart:convert';
import 'dart:io';

import 'package:mime/mime.dart';
import 'package:path/path.dart' as p;
import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_aws/providers.dart' as providers;
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
    final githubSecret = oauthCfg.require('githubSecret');
    final githubScope = oauthCfg.get('githubScope') ?? 'public_repo';
    final targetGroupPort =
        oauthCfg.getNumber('targetGroupPort')?.toInt() ?? 80;
    final sessionSecret = oauthCfg.require('sessionSecret');

    final cmsBucket = aws.s3.Bucket(
      'contentBucket',
      args: aws.s3.BucketArgs(bucket: cmsTargetDomain.input()),
    );

    final cmsOwnership = aws.s3.BucketOwnershipControls(
      'contentBucket-ownership',
      args: aws.s3.BucketOwnershipControlsArgs(
        bucket: cmsBucket.bucket,
        rule: aws.s3
            .BucketOwnershipControlsRule(
              objectOwnership: 'BucketOwnerPreferred'.input(),
            )
            .input(),
      ),
    );

    final cmsPublicBlock = aws.s3.BucketPublicAccessBlock(
      'contentBucket-public-access',
      args: aws.s3.BucketPublicAccessBlockArgs(
        bucket: cmsBucket.bucket,
        blockPublicAcls: false.input(),
        blockPublicPolicy: false.input(),
        ignorePublicAcls: false.input(),
        restrictPublicBuckets: false.input(),
      ),
    );

    aws.s3.BucketAcl(
      'contentBucket-acl',
      args: aws.s3.BucketAclArgs(
        bucket: cmsBucket.bucket,
        acl: 'public-read'.input(),
      ),
      options: pulumi.CustomResourceOptions(
        dependsOn: [cmsOwnership, cmsPublicBlock],
      ),
    );

    final cmsWebsite = aws.s3.BucketWebsiteConfiguration(
      'contentBucket-website',
      args: aws.s3.BucketWebsiteConfigurationArgs(
        bucket: cmsBucket.bucket,
        indexDocument: aws.s3
            .BucketWebsiteConfigurationIndexDocument(
              suffix: 'index.html'.input(),
            )
            .input(),
        errorDocument: aws.s3
            .BucketWebsiteConfigurationErrorDocument(key: '404.html'.input())
            .input(),
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
            key: rel.input(),
            bucket: cmsBucket.bucket,
            acl: 'public-read'.input(),
            contentType:
                (lookupMimeType(entity.path) ?? 'application/octet-stream')
                    .input(),
            source: pulumi.FileAsset(entity.path).input(),
          ),
          options: pulumi.CustomResourceOptions(parent: cmsBucket),
        );
        i++;
      }
    }

    final logsBucket = aws.s3.Bucket(
      'requestLogs',
      args: aws.s3.BucketArgs(bucket: '${cmsTargetDomain}-logs'.input()),
    );

    final east = providers.ProviderProvider(
      'east',
      args: providers.ProviderArgs(region: 'us-east-1'.input()),
    );

    pulumi.Input<String> cmsCertArnInput;
    if (cmsCertificateArn != null && cmsCertificateArn.isNotEmpty) {
      cmsCertArnInput = cmsCertificateArn.input();
    } else {
      final cmsDomain = _domainParts(cmsTargetDomain);
      final cmsZone = pulumi.output(
        aws.route53.getZone(
          aws.route53.GetZoneArgs(name: cmsDomain.parentDomain.input()),
        ),
      );

      final cert = aws.acm.Certificate(
        'cms-certificate',
        args: aws.acm.CertificateArgs(
          domainName: cmsTargetDomain.input(),
          validationMethod: 'DNS'.input(),
        ),
        options: pulumi.CustomResourceOptions(provider: east),
      );

      final certValidationDomain = aws.route53.Record(
        '${cmsTargetDomain}-validation',
        args: aws.route53.RecordArgs(
          name: cert.domainValidationOptions.apply((dvo) {
            if (dvo.isEmpty) {
              return pulumi.Output.create('');
            }
            final resourceRecordName =
                dvo.first['resourceRecordName'] as String?;
            if (resourceRecordName == null) {
              return pulumi.Output.create('');
            }
            return resourceRecordName.output();
          }),
          zoneId: cmsZone.apply((zone) => zone.zoneId),
          type: cert.domainValidationOptions.apply((dvo) {
            if (dvo.isEmpty) {
              return pulumi.Output.create('');
            }
            final resourceRecordType =
                dvo.first['resourceRecordType'] as String?;
            if (resourceRecordType == null) {
              return pulumi.Output.create('');
            }
            return resourceRecordType.output();
          }),
          records: cert.domainValidationOptions.apply((dvo) {
            if (dvo.isEmpty) {
              return pulumi.Output.create(<String>[]);
            }
            final value = dvo.first['resourceRecordValue'] as String?;
            if (value == null) {
              return pulumi.Output.create(<String>[]);
            }
            return value.output().apply((value) => [value]);
          }),
          ttl: 600.input(),
        ),
      );

      final certValidation = aws.acm.CertificateValidation(
        'cms-certificateValidation',
        args: aws.acm.CertificateValidationArgs(
          certificateArn: cert.arn,
          validationRecordFqdns: certValidationDomain.fqdn
              .apply<List<String>>((fqdn) => [fqdn])
              .input(),
        ),
        options: pulumi.CustomResourceOptions(provider: east),
      );
      cmsCertArnInput = certValidation.certificateArn;
    }

    final cdn = aws.cloudfront.Distribution(
      'cdn',
      args: aws.cloudfront.DistributionArgs(
        enabled: true.input(),
        aliases: [cmsTargetDomain].input(),
        origins: [
          aws.cloudfront.DistributionOrigin(
            originId: cmsBucket.arn,
            domainName: cmsWebsite.websiteEndpoint,
            customOriginConfig: aws.cloudfront
                .DistributionOriginCustomOriginConfig(
                  originProtocolPolicy: 'http-only'.input(),
                  httpPort: 80.input(),
                  httpsPort: 443.input(),
                  originSslProtocols: ['TLSv1.2'].input(),
                )
                .input(),
          ),
        ].input(),
        defaultRootObject: 'index.html'.input(),
        defaultCacheBehavior: aws.cloudfront
            .DistributionDefaultCacheBehavior(
              targetOriginId: cmsBucket.arn,
              viewerProtocolPolicy: 'redirect-to-https'.input(),
              allowedMethods: ['GET', 'HEAD', 'OPTIONS'].input(),
              cachedMethods: ['GET', 'HEAD', 'OPTIONS'].input(),
              forwardedValues: aws.cloudfront
                  .DistributionDefaultCacheBehaviorForwardedValues(
                    queryString: false.input(),
                    cookies: aws.cloudfront
                        .DistributionDefaultCacheBehaviorForwardedValuesCookies(
                          forward: 'none'.input(),
                        )
                        .input(),
                  )
                  .input(),
              minTtl: 0.input(),
              defaultTtl: 600.input(),
              maxTtl: 600.input(),
            )
            .input(),
        priceClass: 'PriceClass_100'.input(),
        restrictions: aws.cloudfront
            .DistributionRestrictions(
              geoRestriction: aws.cloudfront
                  .DistributionRestrictionsGeoRestriction(
                    restrictionType: 'none'.input(),
                  )
                  .input(),
            )
            .input(),
        viewerCertificate: aws.cloudfront
            .DistributionViewerCertificate(
              acmCertificateArn: cmsCertArnInput,
              sslSupportMethod: 'sni-only'.input(),
            )
            .input(),
        loggingConfig: aws.cloudfront
            .DistributionLoggingConfig(
              bucket: logsBucket.bucketDomainName,
              includeCookies: false.input(),
              prefix: '${cmsTargetDomain}/'.input(),
            )
            .input(),
      ),
    );

    _createAliasRecord(
      'cms',
      cmsTargetDomain,
      cdn.domainName,
      cdn.hostedZoneId,
    );

    final oauthDomain = _domainParts(oauthTargetDomain);
    final oauthZone = pulumi.output(
      aws.route53.getZone(
        aws.route53.GetZoneArgs(name: oauthDomain.parentDomain.input()),
      ),
    );

    final oauthCert = aws.acm.Certificate(
      'oauth-certificate',
      args: aws.acm.CertificateArgs(
        domainName: oauthTargetDomain.input(),
        validationMethod: 'DNS'.input(),
      ),
    );

    final oauthValidationRecord = aws.route53.Record(
      '${oauthTargetDomain}-validation',
      args: aws.route53.RecordArgs(
        name: oauthCert.domainValidationOptions.apply((dvo) {
          if (dvo.isEmpty) {
            return pulumi.Output.create('');
          }
          final resourceRecordName = dvo.first['resourceRecordName'] as String?;
          if (resourceRecordName == null) {
            return pulumi.Output.create('');
          }
          return resourceRecordName.output();
        }),
        zoneId: oauthZone.apply((zone) => zone.zoneId),
        type: oauthCert.domainValidationOptions.apply((dvo) {
          if (dvo.isEmpty) {
            return pulumi.Output.create('');
          }
          final resourceRecordType = dvo.first['resourceRecordType'] as String?;
          if (resourceRecordType == null) {
            return pulumi.Output.create('');
          }
          return resourceRecordType.output();
        }),
        records: oauthCert.domainValidationOptions.apply((dvo) {
          if (dvo.isEmpty) {
            return pulumi.Output.create(<String>[]);
          }
          final value = dvo.first['resourceRecordValue'] as String?;
          if (value == null) {
            return pulumi.Output.create(<String>[]);
          }
          return value.output().apply((value) => [value]);
        }),
        ttl: 600.input(),
      ),
    );

    final oauthCertValidation = aws.acm.CertificateValidation(
      'oauth-certificateValidation',
      args: aws.acm.CertificateValidationArgs(
        certificateArn: oauthCert.arn,
        validationRecordFqdns: oauthValidationRecord.fqdn
            .apply<List<String>>((fqdn) => [fqdn])
            .input(),
      ),
    );

    final oauthVpc = aws.ec2.Vpc(
      'oauth-vpc',
      args: aws.ec2.VpcArgs(
        cidrBlock: '10.42.0.0/16'.input(),
        enableDnsHostnames: true.input(),
      ),
    );

    final region = pulumi.output(
      aws.index.getRegion(aws.index.GetRegionArgs()),
    );
    final oauthSubnetA = aws.ec2.Subnet(
      'oauth-subnet-a',
      args: aws.ec2.SubnetArgs(
        vpcId: oauthVpc.id,
        cidrBlock: '10.42.1.0/24'.input(),
        availabilityZone: region.apply((r) => '${r.name}a'),
        mapPublicIpOnLaunch: true.input(),
      ),
    );
    final oauthSubnetB = aws.ec2.Subnet(
      'oauth-subnet-b',
      args: aws.ec2.SubnetArgs(
        vpcId: oauthVpc.id,
        cidrBlock: '10.42.2.0/24'.input(),
        availabilityZone: region.apply((r) => '${r.name}b'),
        mapPublicIpOnLaunch: true.input(),
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
            cidrBlock: '0.0.0.0/0'.input(),
            gatewayId: oauthIgw.id,
          ),
        ].input(),
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
            protocol: 'tcp'.input(),
            fromPort: 443.input(),
            toPort: 443.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
        egress: [
          aws.ec2.SecurityGroupEgress(
            protocol: '-1'.input(),
            fromPort: 0.input(),
            toPort: 0.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
      ),
    );

    final oauthLb = aws.lb.LoadBalancer(
      'oauth-lb',
      args: aws.lb.LoadBalancerArgs(
        loadBalancerType: 'application'.input(),
        securityGroups: pulumi.Output.all([
          oauthSg.id,
        ]).apply<List<String>>((ids) => ids.cast<String>()).input(),
        subnets: pulumi.Output.all([
          oauthSubnetA.id,
          oauthSubnetB.id,
        ]).apply<List<String>>((ids) => ids.cast<String>()).input(),
      ),
    );

    final oauthTg = aws.lb.TargetGroup(
      'oauth-tg',
      args: aws.lb.TargetGroupArgs(
        port: targetGroupPort.input(),
        protocol: 'HTTP'.input(),
        targetType: 'ip'.input(),
        vpcId: oauthVpc.id,
      ),
    );

    aws.lb.Listener(
      'oauth-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: oauthLb.arn,
        port: 443.input(),
        protocol: 'HTTPS'.input(),
        certificateArn: oauthCertValidation.certificateArn,
        defaultActions: [
          aws.lb.ListenerDefaultAction(
            type: 'forward'.input(),
            targetGroupArn: oauthTg.arn,
          ),
        ].input(),
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
        repositoryUrl: oauthRepo.url.apply((v) => v!),
        context: oauthImageContextPath.input(),
        platform: 'linux/amd64'.input(),
      ),
    );

    final taskExecRole = aws.iam.Role(
      'oauth-task-exec-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy:
            '''{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Principal":{"Service":"ecs-tasks.amazonaws.com"},"Action":"sts:AssumeRole"}]}'''
                .input(),
      ),
    );
    aws.iam.RolePolicyAttachment(
      'oauth-task-exec-role-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: taskExecRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy'
                .input(),
      ),
    );

    final taskDef = aws.ecs.TaskDefinition(
      'oauth-task',
      args: aws.ecs.TaskDefinitionArgs(
        family: 'netlify-cms-oauth'.input(),
        cpu: '256'.input(),
        memory: '512'.input(),
        networkMode: 'awsvpc'.input(),
        requiresCompatibilities: ['FARGATE'].input(),
        executionRoleArn: taskExecRole.arn,
        containerDefinitions:
            pulumi.Output.all([
              oauthImage.imageUri,
              pulumi.output(githubSecret),
              pulumi.output(sessionSecret),
            ]).apply((List<dynamic> values) {
              final imageUri = values[0] as String;
              final githubSecretValue = values[1] as String;
              final sessionSecretValue = values[2] as String;

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
        desiredCount: 1.input(),
        launchType: 'FARGATE'.input(),
        taskDefinition: taskDef.arn,
        networkConfiguration: aws.ecs
            .ServiceNetworkConfiguration(
              assignPublicIp: true.input(),
              subnets: pulumi.Output.all([
                oauthSubnetA.id,
                oauthSubnetB.id,
              ]).apply<List<String>>((ids) => ids.cast<String>()).input(),
              securityGroups: pulumi.Output.all([
                oauthSg.id,
              ]).apply<List<String>>((ids) => ids.cast<String>()).input(),
            )
            .input(),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: oauthTg.arn,
            containerName: 'oauth'.input(),
            containerPort: targetGroupPort.input(),
          ),
        ].input(),
      ),
    );

    _createAliasRecord(
      'oauth',
      oauthTargetDomain,
      oauthLb.dnsName,
      oauthLb.zoneId,
    );

    cmsContentBucketUri = cmsBucket.bucket.apply((b) => 's3://$b');
    cmsCloudFrontDomain = cdn.domainName;
    cmsTargetDomainEndpoint = pulumi.Output.create('https://$cmsTargetDomain');
    oauthEndpoint = oauthLb.dnsName.apply((d) => 'https://$d');
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

  void _createAliasRecord(
    String resourceName,
    String targetDomain,
    pulumi.Input<String> aliasDnsName,
    pulumi.Input<String> aliasZoneId,
  ) {
    final domainParts = _domainParts(targetDomain);
    final hostedZone = pulumi.output(
      aws.route53.getZone(
        aws.route53.GetZoneArgs(name: domainParts.parentDomain.input()),
      ),
    );
    aws.route53.Record(
      '$resourceName-alias',
      args: aws.route53.RecordArgs(
        name:
            (domainParts.subdomain.isEmpty
                    ? targetDomain
                    : domainParts.subdomain)
                .input(),
        zoneId: hostedZone.apply((zone) => zone.zoneId),
        type: 'A'.input(),
        aliases: [
          aws.route53.RecordAlias(
            name: aliasDnsName,
            zoneId: aliasZoneId,
            evaluateTargetHealth: true.input(),
          ),
        ].input(),
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
