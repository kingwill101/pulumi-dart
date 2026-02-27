import 'package:pulumi/pulumi.dart' hide Config;
import 'get_app_connection_args2.dart';
import 'get_app_connection_result2.dart';

/// Gets details of a single AppConnection.
Future<GetAppConnectionResult2> getAppConnection2(
  GetAppConnectionArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:beyondcorp/v1alpha:getAppConnection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppConnectionResult2.fromMap(result);
}
