import 'package:pulumi/pulumi.dart';
import 'get_app_args.dart';
import 'get_app_result.dart';

/// Gets information about an application.
Future<GetAppResult> getApp(
  GetAppArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getApp',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppResult.fromMap(result);
}
