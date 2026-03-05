import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_kubernetes/yaml.dart' as k8syaml;

class SockShopStack extends pulumi.Stack {
  SockShopStack() : super() {
    final config = pulumi.Config();
    final isMinikube = config.getBoolean('isMinikube') ?? false;
    if (isMinikube) {
      throw Exception('This example does not yet support minikube');
    }

    const manifestUrl =
        'https://raw.githubusercontent.com/microservices-demo/microservices-demo/master/deploy/kubernetes/complete-demo.yaml';
    const namespace = 'sock-shop';
    const frontendService = 'front-end';

    k8syaml.ConfigFile(
      'sock-shop',
      args: k8syaml.ConfigFileArgs(file: manifestUrl.output()),
    );

    registerOutputs({
      'manifestUrl': manifestUrl.output(),
      'namespace': namespace.output(),
      'frontendService': frontendService.output(),
      'portForwardCommand':
          'kubectl -n $namespace port-forward svc/$frontendService 8080:80'
              .output(),
    });
  }
}
