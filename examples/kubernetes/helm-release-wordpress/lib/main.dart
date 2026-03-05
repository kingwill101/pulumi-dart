import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_kubernetes/pulumi_kubernetes.dart' as k8s;

class HelmReleaseWordpressStack extends pulumi.Stack {
  late final pulumi.Output<String> serviceName;
  late final pulumi.Output<String> portForwardCommand;

  HelmReleaseWordpressStack() : super() {
    k8s.helm_sh.Release(
      'wpdev',
      args: k8s.helm_sh.ReleaseArgs(
        chart: 'wordpress'.output(),
        name: 'wpdev'.output(),
        repositoryOpts: k8s.helm_sh
            .RepositoryOpts(repo: 'https://charts.bitnami.com/bitnami'.output())
            .output(),
        version: '13.0.6'.output(),
        values: {
          'service': {'type': 'ClusterIP'},
        }.output(),
      ),
    );

    serviceName = 'wpdev-wordpress'.output();
    portForwardCommand = serviceName.apply(
      (name) => 'kubectl port-forward svc/$name 8080:80',
    );
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('serviceName', serviceName),
      pulumi.OutputProperty('portForwardCommand', portForwardCommand),
    ];
  }
}
