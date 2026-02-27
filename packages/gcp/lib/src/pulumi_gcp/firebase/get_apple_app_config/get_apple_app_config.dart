import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_apple_app_config_args.dart';
import 'get_apple_app_config_result.dart';

/// A Google Cloud Firebase Apple application configuration
///
/// To get more information about iosApp, see:
///
/// * [API documentation](https://firebase.google.com/docs/projects/api/reference/rest/v1beta1/projects.iosApps)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/)
Future<GetAppleAppConfigResult> getAppleAppConfig(
  GetAppleAppConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:firebase/getAppleAppConfig:getAppleAppConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppleAppConfigResult.fromMap(result);
}
