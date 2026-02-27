import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_auth_config_args.dart';
import 'get_auth_config_result.dart';

/// Gets a complete auth config. If the auth config doesn't exist, Code.NOT_FOUND exception will be thrown. Returns the decrypted auth config.
Future<GetAuthConfigResult> getAuthConfig(
  GetAuthConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:integrations/v1alpha:getAuthConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthConfigResult.fromMap(result);
}
