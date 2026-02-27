import 'package:pulumi/pulumi.dart';
import 'get_account_access_token_args.dart';
import 'get_account_access_token_result.dart';

/// This data source provides a google `oauth2` `access_token` for a different service account than the one initially running the script.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/iam/docs/creating-short-lived-service-account-credentials) as well as [iamcredentials.generateAccessToken()](https://cloud.google.com/iam/credentials/reference/rest/v1/projects.serviceAccounts/generateAccessToken)
///
/// ## Example Usage
///
/// To allow `service_A` to impersonate `service_B`, grant the [Service Account Token Creator](https://cloud.google.com/iam/docs/service-accounts#the_service_account_token_creator_role) on B to A.
///
/// In the IAM policy below, `service_A` is given the Token Creator role impersonate `service_B`
///
///
///
/// Once the IAM permissions are set, you can apply the new token to a provider bootstrapped with it.  Any resources that references the aliased provider will run as the new identity.
///
/// In the example below, `gcp.organizations.Project` will run as `service_B`.
///
///
///
/// > *Note*: the generated token is non-refreshable and can have a maximum `lifetime` of `3600` seconds.
Future<GetAccountAccessTokenResult> getAccountAccessToken(
  GetAccountAccessTokenArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccountAccessToken:getAccountAccessToken',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccountAccessTokenResult.fromMap(result);
}
