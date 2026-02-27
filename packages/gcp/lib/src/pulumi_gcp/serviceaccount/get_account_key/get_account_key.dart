import 'package:pulumi/pulumi.dart';
import 'get_account_key_args.dart';
import 'get_account_key_result.dart';

/// Get service account public key. For more information, see [the official documentation](https://cloud.google.com/iam/docs/creating-managing-service-account-keys) and [API](https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts.keys/get).
Future<GetAccountKeyResult> getAccountKey(
  GetAccountKeyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:serviceaccount/getAccountKey:getAccountKey',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAccountKeyResult.fromMap(result);
}
