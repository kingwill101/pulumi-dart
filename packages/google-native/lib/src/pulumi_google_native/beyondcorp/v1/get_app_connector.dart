import 'package:pulumi/pulumi.dart' hide Config;
import 'get_app_connector_args.dart';
import 'get_app_connector_result.dart';

/// Gets details of a single AppConnector.
Future<GetAppConnectorResult> getAppConnector(
  GetAppConnectorArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getAppConnector',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppConnectorResult.fromMap(result);
}
