// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_group_iam_binding_condition.dart';

/// {@template pulumi_gemini_repository_group_iam_binding_repository_group_iam_binding_args_doc}
/// The set of arguments for RepositoryGroupIamBinding.
/// {@endtemplate}
/// {@macro pulumi_gemini_repository_group_iam_binding_repository_group_iam_binding_args_doc}
class RepositoryGroupIamBindingArgs {
  /// Required. Id of the Code Repository Index. Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> codeRepositoryIndex;
  final pulumi.Input<RepositoryGroupIamBindingCondition>? condition;

  /// The location of the Code Repository Index, for example `us-central1`. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// the value will be parsed from the identifier of the parent resource. If no location is provided in the parent identifier and no
  /// location is specified, it is taken from the provider configuration.
  final pulumi.Input<String>? location;

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
  final pulumi.Input<List<String>> members;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String> repositoryGroupId;

  /// The role that should be applied. Only one
  /// `gcp.gemini.RepositoryGroupIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [RepositoryGroupIamBindingArgs].
  /// [codeRepositoryIndex] Required. Id of the Code Repository Index. Used to find the parent resource to bind the IAM policy to
  /// [condition] Optional.
  /// [location] The location of the Code Repository Index, for example `us-central1`. Used to find the parent resource to bind the IAM policy to. If not specified,
  /// [members] Identities that will be granted the privilege in `role`.
  /// [project] The ID of the project in which the resource belongs.
  /// [repositoryGroupId] Used to find the parent resource to bind the IAM policy to
  /// [role] The role that should be applied. Only one
  RepositoryGroupIamBindingArgs({
    required String codeRepositoryIndex,
    RepositoryGroupIamBindingCondition? condition,
    String? location,
    required List<String> members,
    String? project,
    required String repositoryGroupId,
    required String role,
  }) : codeRepositoryIndex = pulumi.Input.asInput<String>(codeRepositoryIndex),
       condition =
           pulumi.Input.asOptionalInput<RepositoryGroupIamBindingCondition>(
             condition,
           ),
       location = pulumi.Input.asOptionalInput<String>(location),
       members = pulumi.Input.asInput<List<String>>(members),
       project = pulumi.Input.asOptionalInput<String>(project),
       repositoryGroupId = pulumi.Input.asInput<String>(repositoryGroupId),
       role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeRepositoryIndex': codeRepositoryIndex,
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            RepositoryGroupIamBindingCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'location': ?location,
      'members': members,
      'project': ?project,
      'repositoryGroupId': repositoryGroupId,
      'role': role,
    };
  }

  factory RepositoryGroupIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return RepositoryGroupIamBindingArgs(
      codeRepositoryIndex: map['codeRepositoryIndex'] as String,
      condition: map['condition'] == null
          ? null
          : RepositoryGroupIamBindingCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      location: map['location'] == null ? null : map['location'] as String,
      members: (map['members'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      repositoryGroupId: map['repositoryGroupId'] as String,
      role: map['role'] as String,
    );
  }
}
