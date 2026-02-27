import 'package:pulumi/pulumi.dart' hide Config;
import 'get_connector_args.dart';
import 'get_connector_result.dart';

/// Gets details of a single Connector.
Future<GetConnectorResult> getConnector(
  GetConnectorArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getConnector',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult.fromMap(result);
}
