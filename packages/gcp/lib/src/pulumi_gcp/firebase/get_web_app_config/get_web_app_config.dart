import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_web_app_config_args.dart';
import 'get_web_app_config_result.dart';

/// A Google Cloud Firebase web application configuration
///
/// To get more information about WebApp, see:
///
/// * [API documentation](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects.webApps)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/)
Future<GetWebAppConfigResult> getWebAppConfig(
  GetWebAppConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getWebAppConfig:getWebAppConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppConfigResult.fromMap(result);
}
