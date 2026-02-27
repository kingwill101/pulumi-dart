import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_developer_app_args.dart';
import 'get_developer_app_result.dart';

/// Returns the details for a developer app.
Future<GetDeveloperAppResult> getDeveloperApp(
  GetDeveloperAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDeveloperApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeveloperAppResult.fromMap(result);
}
