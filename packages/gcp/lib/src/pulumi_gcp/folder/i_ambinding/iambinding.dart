import 'package:pulumi/pulumi.dart';
import '../iambinding_condition/iambinding_condition.dart';
import 'iambinding_args.dart';

/// Allows creation and management of a single binding within IAM policy for
/// an existing Google Cloud Platform folder.
///
/// > **Note:** This resource _must not_ be used in conjunction with
/// `gcp.folder.IAMPolicy` or they will fight over what your policy
/// should be.
///
/// > **Note:** On create, this resource will overwrite members of any existing roles.
/// Use `pulumi import` and inspect the output to ensure
/// your existing members are preserved.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// IAM binding imports use space-delimited identifiers; first the resource in question and then the role.  These bindings can be imported using the `folder` and role, e.g.
///
/// ```sh
/// $ pulumi import gcp:folder/iAMBinding:IAMBinding viewer "folder-name roles/viewer"
/// ```
///
/// -> **Custom Roles**: If you're importing a IAM binding with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class IAMBinding extends CustomResource {
  late final Output<IAMBindingCondition?> condition;

  /// (Computed) The etag of the folder's IAM policy.
  late final Output<String> etag;

  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  late final Output<String> folder;

  /// An array of identities that will be granted the privilege in the `role`.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that is associated with a specific Google account. For example, alice@gmail.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * For more details on format and restrictions see https://cloud.google.com/billing/reference/rest/v1/Policy#Binding
  late final Output<List<String>> members;

  /// The role that should be applied. Only one
  /// `gcp.folder.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  IAMBinding(
    String name, {
    IAMBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:folder/iAMBinding:IAMBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition = registerOutput<IAMBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.folder = registerOutput<String>('folder');
    this.members = registerOutput<List<String>>('members');
    this.role = registerOutput<String>('role');
  }
}
