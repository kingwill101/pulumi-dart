import 'package:pulumi/pulumi.dart';
import 'get_folder_service_account_args.dart';
import 'get_folder_service_account_result.dart';

/// Get the email address of a folder's Access Approval service account.
///
/// Each Google Cloud folder has a unique service account used by Access Approval.
/// When using Access Approval with a
/// [custom signing key](https://cloud.google.com/cloud-provider-access-management/access-approval/docs/review-approve-access-requests-custom-keys),
/// this account needs to be granted the `cloudkms.signerVerifier` IAM role on the
/// Cloud KMS key used to sign approvals.
Future<GetFolderServiceAccountResult> getFolderServiceAccount(
  GetFolderServiceAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:accessapproval/getFolderServiceAccount:getFolderServiceAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderServiceAccountResult.fromMap(result);
}
