import 'package:pulumi/pulumi.dart' as pulumi;
import '../workforce_pool_iam_binding_condition/workforce_pool_iam_binding_condition.dart';
import 'workforce_pool_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Cloud IAM WorkforcePool. Each of these resources serves a different use case:
///
/// * `gcp.iam.WorkforcePoolIamPolicy`: Authoritative. Sets the IAM policy for the workforcepool and replaces any existing policy already attached.
/// * `gcp.iam.WorkforcePoolIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workforcepool are preserved.
/// * `gcp.iam.WorkforcePoolIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workforcepool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iam.WorkforcePoolIamPolicy`: Retrieves the IAM policy for the workforcepool
///
/// > **Note:** `gcp.iam.WorkforcePoolIamPolicy` **cannot** be used in conjunction with `gcp.iam.WorkforcePoolIamBinding` and `gcp.iam.WorkforcePoolIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iam.WorkforcePoolIamBinding` resources **can be** used in conjunction with `gcp.iam.WorkforcePoolIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.iam.WorkforcePoolIamPolicy
///
///
///
/// ## gcp.iam.WorkforcePoolIamBinding
///
///
///
/// ## gcp.iam.WorkforcePoolIamMember
///
///
///
///
/// ## > **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
/// -
///
/// # IAM policy for Cloud IAM WorkforcePool
///
/// Three different resources help you manage your IAM policy for Cloud IAM WorkforcePool. Each of these resources serves a different use case:
///
/// * `gcp.iam.WorkforcePoolIamPolicy`: Authoritative. Sets the IAM policy for the workforcepool and replaces any existing policy already attached.
/// * `gcp.iam.WorkforcePoolIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workforcepool are preserved.
/// * `gcp.iam.WorkforcePoolIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workforcepool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.iam.WorkforcePoolIamPolicy`: Retrieves the IAM policy for the workforcepool
///
/// > **Note:** `gcp.iam.WorkforcePoolIamPolicy` **cannot** be used in conjunction with `gcp.iam.WorkforcePoolIamBinding` and `gcp.iam.WorkforcePoolIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.iam.WorkforcePoolIamBinding` resources **can be** used in conjunction with `gcp.iam.WorkforcePoolIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.iam.WorkforcePoolIamPolicy
///
///
///
/// ## gcp.iam.WorkforcePoolIamBinding
///
///
///
/// ## gcp.iam.WorkforcePoolIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * locations/{{location}}/workforcePools/{{workforce_pool_id}}
///
/// * {{location}}/{{workforce_pool_id}}
///
/// * {{workforce_pool_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud IAM workforcepool IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolIamBinding:WorkforcePoolIamBinding editor "locations/{{location}}/workforcePools/{{workforce_pool_id}} roles/iam.workforcePoolViewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolIamBinding:WorkforcePoolIamBinding editor "locations/{{location}}/workforcePools/{{workforce_pool_id}} roles/iam.workforcePoolViewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:iam/workforcePoolIamBinding:WorkforcePoolIamBinding editor locations/{{location}}/workforcePools/{{workforce_pool_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WorkforcePoolIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<WorkforcePoolIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The location for the resource. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final pulumi.Output<String> location;

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

  /// The role that should be applied. Only one
  /// `gcp.iam.WorkforcePoolIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> workforcePoolId;

  WorkforcePoolIamBinding(
    String name, {
    WorkforcePoolIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/workforcePoolIamBinding:WorkforcePoolIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<WorkforcePoolIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.role = registerOutput<String>('role');
    this.workforcePoolId = registerOutput<String>('workforcePoolId');
  }
}
