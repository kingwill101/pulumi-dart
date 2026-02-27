import 'package:pulumi/pulumi.dart' as pulumi;
import '../iambinding_condition/iambinding_condition_organizations.dart';
import 'iambinding_organizations_iambinding_args.dart';

/// Allows creation and management of a single binding within IAM policy for
/// an existing Google Cloud Platform Organization.
///
/// > **Note:** This resource __must not__ be used in conjunction with
/// `gcp.organizations.IAMMember` for the __same role__ or they will fight over
/// what your policy should be.
///
/// > **Note:** On create, this resource will overwrite members of any existing roles.
/// Use `pulumi import` and inspect the `output to ensure
/// your existing members are preserved.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// IAM binding imports use space-delimited identifiers; first the resource in question and then the role.  These bindings can be imported using the `org_id` and role, e.g.
///
/// ```sh
/// $ pulumi import gcp:organizations/iAMBinding:IAMBinding my_org "your-org-id roles/viewer"
/// ```
///
/// -> **Custom Roles**: If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class IAMBindingOrganizationsIAmbinding extends pulumi.CustomResource {
  late final pulumi.Output<IAMBindingConditionOrganizations?> condition;

  /// (Computed) The etag of the organization's IAM policy.
  late final pulumi.Output<String> etag;

  /// A list of users that the role should apply to. For more details on format and restrictions see https://cloud.google.com/billing/reference/rest/v1/Policy#Binding
  late final pulumi.Output<List<String>> members;

  /// The numeric ID of the organization in which you want to create a custom role.
  late final pulumi.Output<String> orgId;

  /// The role that should be applied. Only one
  /// `gcp.organizations.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  IAMBindingOrganizationsIAmbinding(
    String name, {
    IAMBindingOrganizationsIAmbindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/iAMBinding:IAMBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<IAMBindingConditionOrganizations?>('condition');
    this.etag = registerOutput<String>('etag');
    this.members = registerOutput<List<String>>('members');
    this.orgId = registerOutput<String>('orgId');
    this.role = registerOutput<String>('role');
  }
}
