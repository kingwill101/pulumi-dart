import 'package:pulumi/pulumi.dart' hide Config;
import 'get_app_args2.dart';
import 'get_app_result2.dart';

/// Gets information about an application.
Future<GetAppResult2> getApp2(
  GetAppArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getApp',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAppResult2.fromMap(result);
}
