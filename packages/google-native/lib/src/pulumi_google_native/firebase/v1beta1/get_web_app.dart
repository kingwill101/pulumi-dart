import 'package:pulumi/pulumi.dart' hide Config;
import 'get_web_app_args.dart';
import 'get_web_app_result.dart';

/// Gets the specified WebApp.
Future<GetWebAppResult> getWebApp(
  GetWebAppArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebase/v1beta1:getWebApp',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetWebAppResult.fromMap(result);
}
