import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_appengine_v1beta_args.dart';
import 'get_app_appengine_v1beta_result.dart';

/// Gets information about an application.
Future<GetAppAppengineV1betaResult> getAppAppengineV1beta(
  GetAppAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppAppengineV1betaResult.fromMap(result);
}
