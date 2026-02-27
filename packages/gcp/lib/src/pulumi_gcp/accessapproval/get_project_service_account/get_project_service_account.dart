import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_service_account_args.dart';
import 'get_project_service_account_result.dart';

/// Get the email address of a project's Access Approval service account.
///
/// Each Google Cloud project has a unique service account used by Access Approval.
/// When using Access Approval with a
/// [custom signing key](https://cloud.google.com/cloud-provider-access-management/access-approval/docs/review-approve-access-requests-custom-keys),
/// this account needs to be granted the `cloudkms.signerVerifier` IAM role on the
/// Cloud KMS key used to sign approvals.
Future<GetProjectServiceAccountResult> getProjectServiceAccount(
  GetProjectServiceAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:accessapproval/getProjectServiceAccount:getProjectServiceAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectServiceAccountResult.fromMap(result);
}
