import 'package:pulumi/pulumi.dart';
import 'get_client_open_id_user_info_result.dart';

/// Get OpenID userinfo about the credentials used with the Google provider,
/// specifically the email.
///
/// This datasource enables you to export the email of the account you've
/// authenticated the provider with; this can be used alongside
/// `data.google_client_config`'s `access_token` to perform OpenID Connect
/// authentication with GKE and configure an RBAC role for the email used.
///
/// > This resource will only work as expected if the provider is configured to
/// use the `https://www.googleapis.com/auth/userinfo.email` scope! You will
/// receive an error otherwise. The provider uses this scope by default.
///
/// ## Example Usage
///
/// ### Exporting An Email
///
///
///
/// ### OpenID Connect W/ Kubernetes Provider + RBAC IAM Role
Future<GetClientOpenIdUserInfoResult> getClientOpenIdUserInfo({
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:organizations/getClientOpenIdUserInfo:getClientOpenIdUserInfo',
    const <String, dynamic>{},
    options: toDeploymentInvokeOptions(options),
  );
  return GetClientOpenIdUserInfoResult.fromMap(result);
}
