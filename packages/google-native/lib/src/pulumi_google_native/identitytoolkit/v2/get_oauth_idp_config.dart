import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_oauth_idp_config_args.dart';
import 'get_oauth_idp_config_result.dart';

/// Retrieve an Oidc Idp configuration for an Identity Toolkit project.
Future<GetOauthIdpConfigResult> getOauthIdpConfig(
  GetOauthIdpConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:identitytoolkit/v2:getOauthIdpConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOauthIdpConfigResult.fromMap(result);
}
