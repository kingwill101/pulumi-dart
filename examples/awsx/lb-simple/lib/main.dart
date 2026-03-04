import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;
import 'package:pulumi_awsx/pulumi_awsx.dart' as awsx;
import 'package:pulumi_awsx/ec2.dart' as awsx_ec2;

class TsLbSimpleStack extends pulumi.Stack {
  late final pulumi.Output<String?> url;

  TsLbSimpleStack() {
    final vpc = awsx.ec2.Vpc(
      'test-vpc',
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

    final cluster = aws.ecs.Cluster('default-cluster');

    final lb = awsx.lb.ApplicationLoadBalancer(
      'nginx-lb',
      args: awsx.lb.ApplicationLoadBalancerArgs(
        subnetIds: vpc.publicSubnetIds.apply<List<String>>((ids) => ids ?? []),
      ),
    );

    final serviceSg = aws.ec2.SecurityGroup(
      'test-service-sg',
      args: aws.ec2.SecurityGroupArgs(
        vpcId: vpc.vpcId.apply<String>((id) => id ?? ''),
        ingress: [
          aws.ec2.SecurityGroupIngress(
            protocol: '-1'.input(),
            fromPort: 0.input(),
            toPort: 0.input(),
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

    awsx.ecs.FargateService(
      'my-service',
      args: awsx.ecs.FargateServiceArgs(
        cluster: cluster.arn,
        networkConfiguration: aws.ecs
            .ServiceNetworkConfiguration(
              assignPublicIp: true.input(),
              securityGroups: serviceSg.id.apply<List<String>>((id) => [id]),
              subnets: vpc.publicSubnetIds.apply<List<String>>(
                (ids) => ids ?? [],
              ),
            )
            .input(),
        taskDefinitionArgs: awsx.ecs
            .FargateServiceTaskDefinition(
              container: awsx.ecs
                  .TaskDefinitionContainerDefinition(
                    image: 'nginx:latest'.input(),
                    name: 'nginx'.input(),
                    cpu: 512.input(),
                    memory: 128.input(),
                    essential: true.input(),
                    portMappings: [
                      awsx.ecs.TaskDefinitionPortMapping(
                        containerPort: 80.input(),
                        targetGroup: lb.defaultTargetGroup.apply((tg) => tg!),
                      ),
                    ].input(),
                  )
                  .input(),
            )
            .input(),
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
