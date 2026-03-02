import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/ec2.dart' as ec2;
import 'package:pulumi_eks/index.dart' as eks_index;
import 'package:pulumi_eks/pulumi_eks.dart' as eks;

class EksMinimalStack extends pulumi.Stack {
  late final pulumi.Output<String> vpcIdOutput;
  late final pulumi.Output<String> subnetIdsOutput;
  late final pulumi.Output<dynamic> kubeconfig;

  EksMinimalStack() {
    final vpc = pulumi.output(
      ec2.getVpc(ec2.GetVpcArgs(default_: true.input())),
    );
    vpcIdOutput = vpc.apply((selected) => (selected as ec2.GetVpcResult).id);

    final subnetIds = vpcIdOutput.apply<List<String>>((vpcId) async {
      final subnets = await ec2.getSubnets(
        ec2.GetSubnetsArgs(
          filters: [
            ec2.GetSubnetsFilter(
              name: 'vpc-id'.input(),
              values: [vpcId].input(),
            ),
          ].input(),
        ),
      );
      final ids = [...subnets.ids]..sort();
      return ids.take(2).toList();
    });

    subnetIdsOutput = subnetIds.apply((ids) => ids.join(','));

    final cluster = eks.index.Cluster(
      'my-cluster',
      args: eks.index.ClusterArgs(
        vpcId: vpcIdOutput,
        authenticationMode: eks_index.AuthenticationMode.apiAndConfigMap
            .input(),
        subnetIds: subnetIds,
        minSize: 1.output(),
        maxSize: 2.output(),
      ),
    );

    kubeconfig = cluster.kubeconfig;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('vpcIdOutput', vpcIdOutput),
      pulumi.OutputProperty('subnetIdsOutput', subnetIdsOutput),
      pulumi.OutputProperty('kubeconfig', kubeconfig),
    ];
  }
}
