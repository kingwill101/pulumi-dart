import 'package:pulumi/pulumi.dart' as pulumi;
import '../account_iam_member_condition/account_iam_member_condition.dart';
import 'account_iam_member_args.dart';

/// Three different resources help you manage IAM policies on billing accounts. Each of these resources serves a different use case:
///
/// * `gcp.billing.AccountIamPolicy`: Authoritative. Sets the IAM policy for the billing accounts and replaces any existing policy already attached.
/// * `gcp.billing.AccountIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the table are preserved.
/// * `gcp.billing.AccountIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role of the billing accounts are preserved.
///
/// > **Note:** `gcp.billing.AccountIamPolicy` **cannot** be used in conjunction with `gcp.billing.AccountIamBinding` and `gcp.billing.AccountIamMember` or they will fight over what your policy should be. In addition, be careful not to accidentally unset ownership of the billing account as `gcp.billing.AccountIamPolicy` replaces the entire policy.
///
/// > **Note:** `gcp.billing.AccountIamBinding` resources **can be** used in conjunction with `gcp.billing.AccountIamMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.billing.AccountIamPolicy
///
///
///
/// ## gcp.billing.AccountIamBinding
///
///
///
/// ## gcp.billing.AccountIamMember
///
///
///
/// ## gcp.billing.AccountIamPolicy
///
///
///
/// ## gcp.billing.AccountIamBinding
///
///
///
/// ## gcp.billing.AccountIamMember
///
///
///
/// ## Import
///
/// ### Importing IAM policies
///
/// IAM policy imports use the `billing_account_id` identifier of the Billing Account resource only. For example:
///
/// * `{{billing_account_id}}`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import IAM policies:
///
/// tf
///
/// import {
///
/// id = {{billing_account_id}}
///
/// to = google_billing_account_iam_policy.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:billing/accountIamMember:AccountIamMember default {{billing_account_id}}
/// ```
class AccountIamMember extends pulumi.CustomResource {
  /// The billing account id.
  ///
  /// For `gcp.billing.AccountIamMember` or `gcp.billing.AccountIamBinding`:
  late final pulumi.Output<String> billingAccountId;
  late final pulumi.Output<AccountIamMemberCondition?> condition;

  /// (Computed) The etag of the billing account's IAM policy.
  late final pulumi.Output<String> etag;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<String> member;

  /// The role that should be applied. Only one
  /// `gcp.billing.AccountIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`. Read more about roles [here](https://cloud.google.com/bigtable/docs/access-control#roles).
  ///
  /// `gcp.billing.AccountIamPolicy` only:
  late final pulumi.Output<String> role;

  AccountIamMember(
    String name, {
    AccountIamMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:billing/accountIamMember:AccountIamMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.billingAccountId = registerOutput<String>('billingAccountId');
    this.condition = registerOutput<AccountIamMemberCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.role = registerOutput<String>('role');
  }
}
