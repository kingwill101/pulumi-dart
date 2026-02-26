import 'package:pulumi/pulumi.dart';
import 'get_connector_args3.dart';
import 'get_connector_result3.dart';

/// Gets a Serverless VPC Access connector. Returns NOT_FOUND if the resource does not exist.
Future<GetConnectorResult3> getConnector3(
  GetConnectorArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vpcaccess/v1beta1:getConnector',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult3.fromMap(result);
}
