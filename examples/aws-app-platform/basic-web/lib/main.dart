import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws_app_platform/pulumi_aws_app_platform.dart'
    as app_platform;

class BasicWebStack extends pulumi.Stack {
  late final pulumi.Output<String?> url;

  BasicWebStack() {
    final service = app_platform.AwsDartWebService(
      'web',
      args: app_platform.AwsDartWebServiceArgs(
        sourcePath: './app'.input(),
        port: 8080.input(),
      ),
    );

    url = service.url;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [pulumi.OutputProperty('url', url)];
  }
}

