import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_jwt_args.dart';
import 'get_account_jwt_result.dart';

/// This data source provides a [self-signed JWT](https://cloud.google.com/iam/docs/create-short-lived-credentials-direct#sa-credentials-jwt).  Tokens issued from this data source are typically used to call external services that accept JWTs for authentication.
///
/// ## Example Usage
///
/// Note: in order to use the following, the caller must have _at least_ `roles/iam.serviceAccountTokenCreator` on the `target_service_account`.
Future<GetAccountJwtResult> getAccountJwt(
  GetAccountJwtArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccountJwt:getAccountJwt',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountJwtResult.fromMap(result);
}
