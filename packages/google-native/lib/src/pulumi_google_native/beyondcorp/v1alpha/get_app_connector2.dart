import 'package:pulumi/pulumi.dart';
import 'get_app_connector_args2.dart';
import 'get_app_connector_result2.dart';

/// Gets details of a single AppConnector.
Future<GetAppConnectorResult2> getAppConnector2(
  GetAppConnectorArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppConnector',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppConnectorResult2.fromMap(result);
}
