import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_connector_args.dart';
import 'get_app_connector_result.dart';

/// Get information about a Google BeyondCorp App Connector.
Future<GetAppConnectorResult> getAppConnector(
  GetAppConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:beyondcorp/getAppConnector:getAppConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppConnectorResult.fromMap(result);
}
