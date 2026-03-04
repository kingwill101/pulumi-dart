import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_aws/ec2.dart' as aws_ec2;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_awsx/ec2.dart' as awsx_ec2;

class TsLbAttachEc2Stack extends pulumi.Stack {
  late final pulumi.Output<String?> url;

  TsLbAttachEc2Stack() {
    final vpc = awsx.ec2.Vpc(
      'vpc',
      args: awsx.ec2.VpcArgs(
        subnetSpecs: [
          awsx.ec2.SubnetSpec(type: awsx_ec2.SubnetType.valuePublic.input()),
        ].input(),
        natGateways: awsx.ec2
            .NatGatewayConfiguration(
              strategy: awsx_ec2.NatGatewayStrategy.valueNone.input(),
            )
            .input(),
      ),
    );

    final lb = awsx.lb.ApplicationLoadBalancer(
      'lb',
      args: awsx.lb.ApplicationLoadBalancerArgs(
        subnetIds: vpc.publicSubnetIds.apply<List<String>>((ids) => ids ?? []),
      ),
    );

    final ami = pulumi.output(
      aws.ec2.getAmi(
        aws.ec2.GetAmiArgs(
          mostRecent: true.input(),
          owners: ['137112412989'].input(),
          filters: [
            aws.ec2.GetAmiFilter(
              name: 'name'.input(),
              values: ['amzn2-ami-hvm-2.0.*.0-x86_64-ebs'].input(),
            ),
          ].input(),
        ),
      ),
    );
    final amiId = ami.apply<String>((result) => result.id);

    final group = aws.ec2.SecurityGroup(
      'web-secgrp',
      args: aws.ec2.SecurityGroupArgs(
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: 'tcp'.input(),
            fromPort: 80.input(),
            toPort: 80.input(),
            cidrBlocks: ['0.0.0.0/0'].input(),
          ),
        ].input(),
      ),
    );

    const userData =
        '#!/bin/bash\n'
        'echo "Hello, World!" > index.html\n'
        'nohup python3 -m http.server 80 &';

    final instance = aws.ec2.Instance(
      'instance',
      args: aws.ec2.InstanceArgs(
        instanceType: aws_ec2.InstanceType.t2Micro.value.input(),
        vpcSecurityGroupIds: pulumi
            .output(group.id)
            .apply<List<String>>((id) => [id]),
        ami: amiId,
        userData: userData.input(),
      ),
    );

    awsx.lb.TargetGroupAttachment(
      'attachment',
      args: awsx.lb.TargetGroupAttachmentArgs(
        targetGroup: lb.defaultTargetGroup.apply((tg) => tg!),
        instance: instance.input(),
      ),
    );

    url = lb.loadBalancer.apply<String?>(
      (loadBalancer) => loadBalancer?.dnsName,
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}
