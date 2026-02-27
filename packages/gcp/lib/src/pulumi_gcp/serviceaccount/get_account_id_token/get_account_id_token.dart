import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_id_token_args.dart';
import 'get_account_id_token_result.dart';

/// This data source provides a Google OpenID Connect (`oidc`) `id_token`.  Tokens issued from this data source are typically used to call external services that accept OIDC tokens for authentication (e.g. [Google Cloud Run](https://cloud.google.com/run/docs/authenticating/service-to-service)).
///
/// For more information see
/// [OpenID Connect](https://openid.net/specs/openid-connect-core-1_0.html#IDToken).
///
/// ## Example Usage
///
/// ### ServiceAccount JSON Credential File.
/// `gcp.serviceaccount.getAccountIdToken` will use the configured provider credentials
///
///
///
/// ### Service Account Impersonation.
/// `gcp.serviceaccount.getAccountIdToken` will use background impersonated credentials provided by `gcp.serviceaccount.getAccountAccessToken`.
///
/// Note: to use the following, you must grant `target_service_account` the
/// `roles/iam.serviceAccountTokenCreator` role on itself.
Future<GetAccountIdTokenResult> getAccountIdToken(
  GetAccountIdTokenArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccountIdToken:getAccountIdToken',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountIdTokenResult.fromMap(result);
}
