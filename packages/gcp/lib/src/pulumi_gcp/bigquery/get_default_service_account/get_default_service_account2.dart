import 'package:pulumi/pulumi.dart';
import 'get_default_service_account_args2.dart';
import 'get_default_service_account_result2.dart';

/// Get the email address of a project's unique BigQuery service account.
///
/// Each Google Cloud project has a unique service account used by BigQuery. When using
/// BigQuery with [customer-managed encryption keys](https://cloud.google.com/bigquery/docs/customer-managed-encryption),
/// this account needs to be granted the
/// `cloudkms.cryptoKeyEncrypterDecrypter` IAM role on the customer-managed Cloud KMS key used to protect the data.
///
/// For more information see
/// [the API reference](https://cloud.google.com/bigquery/docs/reference/rest/v2/projects/getServiceAccount).
Future<GetDefaultServiceAccountResult2> getDefaultServiceAccount2(
  GetDefaultServiceAccountArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:bigquery/getDefaultServiceAccount:getDefaultServiceAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDefaultServiceAccountResult2.fromMap(result);
}
