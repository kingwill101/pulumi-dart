import 'dart:convert';

import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_awsx/ec2.dart' as awsx_ec2;

class AwsAppDomainArgs {
  final pulumi.Input<String> hostedZoneId;
  final pulumi.Input<String> hostname;
  final bool createDnsRecord;

  AwsAppDomainArgs({
    required this.hostedZoneId,
    required this.hostname,
    this.createDnsRecord = true,
  });
}

class AwsAppTlsArgs {
  final pulumi.Input<String>? certificateArn;
  final bool autoProvisionCertificate;

  AwsAppTlsArgs({this.certificateArn, this.autoProvisionCertificate = true});
}

class AwsAppScalingArgs {
  final pulumi.Input<int>? minCount;
  final pulumi.Input<int>? maxCount;
  final pulumi.Input<double>? cpuTargetUtilizationPercent;

  AwsAppScalingArgs({
    this.minCount,
    this.maxCount,
    this.cpuTargetUtilizationPercent,
  });
}

class AwsAppComputeArgs {
  final pulumi.Input<int>? desiredCount;
  final pulumi.Input<int>? cpu;
  final pulumi.Input<int>? memory;
  final pulumi.Input<bool>? assignPublicIp;

  AwsAppComputeArgs({
    this.desiredCount,
    this.cpu,
    this.memory,
    this.assignPublicIp,
  });
}

class AwsAppNetworkArgs {
  final pulumi.Input<String>? vpcId;
  final pulumi.Input<List<String>>? publicSubnetIds;

  AwsAppNetworkArgs({this.vpcId, this.publicSubnetIds});
}

class AwsDartWebServiceArgs {
  final pulumi.Input<String> sourcePath;
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? dockerfile;
  final pulumi.Input<String>? platform;
  final pulumi.Input<Map<String, String>>? environment;
  final pulumi.Input<Map<String, String>>? tags;
  final AwsAppDomainArgs? domain;
  final AwsAppTlsArgs? tls;
  final AwsAppScalingArgs? scaling;
  final AwsAppComputeArgs? compute;
  final AwsAppNetworkArgs? network;

  AwsDartWebServiceArgs({
    required this.sourcePath,
    this.port,
    this.dockerfile,
    this.platform,
    this.environment,
    this.tags,
    this.domain,
    this.tls,
    this.scaling,
    this.compute,
    this.network,
  });
}

void validateAwsDartWebServiceArgs(AwsDartWebServiceArgs args) {
  final network = args.network;
  if (network?.vpcId != null && network?.publicSubnetIds == null) {
    throw ArgumentError(
      'AwsAppNetworkArgs.publicSubnetIds is required when vpcId is provided.',
    );
  }

  final tls = args.tls;
  if ((tls?.autoProvisionCertificate ?? false) && args.domain == null) {
    throw ArgumentError(
      'AwsAppTlsArgs.autoProvisionCertificate requires AwsAppDomainArgs.',
    );
  }
}

class AwsDartWebService extends pulumi.ComponentResource {
  late final pulumi.Output<String?> url;
  late final pulumi.Output<String?> fqdn;
  late final pulumi.Output<String?> certificateArn;
  late final pulumi.Output<String?> repositoryUrl;
  late final pulumi.Output<String?> imageUri;
  late final pulumi.Output<String?> clusterArn;
  late final pulumi.Output<String?> serviceArn;
  late final pulumi.Output<String?> vpcId;

  AwsDartWebService(
    String name, {
    required AwsDartWebServiceArgs args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
         'dart:aws:appPlatform:AwsDartWebService',
         name,
         const {},
         options ?? pulumi.ComponentResourceOptions(),
       ) {
    validateAwsDartWebServiceArgs(args);

    final childCustomOptions = pulumi.CustomResourceOptions(parent: this);
    final childComponentOptions = pulumi.ComponentResourceOptions(parent: this);

    final compute = args.compute ?? AwsAppComputeArgs();
    final scaling = args.scaling ?? AwsAppScalingArgs();
    final tls = args.tls ?? AwsAppTlsArgs();

    final containerPort = args.port ?? 8080.input();
    final desiredCount = compute.desiredCount ?? 1.input();
    final taskCpu = compute.cpu ?? 256.input();
    final taskMemory = compute.memory ?? 512.input();
    final assignPublicIp = compute.assignPublicIp ?? true.input();
    final minCount = scaling.minCount ?? 1.input();
    final maxCount = scaling.maxCount ?? 2.input();
    final cpuTarget = scaling.cpuTargetUtilizationPercent ?? 65.0.input();

    final normalizedName = name.replaceAll('_', '-');
    final clusterName = '$normalizedName-cluster';
    final serviceName = '$normalizedName-service';
    final containerName = '$normalizedName-container';

    late final pulumi.Input<List<String>> publicSubnetIds;
    late final pulumi.Output<String?> vpcIdOutput;

    final network = args.network;
    if (network?.vpcId != null) {
      publicSubnetIds = network!.publicSubnetIds!;
      vpcIdOutput = network.vpcId!.toOutput().apply<String?>((id) => id);
    } else {
      final vpc = awsx.ec2.Vpc(
        '$name-vpc',
        args: awsx.ec2.VpcArgs(
          numberOfAvailabilityZones: 2.input(),
          enableDnsHostnames: true.input(),
          natGateways: awsx_ec2.NatGatewayConfiguration(
            strategy: awsx_ec2.NatGatewayStrategy.valueNone.input(),
          ).input(),
          subnetSpecs: [
            awsx_ec2.SubnetSpec(type: awsx_ec2.SubnetType.valuePublic.input()),
          ].input(),
          tags: args.tags,
        ),
        options: childComponentOptions,
      );
      publicSubnetIds = vpc.publicSubnetIds.apply<List<String>>((ids) => ids!);
      vpcIdOutput = vpc.vpcId;
    }

    final cluster = aws.ecs.Cluster(
      '$name-cluster',
      args: aws.ecs.ClusterArgs(name: clusterName.input(), tags: args.tags),
      options: childCustomOptions,
    );

    final repo = awsx.ecr.Repository(
      '$name-repo',
      args: awsx.ecr.RepositoryArgs(tags: args.tags),
      options: childComponentOptions,
    );

    final image = awsx.ecr.Image(
      '$name-image',
      args: awsx.ecr.ImageArgs(
        repositoryUrl: repo.url.apply<String>((value) => value!),
        context: args.sourcePath,
        dockerfile: args.dockerfile,
        platform: args.platform ?? 'linux/amd64'.input(),
      ),
      options: childComponentOptions,
    );

    final resolvedVpcId = vpcIdOutput.apply<String>((value) => value!);

    final lbSecurityGroup = aws.ec2.SecurityGroup(
      '$name-lb-sg',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: resolvedVpcId,
        description: '$serviceName load balancer security group'.input(),
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 80.input(),
            toPort: 80.input(),
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
        tags: args.tags,
      ),
      options: childCustomOptions,
    );

    final loadBalancer = aws.lb.LoadBalancer(
      '$name-lb',
      args: aws.lb.LoadBalancerArgs(
        loadBalancerType: 'application'.input(),
        subnets: publicSubnetIds,
        securityGroups: lbSecurityGroup.id.apply<List<String>>((id) => [id]),
        tags: args.tags,
      ),
      options: childCustomOptions,
    );

    final targetGroup = aws.lb.TargetGroup(
      '$name-tg',
      args: aws.lb.TargetGroupArgs(
        port: containerPort,
        protocol: 'HTTP'.input(),
        targetType: 'ip'.input(),
        vpcId: resolvedVpcId,
        tags: args.tags,
      ),
      options: childCustomOptions,
    );

    final listener = aws.lb.Listener(
      '$name-listener',
      args: aws.lb.ListenerArgs(
        loadBalancerArn: loadBalancer.arn,
        port: 80.input(),
        protocol: 'HTTP'.input(),
        defaultActions: [
          aws.lb.ListenerDefaultAction(
            type: 'forward'.input(),
            targetGroupArn: targetGroup.arn,
          ),
        ].input(),
      ),
      options: childCustomOptions,
    );

    final taskExecutionRole = aws.iam.Role(
      '$name-task-execution-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'Service': 'ecs-tasks.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }).input(),
        tags: args.tags,
      ),
      options: childCustomOptions,
    );

    aws.iam.RolePolicyAttachment(
      '$name-task-execution-policy',
      args: aws.iam.RolePolicyAttachmentArgs(
        role: taskExecutionRole.name,
        policyArn:
            'arn:aws:iam::aws:policy/service-role/AmazonECSTaskExecutionRolePolicy'
                .input(),
      ),
      options: childCustomOptions,
    );

    final taskRole = aws.iam.Role(
      '$name-task-role',
      args: aws.iam.RoleArgs(
        assumeRolePolicy: jsonEncode({
          'Version': '2012-10-17',
          'Statement': [
            {
              'Effect': 'Allow',
              'Principal': {'Service': 'ecs-tasks.amazonaws.com'},
              'Action': 'sts:AssumeRole',
            },
          ],
        }).input(),
        tags: args.tags,
      ),
      options: childCustomOptions,
    );

    final serviceSecurityGroup = aws.ec2.SecurityGroup(
      '$name-service-sg',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: resolvedVpcId,
        description: '$serviceName security group'.input(),
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: containerPort,
            toPort: containerPort,
            securityGroups: lbSecurityGroup.id.apply<List<String>>(
              (id) => [id],
            ),
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
        tags: args.tags,
      ),
      options: childCustomOptions,
    );

    final containerDefinitions =
        pulumi.Output.all<dynamic>([
          image.imageUri,
          containerPort.toOutput(),
          taskCpu.toOutput(),
          taskMemory.toOutput(),
          args.environment?.toOutput() ??
              pulumi.Output.create<Map<String, String>?>(null),
        ]).apply<String>((values) {
          final imageUri = values[0] as String;
          final resolvedPort = values[1] as int;
          final resolvedCpu = values[2] as int;
          final resolvedMemory = values[3] as int;
          final environment = values[4] as Map<String, String>?;

          final containerDefinition = <String, dynamic>{
            'name': containerName,
            'image': imageUri,
            'essential': true,
            'cpu': resolvedCpu,
            'memory': resolvedMemory,
            'portMappings': [
              {
                'containerPort': resolvedPort,
                'hostPort': resolvedPort,
                'protocol': 'tcp',
              },
            ],
          };

          if (environment != null && environment.isNotEmpty) {
            containerDefinition['environment'] = environment.entries
                .map((entry) => {'name': entry.key, 'value': entry.value})
                .toList();
          }

          return jsonEncode([containerDefinition]);
        });

    final taskDefinition = aws.ecs.TaskDefinition(
      '$name-taskdef',
      args: aws.ecs.TaskDefinitionArgs(
        family: serviceName.input(),
        cpu: taskCpu.toOutput().apply<String>((value) => '$value'),
        memory: taskMemory.toOutput().apply<String>((value) => '$value'),
        networkMode: 'awsvpc'.input(),
        requiresCompatibilities: ['FARGATE'].input(),
        executionRoleArn: taskExecutionRole.arn,
        taskRoleArn: taskRole.arn,
        containerDefinitions: containerDefinitions,
        tags: args.tags,
      ),
      options: childCustomOptions,
    );

    final service = aws.ecs.Service(
      '$name-service',
      args: aws.ecs.ServiceArgs(
        name: serviceName.input(),
        cluster: cluster.arn,
        desiredCount: desiredCount,
        launchType: 'FARGATE'.input(),
        loadBalancers: [
          aws.ecs.ServiceLoadBalancer(
            targetGroupArn: targetGroup.arn,
            containerName: containerName.input(),
            containerPort: containerPort,
          ),
        ].input(),
        networkConfiguration: aws.ecs
            .ServiceNetworkConfiguration(
              assignPublicIp: assignPublicIp,
              subnets: publicSubnetIds,
              securityGroups: serviceSecurityGroup.id.apply<List<String>>((id) {
                return [id];
              }),
            )
            .input(),
        taskDefinition: taskDefinition.arn,
        waitForSteadyState: true.input(),
        tags: args.tags,
      ),
      options: pulumi.CustomResourceOptions(
        parent: this,
        dependsOn: [listener],
      ),
    );

    if (args.scaling != null) {
      final autoscalingTarget = aws.appautoscaling.Target(
        '$name-autoscaling-target',
        args: aws.appautoscaling.TargetArgs(
          maxCapacity: maxCount,
          minCapacity: minCount,
          resourceId: 'service/$clusterName/$serviceName'.input(),
          scalableDimension: 'ecs:service:DesiredCount'.input(),
          serviceNamespace: 'ecs'.input(),
        ),
        options: pulumi.CustomResourceOptions(
          parent: this,
          dependsOn: [service],
        ),
      );

      aws.appautoscaling.Policy(
        '$name-autoscaling-cpu',
        args: aws.appautoscaling.PolicyArgs(
          policyType: 'TargetTrackingScaling'.input(),
          resourceId: 'service/$clusterName/$serviceName'.input(),
          scalableDimension: 'ecs:service:DesiredCount'.input(),
          serviceNamespace: 'ecs'.input(),
          targetTrackingScalingPolicyConfiguration: aws.appautoscaling
              .PolicyTargetTrackingScalingPolicyConfiguration(
                predefinedMetricSpecification: aws.appautoscaling
                    .PolicyTargetTrackingScalingPolicyConfigurationPredefinedMetricSpecification(
                      predefinedMetricType: 'ECSServiceAverageCPUUtilization'
                          .input(),
                    )
                    .input(),
                targetValue: cpuTarget,
              )
              .input(),
        ),
        options: pulumi.CustomResourceOptions(
          parent: this,
          dependsOn: [autoscalingTarget],
        ),
      );
    }

    pulumi.Input<String>? resolvedCertificateArn;
    final domain = args.domain;
    if (tls.certificateArn != null) {
      resolvedCertificateArn = tls.certificateArn;
    } else if (domain != null && tls.autoProvisionCertificate) {
      final cert = aws.acm.Certificate(
        '$name-cert',
        args: aws.acm.CertificateArgs(
          domainName: domain.hostname,
          validationMethod: 'DNS'.input(),
          tags: args.tags,
        ),
        options: childCustomOptions,
      );

      final validationRecord = aws.route53.Record(
        '$name-cert-validation',
        args: aws.route53.RecordArgs(
          zoneId: domain.hostedZoneId,
          allowOverwrite: true.input(),
          name: cert.domainValidationOptions.apply<String>(
            (dvos) => dvos.first['resourceRecordName'] as String,
          ),
          type: cert.domainValidationOptions.apply<String>(
            (dvos) => dvos.first['resourceRecordType'] as String,
          ),
          ttl: 60.input(),
          records: cert.domainValidationOptions.apply<List<String>>(
            (dvos) => [dvos.first['resourceRecordValue'] as String],
          ),
        ),
        options: childCustomOptions,
      );

      final certValidation = aws.acm.CertificateValidation(
        '$name-cert-validation-resource',
        args: aws.acm.CertificateValidationArgs(
          certificateArn: cert.arn,
          validationRecordFqdns: validationRecord.fqdn.apply<List<String>>(
            (fqdn) => [fqdn],
          ),
        ),
        options: childCustomOptions,
      );
      resolvedCertificateArn = certValidation.certificateArn;
    }

    var certificateArnOutput = pulumi.Output.create<String?>(null);
    if (resolvedCertificateArn != null) {
      certificateArnOutput = resolvedCertificateArn.toOutput().apply<String?>(
        (value) => value,
      );

      aws.lb.Listener(
        '$name-https-listener',
        args: aws.lb.ListenerArgs(
          loadBalancerArn: loadBalancer.arn,
          port: 443.input(),
          protocol: 'HTTPS'.input(),
          sslPolicy: 'ELBSecurityPolicy-2016-08'.input(),
          certificateArn: resolvedCertificateArn,
          defaultActions: [
            aws.lb.ListenerDefaultAction(
              type: 'forward'.input(),
              targetGroupArn: targetGroup.arn,
            ),
          ].input(),
        ),
        options: childCustomOptions,
      );
    }

    var fqdnOutput = pulumi.Output.create<String?>(null);
    if (domain != null) {
      if (domain.createDnsRecord) {
        final dnsRecord = aws.route53.Record(
          '$name-dns',
          args: aws.route53.RecordArgs(
            zoneId: domain.hostedZoneId,
            name: domain.hostname,
            type: 'A'.input(),
            aliases: [
              aws.route53.RecordAlias(
                evaluateTargetHealth: false.input(),
                name: loadBalancer.dnsName,
                zoneId: loadBalancer.zoneId,
              ),
            ].input(),
          ),
          options: childCustomOptions,
        );
        fqdnOutput = dnsRecord.fqdn.apply<String?>((value) => value);
      } else {
        fqdnOutput = domain.hostname.toOutput().apply<String?>(
          (value) => value,
        );
      }
    }

    final useHttps = resolvedCertificateArn != null;
    final urlOutput = domain != null
        ? fqdnOutput.apply<String?>(
            (host) =>
                host == null ? null : '${useHttps ? 'https' : 'http'}://$host',
          )
        : loadBalancer.dnsName.apply<String?>(
            (dnsName) => dnsName.isEmpty
                ? null
                : '${useHttps ? 'https' : 'http'}://$dnsName',
          );

    url = urlOutput;
    fqdn = fqdnOutput;
    certificateArn = certificateArnOutput;
    repositoryUrl = repo.url.apply<String?>((value) => value);
    imageUri = image.imageUri.apply<String?>((value) => value);
    clusterArn = cluster.arn.apply<String?>((value) => value);
    serviceArn = service.arn.apply<String?>((value) => value);
    vpcId = vpcIdOutput;

    registerOutputs({
      'url': url,
      'fqdn': fqdn,
      'certificateArn': certificateArn,
      'repositoryUrl': repositoryUrl,
      'imageUri': imageUri,
      'clusterArn': clusterArn,
      'serviceArn': serviceArn,
      'vpcId': vpcId,
    });
  }
}
