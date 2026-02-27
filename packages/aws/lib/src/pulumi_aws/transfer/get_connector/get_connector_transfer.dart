import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_transfer_args.dart';
import 'get_connector_transfer_result.dart';

/// Data source for managing an AWS Transfer Family Connector.
Future<GetConnectorTransferResult> getConnectorTransfer(
  GetConnectorTransferArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:transfer/getConnector:getConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectorTransferResult.fromMap(result);
}
