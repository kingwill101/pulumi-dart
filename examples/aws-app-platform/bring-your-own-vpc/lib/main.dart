import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws_app_platform/pulumi_aws_app_platform.dart'
    as app_platform;

class BringYourOwnVpcStack extends pulumi.Stack {
  late final pulumi.Output<String?> url;
  late final pulumi.Output<String?> serviceArn;

  BringYourOwnVpcStack() {
    final config = pulumi.Config();
    final vpcId = config.require('vpcId');
    final publicSubnetIdsCsv = config.require('publicSubnetIds');
    final publicSubnetIds = publicSubnetIdsCsv
        .split(',')
        .map((value) => value.trim())
        .where((value) => value.isNotEmpty)
        .toList();

    final service = app_platform.AwsDartWebService(
      'web',
      args: app_platform.AwsDartWebServiceArgs(
        sourcePath: './app'.input(),
        port: 8080.input(),
        network: app_platform.AwsAppNetworkArgs(
          vpcId: vpcId.input(),
          publicSubnetIds: publicSubnetIds.input(),
        ),
      ),
    );

    url = service.url;
    serviceArn = service.serviceArn;
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('url', url),
      pulumi.OutputProperty('serviceArn', serviceArn),
    ];
  }
}

