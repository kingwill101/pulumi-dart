import 'package:pulumi/pulumi.dart';
import '../iammember_condition/iammember_condition2.dart';
import 'iammember_args2.dart';

/// Four different resources help you manage your IAM policy for a organization. Each of these resources serves a different use case:
///
/// * `gcp.organizations.IAMPolicy`: Authoritative. Sets the IAM policy for the organization and replaces any existing policy already attached.
/// * `gcp.organizations.IAMBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the organization are preserved.
/// * `gcp.organizations.IAMMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the organization are preserved.
/// * `gcp.organizations.IamAuditConfig`: Authoritative for a given service. Updates the IAM policy to enable audit logging for the given service.
///
///
/// > **Note:** `gcp.organizations.IAMPolicy` **cannot** be used in conjunction with `gcp.organizations.IAMBinding`, `gcp.organizations.IAMMember`, or `gcp.organizations.IamAuditConfig` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.organizations.IAMBinding` resources **can be** used in conjunction with `gcp.organizations.IAMMember` resources **only if** they do not grant privilege to the same role.
///
/// ## gcp.organizations.IAMPolicy
///
/// !> **Warning:** New organizations have several default policies which will,
/// without extreme caution, be **overwritten** by use of this resource.
/// The safest alternative is to use multiple `gcp.organizations.IAMBinding`
/// resources. This resource makes it easy to remove your own access to
/// an organization, which will require a call to Google Support to have
/// fixed, and can take multiple days to resolve.
///
///
/// In general, this resource should only be used with organizations
/// fully managed by this provider.I f you do use this resource,
/// the best way to be sure that you are not making dangerous changes is to start
/// by **importing** your existing policy, and examining the diff very closely.
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.organizations.IAMBinding
///
/// > **Note:** If `role` is set to `roles/owner` and you don't specify a user or service account you have access to in `members`, you can lock yourself out of your organization.
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.organizations.IAMMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.organizations.IamAuditConfig
///
///
///
/// ## gcp.organizations.IAMBinding
///
/// > **Note:** If `role` is set to `roles/owner` and you don't specify a user or service account you have access to in `members`, you can lock yourself out of your organization.
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.organizations.IAMMember
///
///
///
/// With IAM Conditions:
///
///
///
/// ## gcp.organizations.IamAuditConfig
///
///
///
/// ## Import
///
/// ### Importing Audit Configs
///
/// An audit config can be imported into a `google_organization_iam_audit_config` resource using the resource's `org_id` and the `service`, e.g:
///
/// * `"{{org_id}} foo.googleapis.com"`
///
/// An `import` block (Terraform v1.5.0 and later) can be used to import audit configs:
///
/// tf
///
/// import {
///
/// id = "{{org_id}} foo.googleapis.com"
///
/// to = google_organization_iam_audit_config.default
///
/// }
///
/// The `pulumi import` command can also be used:
///
/// ```sh
/// $ pulumi import gcp:organizations/iAMMember:IAMMember default "{{org_id}} foo.googleapis.com"
/// ```
class IAMMember2 extends CustomResource {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  late final Output<IAMMemberCondition2?> condition;

  /// (Computed) The etag of the organization's IAM policy.
  late final Output<String> etag;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final Output<String> member;

  /// The organization id of the target organization.
  late final Output<String> orgId;

  /// The role that should be applied. Only one
  /// `gcp.organizations.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `organizations/{{org_id}}/roles/{{role_id}}`.
  late final Output<String> role;

  IAMMember2(
    String name, {
    IAMMemberArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/iAMMember:IAMMember',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<IAMMemberCondition2?>('condition');
    this.etag = registerOutput<String>('etag');
    this.member = registerOutput<String>('member');
    this.orgId = registerOutput<String>('orgId');
    this.role = registerOutput<String>('role');
  }
}
