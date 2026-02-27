import 'package:pulumi/pulumi.dart';
import '../worker_pool_iam_binding_condition/worker_pool_iam_binding_condition.dart';
import 'worker_pool_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Cloud Run (v2 API) WorkerPool. Each of these resources serves a different use case:
///
/// * `gcp.cloudrunv2.WorkerPoolIamPolicy`: Authoritative. Sets the IAM policy for the workerpool and replaces any existing policy already attached.
/// * `gcp.cloudrunv2.WorkerPoolIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workerpool are preserved.
/// * `gcp.cloudrunv2.WorkerPoolIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workerpool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.cloudrunv2.WorkerPoolIamPolicy`: Retrieves the IAM policy for the workerpool
///
/// > **Note:** `gcp.cloudrunv2.WorkerPoolIamPolicy` **cannot** be used in conjunction with `gcp.cloudrunv2.WorkerPoolIamBinding` and `gcp.cloudrunv2.WorkerPoolIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.cloudrunv2.WorkerPoolIamBinding` resources **can be** used in conjunction with `gcp.cloudrunv2.WorkerPoolIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.cloudrunv2.WorkerPoolIamPolicy
///
///
///
/// ## gcp.cloudrunv2.WorkerPoolIamBinding
///
///
///
/// ## gcp.cloudrunv2.WorkerPoolIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Cloud Run (v2 API) WorkerPool
///
/// Three different resources help you manage your IAM policy for Cloud Run (v2 API) WorkerPool. Each of these resources serves a different use case:
///
/// * `gcp.cloudrunv2.WorkerPoolIamPolicy`: Authoritative. Sets the IAM policy for the workerpool and replaces any existing policy already attached.
/// * `gcp.cloudrunv2.WorkerPoolIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the workerpool are preserved.
/// * `gcp.cloudrunv2.WorkerPoolIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the workerpool are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.cloudrunv2.WorkerPoolIamPolicy`: Retrieves the IAM policy for the workerpool
///
/// > **Note:** `gcp.cloudrunv2.WorkerPoolIamPolicy` **cannot** be used in conjunction with `gcp.cloudrunv2.WorkerPoolIamBinding` and `gcp.cloudrunv2.WorkerPoolIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.cloudrunv2.WorkerPoolIamBinding` resources **can be** used in conjunction with `gcp.cloudrunv2.WorkerPoolIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.cloudrunv2.WorkerPoolIamPolicy
///
///
///
/// ## gcp.cloudrunv2.WorkerPoolIamBinding
///
///
///
/// ## gcp.cloudrunv2.WorkerPoolIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/workerPools/{{name}}
///
/// * {{project}}/{{location}}/{{name}}
///
/// * {{location}}/{{name}}
///
/// * {{name}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Cloud Run (v2 API) workerpool IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/workerPoolIamBinding:WorkerPoolIamBinding editor "projects/{{project}}/locations/{{location}}/workerPools/{{worker_pool}} roles/viewer user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/workerPoolIamBinding:WorkerPoolIamBinding editor "projects/{{project}}/locations/{{location}}/workerPools/{{worker_pool}} roles/viewer"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:cloudrunv2/workerPoolIamBinding:WorkerPoolIamBinding editor projects/{{project}}/locations/{{location}}/workerPools/{{worker_pool}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class WorkerPoolIamBinding extends CustomResource {
  late final Output<WorkerPoolIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location of the cloud run worker pool Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

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
  late final Output<List<String>> members;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// The role that should be applied. Only one
  /// `gcp.cloudrunv2.WorkerPoolIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  WorkerPoolIamBinding(
    String name, {
    WorkerPoolIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:cloudrunv2/workerPoolIamBinding:WorkerPoolIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<WorkerPoolIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.role = registerOutput<String>('role');
  }
}
