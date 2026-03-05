import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_kubernetes/pulumi_kubernetes.dart' as k8s;

class HelmWordpressStack extends pulumi.Stack {
  late final pulumi.Output<String?> chartResources;

  HelmWordpressStack() : super() {
    final wordpress = k8s.helm_sh.Chart(
      'wpdev',
      args: k8s.helm_sh.ChartArgs(
        version: '15.0.5'.output(),
        chart: 'wordpress'.output(),
        fetchOpts: k8s.helm_sh
            .FetchOpts(repo: 'https://charts.bitnami.com/bitnami'.output())
            .output(),
      ),
    );

    chartResources = wordpress.resources;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('chartResources', chartResources)];
  }
}
