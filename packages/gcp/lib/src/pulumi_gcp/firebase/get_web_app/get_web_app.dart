import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web_app_args.dart';
import 'get_web_app_result.dart';

/// A Google Cloud Firebase web application instance
Future<GetWebAppResult> getWebApp(
  GetWebAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getWebApp:getWebApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppResult.fromMap(result);
}
