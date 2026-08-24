import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_dart_faas/pulumi_dart_faas.dart' as faas;

class BasicUrlStack extends pulumi.Stack {
  late final pulumi.Output<String> url;
  late final pulumi.Output<String> serviceName;

  BasicUrlStack() {
    final service = faas.GcpCloudRunDartFunction(
      'hello',
      args: faas.GcpDartFunctionArgs(
        source: faas.DartFunctionSourceArgs(
          image: faas.DartFunctionSourceImageArgs(context: './app'.input()),
        ),
      ),
    );

    url = service.url;
    serviceName = service.serviceName;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('url', url),
      pulumi.OutputProperty('serviceName', serviceName),
    ];
  }
}
