import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_custom_connector_args.dart';
import 'get_custom_connector_result.dart';

/// Gets details of a single CustomConnector.
Future<GetCustomConnectorResult> getCustomConnector(
  GetCustomConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:connectors/v1:getCustomConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomConnectorResult.fromMap(result);
}
