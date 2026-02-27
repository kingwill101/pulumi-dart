import 'package:pulumi/pulumi.dart' as pulumi;
import '../repository_iam_binding_condition/repository_iam_binding_condition.dart';
import 'repository_iam_binding_args.dart';

/// Three different resources help you manage your IAM policy for Artifact Registry Repository. Each of these resources serves a different use case:
///
/// * `gcp.artifactregistry.RepositoryIamPolicy`: Authoritative. Sets the IAM policy for the repository and replaces any existing policy already attached.
/// * `gcp.artifactregistry.RepositoryIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repository are preserved.
/// * `gcp.artifactregistry.RepositoryIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repository are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.artifactregistry.RepositoryIamPolicy`: Retrieves the IAM policy for the repository
///
/// > **Note:** `gcp.artifactregistry.RepositoryIamPolicy` **cannot** be used in conjunction with `gcp.artifactregistry.RepositoryIamBinding` and `gcp.artifactregistry.RepositoryIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.artifactregistry.RepositoryIamBinding` resources **can be** used in conjunction with `gcp.artifactregistry.RepositoryIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.artifactregistry.RepositoryIamPolicy
///
///
///
/// ## gcp.artifactregistry.RepositoryIamBinding
///
///
///
/// ## gcp.artifactregistry.RepositoryIamMember
///
///
///
///
/// ## This resource supports User Project Overrides.
///
/// -
///
/// # IAM policy for Artifact Registry Repository
///
/// Three different resources help you manage your IAM policy for Artifact Registry Repository. Each of these resources serves a different use case:
///
/// * `gcp.artifactregistry.RepositoryIamPolicy`: Authoritative. Sets the IAM policy for the repository and replaces any existing policy already attached.
/// * `gcp.artifactregistry.RepositoryIamBinding`: Authoritative for a given role. Updates the IAM policy to grant a role to a list of members. Other roles within the IAM policy for the repository are preserved.
/// * `gcp.artifactregistry.RepositoryIamMember`: Non-authoritative. Updates the IAM policy to grant a role to a new member. Other members for the role for the repository are preserved.
///
/// A data source can be used to retrieve policy data in advent you do not need creation
///
/// * `gcp.artifactregistry.RepositoryIamPolicy`: Retrieves the IAM policy for the repository
///
/// > **Note:** `gcp.artifactregistry.RepositoryIamPolicy` **cannot** be used in conjunction with `gcp.artifactregistry.RepositoryIamBinding` and `gcp.artifactregistry.RepositoryIamMember` or they will fight over what your policy should be.
///
/// > **Note:** `gcp.artifactregistry.RepositoryIamBinding` resources **can be** used in conjunction with `gcp.artifactregistry.RepositoryIamMember` resources **only if** they do not grant privilege to the same role.
///
///
///
/// ## gcp.artifactregistry.RepositoryIamPolicy
///
///
///
/// ## gcp.artifactregistry.RepositoryIamBinding
///
///
///
/// ## gcp.artifactregistry.RepositoryIamMember
///
///
///
/// ## Import
///
/// For all import syntaxes, the "resource in question" can take any of the following forms:
///
/// * projects/{{project}}/locations/{{location}}/repositories/{{repository}}
///
/// * {{project}}/{{location}}/{{repository}}
///
/// * {{location}}/{{repository}}
///
/// * {{repository}}
///
/// Any variables not passed in the import command will be taken from the provider configuration.
///
/// Artifact Registry repository IAM resources can be imported using the resource identifiers, role, and member.
///
/// IAM member imports use space-delimited identifiers: the resource in question, the role, and the member identity, e.g.
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repositoryIamBinding:RepositoryIamBinding editor "projects/{{project}}/locations/{{location}}/repositories/{{repository}} roles/artifactregistry.reader user:jane@example.com"
/// ```
///
/// IAM binding imports use space-delimited identifiers: the resource in question and the role, e.g.
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repositoryIamBinding:RepositoryIamBinding editor "projects/{{project}}/locations/{{location}}/repositories/{{repository}} roles/artifactregistry.reader"
/// ```
///
/// IAM policy imports use the identifier of the resource in question, e.g.
///
/// ```sh
/// $ pulumi import gcp:artifactregistry/repositoryIamBinding:RepositoryIamBinding editor projects/{{project}}/locations/{{location}}/repositories/{{repository}}
/// ```
///
/// -> **Custom Roles** If you're importing a IAM resource with a custom role, make sure to use the
///
/// full name of the custom role, e.g. `[projects/my-project|organizations/my-org]/roles/my-custom-role`.
class RepositoryIamBinding extends pulumi.CustomResource {
  late final pulumi.Output<RepositoryIamBindingCondition?> condition;

  /// (Computed) The etag of the IAM policy.
  late final pulumi.Output<String> etag;

  /// The name of the repository's location. In addition to specific regions,
  /// special values for multi-region locations are `asia`, `europe`, and `us`.
  /// See [here](https://cloud.google.com/artifact-registry/docs/repositories/repo-locations),
  /// or use the
  /// gcp.artifactregistry.getLocations
  /// data source for possible values. Used to find the parent resource to bind the IAM policy to. If not specified,
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

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  late final pulumi.Output<String> project;

  /// Used to find the parent resource to bind the IAM policy to
  late final pulumi.Output<String> repository;

  /// The role that should be applied. Only one
  /// `gcp.artifactregistry.RepositoryIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  late final pulumi.Output<String> role;

  RepositoryIamBinding(
    String name, {
    RepositoryIamBindingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:artifactregistry/repositoryIamBinding:RepositoryIamBinding',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.condition =
        registerOutput<RepositoryIamBindingCondition?>('condition');
    this.etag = registerOutput<String>('etag');
    this.location = registerOutput<String>('location');
    this.members = registerOutput<List<String>>('members');
    this.project = registerOutput<String>('project');
    this.repository = registerOutput<String>('repository');
    this.role = registerOutput<String>('role');
  }
}
