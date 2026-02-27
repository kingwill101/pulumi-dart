import 'package:pulumi/pulumi.dart';
import 'default_service_accounts_args.dart';

/// Allows management of Google Cloud Platform project default service accounts.
///
/// When certain service APIs are enabled, Google Cloud Platform automatically creates service accounts to help get started, but
/// this is not recommended for production environments as per [Google's documentation](https://cloud.google.com/iam/docs/service-accounts#default).
/// See the [Organization documentation](https://docs.cloud.google.com/resource-manager/docs/quickstarts) for more details.
///
/// > **WARNING** Some Google Cloud products do not work if the default service accounts are deleted so it is better to `DEPRIVILEGE` as
/// Google **CAN NOT** recover service accounts that have been deleted for more than 30 days.
/// Also Google recommends using the `constraints/iam.automaticIamGrantsForDefaultServiceAccounts` [constraint](https://www.terraform.io/docs/providers/google/r/google_organization_policy.html)
/// to disable automatic IAM Grants to default service accounts.
///
/// > This resource works on a best-effort basis, as no API formally describes the default service accounts
/// and it is for users who are unable to use constraints. If the default service accounts change their name
/// or additional service accounts are added, this resource will need to be updated.
///
/// ## Example Usage
///
///
///
/// To enable the default service accounts on the resource destroy:
///
///
///
/// ## Import
///
/// This resource does not support import
class DefaultServiceAccounts extends CustomResource {
  /// The action to be performed in the default service accounts. Valid values are: `DEPRIVILEGE`, `DELETE`, `DISABLE`. Note that `DEPRIVILEGE` action will ignore the REVERT configuration in the restore_policy
  late final Output<String> action;

  /// The project ID where service accounts are created.
  late final Output<String> project;

  /// The action to be performed in the default service accounts on the resource destroy.
  /// Valid values are NONE, REVERT and REVERT_AND_IGNORE_FAILURE. It is applied for any action but in the DEPRIVILEGE.
  /// If set to REVERT it attempts to restore all default SAs but the DEPRIVILEGE action.
  /// If set to REVERT_AND_IGNORE_FAILURE it is the same behavior as REVERT but ignores errors returned by the API.
  late final Output<String?> restorePolicy;

  /// The Service Accounts changed by this resource. It is used for `REVERT` the `action` on the destroy.
  late final Output<Map<String, String>> serviceAccounts;

  DefaultServiceAccounts(
    String name, {
    DefaultServiceAccountsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:projects/defaultServiceAccounts:DefaultServiceAccounts',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.action = registerOutput<String>('action');
    this.project = registerOutput<String>('project');
    this.restorePolicy = registerOutput<String?>('restorePolicy');
    this.serviceAccounts =
        registerOutput<Map<String, String>>('serviceAccounts');
  }
}
