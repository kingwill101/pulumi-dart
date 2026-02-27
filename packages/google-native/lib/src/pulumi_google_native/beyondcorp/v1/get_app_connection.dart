import 'package:pulumi/pulumi.dart' hide Config;
import 'get_app_connection_args.dart';
import 'get_app_connection_result.dart';

/// Gets details of a single AppConnection.
Future<GetAppConnectionResult> getAppConnection(
  GetAppConnectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1:getAppConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppConnectionResult.fromMap(result);
}
