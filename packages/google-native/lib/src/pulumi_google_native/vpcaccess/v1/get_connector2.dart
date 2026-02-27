import 'package:pulumi/pulumi.dart' hide Config;
import 'get_connector_args2.dart';
import 'get_connector_result2.dart';

/// Gets a Serverless VPC Access connector. Returns NOT_FOUND if the resource does not exist.
Future<GetConnectorResult2> getConnector2(
  GetConnectorArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vpcaccess/v1:getConnector',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult2.fromMap(result);
}
