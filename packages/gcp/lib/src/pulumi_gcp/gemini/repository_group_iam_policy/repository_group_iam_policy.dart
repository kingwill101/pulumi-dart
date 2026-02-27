import 'package:pulumi/pulumi.dart';
import 'repository_group_iam_policy_args.dart';

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
/// $ pulumi import gcp:gemini/repositoryGroupIamPolicy:RepositoryGroupIamPolicy editor "projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}} roles/cloudaicompanion.repositoryGroupsUser user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:gemini/repositoryGroupIamPolicy:RepositoryGroupIamPolicy editor "projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}} roles/cloudaicompanion.repositoryGroupsUser"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:gemini/repositoryGroupIamPolicy:RepositoryGroupIamPolicy editor projects/{{project}}/locations/{{location}}/codeRepositoryIndexes/{{code_repository_index}}/repositoryGroups/{{repository_group_id}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RepositoryGroupIamPolicy extends CustomResource {
  /// Required. Id of the Code Repository Index. Used to find the parent resource to bind the IAM policy to
  late final Output<String> codeRepositoryIndex;

  /// (Computed) The etag of the IAM policy.
  late final Output<String> etag;

  /// The location of the Code Repository Index, for example `us-central1`. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  late final Output<String> location;

  /// The policy data generated by
  /// a `gcp.organizations.getIAMPolicy` data source.
  late final Output<String> policyData;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final Output<String> project;

  /// Used to find the parent resource to bind the IAM policy to
  late final Output<String> repositoryGroupId;

  RepositoryGroupIamPolicy(
    String name, {
    RepositoryGroupIamPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:gemini/repositoryGroupIamPolicy:RepositoryGroupIamPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.codeRepositoryIndex = registerOutput<String>('codeRepositoryIndex');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.policyData = registerOutput<String>('policyData');
    this.project = registerOutput<String>('project');
    this.repositoryGroupId = registerOutput<String>('repositoryGroupId');
  }
}
