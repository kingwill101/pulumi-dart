import 'package:pulumi/pulumi.dart';
import '../repository_group_iam_binding_condition/repository_group_iam_binding_condition.dart';
import 'repository_group_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Gemini for Google Cloud RepositoryGroup. Each of these resources serves a different use case:
///
/// * `gcp.gemini.RepositoryGroupIamPolicy`: Authoritative. Sets the IAM policy for the repositorygroup and replaces any existing policy already attached.
/// * `gcp.gemini.RepositoryGroupIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repositorygroup are preserved.
/// * `gcp.gemini.RepositoryGroupIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repositorygroup are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.gemini.RepositoryGroupIamPolicy`: Retrieves the IAM policy for the repositorygroup
///
/// > **Note:** `gcp.gemini.RepositoryGroupIamPolicy` **cannot** be used in conjunction with `gcp.gemini.RepositoryGroupIamBinding` and `gcp.gemini.RepositoryGroupIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.gemini.RepositoryGroupIamBinding` resources **can be** used in conjunction with `gcp.gemini.RepositoryGroupIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.gemini.RepositoryGroupIamPolicy
///
///
///
/// ## gcp.gemini.RepositoryGroupIamBinding
///
///
///
/// ## gcp.gemini.RepositoryGroupIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Gemini for Google Cloud RepositoryGroup
///
/// Three different resources help you manage your IAM policy for Gemini for Google Cloud RepositoryGroup. Each of these resources serves a different use case:
///
/// * `gcp.gemini.RepositoryGroupIamPolicy`: Authoritative. Sets the IAM policy for the repositorygroup and replaces any existing policy already attached.
/// * `gcp.gemini.RepositoryGroupIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repositorygroup are preserved.
/// * `gcp.gemini.RepositoryGroupIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repositorygroup are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.gemini.RepositoryGroupIamPolicy`: Retrieves the IAM policy for the repositorygroup
///
/// > **Note:** `gcp.gemini.RepositoryGroupIamPolicy` **cannot** be used in conjunction with `gcp.gemini.RepositoryGroupIamBinding` and `gcp.gemini.RepositoryGroupIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.gemini.RepositoryGroupIamBinding` resources **can be** used in conjunction with `gcp.gemini.RepositoryGroupIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.gemini.RepositoryGroupIamPolicy
///
///
///
/// ## gcp.gemini.RepositoryGroupIamBinding
///
///
///
/// ## gcp.gemini.RepositoryGroupIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}}
///
/// * {{project}}/{{location}}/{{code_repository_index}}/{{repository_group_id}}
///
/// * {{location}}/{{code_repository_index}}/{{repository_group_id}}
///
/// * {{repository_group_id}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Gemini for Google Cloud repositorygroup IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:gemini/repositoryGroupIamBinding:RepositoryGroupIamBinding editor "projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}} roles/cloudaicompanion.repositoryGroupsUser user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:gemini/repositoryGroupIamBinding:RepositoryGroupIamBinding editor "projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}} roles/cloudaicompanion.repositoryGroupsUser"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:gemini/repositoryGroupIamBinding:RepositoryGroupIamBinding editor projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RepositoryGroupIamBinding extends CustomResource {
  /// Required. Id of the Code Repository Index. Used to find the parent resource to bind the IAM policy to
  late final Output<String> codeRepositoryIndex;
  late final Output<RepositoryGroupIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location of the Code Repository Index, for example `us-central1`. Used to find the parent resource to bind the IAM policy to. If not specified,
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

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> repositoryGroupId;

  /// The role that should be applied. Only one
  /// `gcp.gemini.RepositoryGroupIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final Output<String> role;

  RepositoryGroupIamBinding(
    String name, {
    RepositoryGroupIamBindingArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/repositoryGroupIamBinding:RepositoryGroupIamBinding',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.codeRepositoryIndex = registerOutput<String>('codeRepositoryIndex');
    this.condition =
        registerOutput<RepositoryGroupIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.repositoryGroupId = registerOutput<String>('repositoryGroupId');
    this.role = registerOutput<String>('role');
  }
}
