import 'package:pulumi/pulumi.dart';
import 'get_connector_args2.dart';
import 'get_connector_result2.dart';

/// Data source for managing an AWS Transfer Family Connector.
Future<GetConnectorResult2> getConnector2(
  GetConnectorArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:transfer/getConnector:getConnector',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConnectorResult2.fromMap(result);
}
