import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_eks/pulumi_eks.dart' as eks;

class CueEksStack extends pulumi.Stack {
  late final pulumi.Output<dynamic> rawkodeKubeconfig;
  late final pulumi.Output<dynamic> stack72Kubeconfig;

  CueEksStack() {
    final rawkode = eks.index.Cluster(
      'rawkode',
      args: eks.index.ClusterArgs(
        instanceType: 't2.medium'.output(),
        desiredCapacity: 2.output(),
        minSize: 1.output(),
        maxSize: 2.output(),
      ),
    );

    final stack72 = eks.index.Cluster(
      'stack72',
      args: eks.index.ClusterArgs(
        instanceType: 't2.medium'.output(),
        desiredCapacity: 4.output(),
        minSize: 1.output(),
        maxSize: 8.output(),
      ),
    );

    rawkodeKubeconfig = rawkode.kubeconfig;
    stack72Kubeconfig = stack72.kubeconfig;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('rawkodeKubeconfig', rawkodeKubeconfig),
      pulumi.OutputProperty('stack72Kubeconfig', stack72Kubeconfig),
    ];
  }
}
