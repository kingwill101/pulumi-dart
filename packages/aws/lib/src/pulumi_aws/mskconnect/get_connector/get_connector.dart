import 'package:pulumi/pulumi.dart';
import 'get_connector_args.dart';
import 'get_connector_result.dart';

/// Get information on an Amazon MSK Connect Connector.
Future<GetConnectorResult> getConnector(
  GetConnectorArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:mskconnect/getConnector:getConnector',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult.fromMap(result);
}
