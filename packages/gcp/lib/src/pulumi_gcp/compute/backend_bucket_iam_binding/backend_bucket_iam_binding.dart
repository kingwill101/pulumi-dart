import 'package:pulumi/pulumi.dart' as pulumi;
import '../backend_bucket_iam_binding_condition/backend_bucket_iam_binding_condition.dart';
import 'backend_bucket_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Compute Engine BackendBucket. Each of these resources serves a different use case:
///
/// * `gcp.compute.BackendBucketIamPolicy`: Authoritative. Sets the IAM policy for the backendbucket and replaces any existing policy already attached.
/// * `gcp.compute.BackendBucketIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the backendbucket are preserved.
/// * `gcp.compute.BackendBucketIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the backendbucket are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.BackendBucketIamPolicy`: Retrieves the IAM policy for the backendbucket
///
/// > **Note:** `gcp.compute.BackendBucketIamPolicy` **cannot** be used in conjunction with `gcp.compute.BackendBucketIamBinding` and `gcp.compute.BackendBucketIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.BackendBucketIamBinding` resources **can be** used in conjunction with `gcp.compute.BackendBucketIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.compute.BackendBucketIamPolicy
///
///
///
/// ## gcp.compute.BackendBucketIamBinding
///
///
///
/// ## gcp.compute.BackendBucketIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Compute Engine BackendBucket
///
/// Three different resources help you manage your IAM policy for Compute Engine BackendBucket. Each of these resources serves a different use case:
///
/// * `gcp.compute.BackendBucketIamPolicy`: Authoritative. Sets the IAM policy for the backendbucket and replaces any existing policy already attached.
/// * `gcp.compute.BackendBucketIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the backendbucket are preserved.
/// * `gcp.compute.BackendBucketIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the backendbucket are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.compute.BackendBucketIamPolicy`: Retrieves the IAM policy for the backendbucket
///
/// > **Note:** `gcp.compute.BackendBucketIamPolicy` **cannot** be used in conjunction with `gcp.compute.BackendBucketIamBinding` and `gcp.compute.BackendBucketIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.compute.BackendBucketIamBinding` resources **can be** used in conjunction with `gcp.compute.BackendBucketIamMember` resources **only if** they do not grant privilege to the same role.
///
///
/// ## gcp.compute.BackendBucketIamPolicy
///
///
///
/// ## gcp.compute.BackendBucketIamBinding
///
///
///
/// ## gcp.compute.BackendBucketIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/global/backendBuckets/{{name}}
///
/// * {{project}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Compute Engine backendbucket IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/backendBucketIamBinding:BackendBucketIamBinding editor "projects/{{project}}/global/backendBuckets/{{backend_bucket}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/backendBucketIamBinding:BackendBucketIamBinding editor "projects/{{project}}/global/backendBuckets/{{backend_bucket}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:compute/backendBucketIamBinding:BackendBucketIamBinding editor projects/{{project}}/global/backendBuckets/{{backend_bucket}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class BackendBucketIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<BackendBucketIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// Identities that will be granted the privilege in `role`.
  /// Each entry can have one of the following values:
  /// * **allUsers**: A special identifier that represents anyone who is on the internet; with or without a Google account.
  /// * **allAuthenticatedUsers**: A special identifier that represents anyone who is authenticated with a Google account or a service account.
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  /// * **projectOwner:projectid**: Owners of the given project. For example, "projectOwner:my-example-project"
  /// * **projectEditor:projectid**: Editors of the given project. For example, "projectEditor:my-example-project"
  /// * **projectViewer:projectid**: Viewers of the given project. For example, "projectViewer:my-example-project"
  /// * **Federated identities**: One or more federated identities in a workload or workforce identity pool, workload running on GKE, etc. Refer to the [Principal identifiers documentation](https://cloud.google.com/iam/docs/principal-identifiers#allow) for examples of targets and valid configuration. For example, "principal://iam.googleapis.com/locations/global/workforcePools/example-contractors/subject/joe@example.com"
  late final pulumi.Output<List<String>> members;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// The role that should be applied. Only one
  /// `gcp.compute.BackendBucketIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  BackendBucketIamBinding(
    String name, {
    BackendBucketIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/backendBucketIamBinding:BackendBucketIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<BackendBucketIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
