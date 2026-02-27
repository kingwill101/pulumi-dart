import 'package:pulumi/pulumi.dart';
import 'get_organization_service_account_args.dart';
import 'get_organization_service_account_result.dart';

/// Get the email address of an organization's Access Approval service account.
///
/// Each Google Cloud organization has a unique service account used by Access Approval.
/// When using Access Approval with a
/// [custom signing key](https://cloud.google.com/cloud-provider-access-management/access-approval/docs/review-approve-access-requests-custom-keys),
/// this account needs to be granted the `cloudkms.signerVerifier` IAM role on the
/// Cloud KMS key used to sign approvals.
Future<GetOrganizationServiceAccountResult> getOrganizationServiceAccount(
  GetOrganizationServiceAccountArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:accessapproval/getOrganizationServiceAccount:getOrganizationServiceAccount',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationServiceAccountResult.fromMap(result);
}
