import 'package:pulumi/pulumi.dart' as pulumi;
import 'iampolicy_organizations_iampolicy_args.dart';

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
/// $ pulumi import gcp:organizations/iAMPolicy:IAMPolicy default "{{org_id}} foo.googleapis.com"
/// ```
class IAMPolicyOrganizationsIAmpolicy extends pulumi.CustomResource {
  /// (Computed) The etag of the organization's IAM policy.
  late final pulumi.Output<String> etag;

  /// The organization id of the target organization.
  late final pulumi.Output<String> orgId;

  /// The `gcp.organizations.getIAMPolicy` data source that represents
  /// the IAM policy that will be applied to the organization. The policy will be
  /// merged with any existing policy applied to the organization.
  ///
  /// Changing this updates the policy.
  ///
  /// Deleting this removes all policies from the organization, locking out users without
  /// organization-level access.
  late final pulumi.Output<String> policyData;

  IAMPolicyOrganizationsIAmpolicy(
    String name, {
    IAMPolicyOrganizationsIAmpolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/iAMPolicy:IAMPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.orgId = registerOutput<String>('orgId');
    this.policyData = registerOutput<String>('policyData');
  }
}
