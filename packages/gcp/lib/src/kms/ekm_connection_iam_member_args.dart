// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ekm_connection_iam_member_condition.dart';

/// {@template pulumi_kms_ekm_connection_iam_member_ekm_connection_iam_member_args_doc}
/// The set of arguments for EkmConnectionIamMember.
/// {@endtemplate}
/// {@macro pulumi_kms_ekm_connection_iam_member_ekm_connection_iam_member_args_doc}
class EkmConnectionIamMemberArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<EkmConnectionIamMemberCondition>? condition;

  /// The location for the EkmConnection.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  /// Used to find the parent resource to bind the IAM policy to. If not specified,
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
  final pulumi.Input<String> member;

  /// Used to find the parent resource to bind the IAM policy to
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the project will be parsed from the identifier of the parent resource. If no project is provided in the parent identifier and no project is specified, the provider project is used.
  final pulumi.Input<String>? project;

  /// The role that should be applied. Only one
  /// `gcp.kms.EkmConnectionIamBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [EkmConnectionIamMemberArgs].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [location] The location for the EkmConnection.
  /// [member] Identities that will be granted the privilege in `role`.
  /// [name] Used to find the parent resource to bind the IAM policy to
  /// [project] The ID of the project in which the resource belongs.
  /// [role] The role that should be applied. Only one
  EkmConnectionIamMemberArgs({
    EkmConnectionIamMemberCondition? condition,
    String? location,
    required String member,
    String? name,
    String? project,
    required String role,
  }) : condition = pulumi
           .Input.asOptionalInput<EkmConnectionIamMemberCondition>(condition),
       location = pulumi.Input.asOptionalInput<String>(location),
       member = pulumi.Input.asInput<String>(member),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition':
          ?pulumi.Input.mapOptionalInputValue<
            EkmConnectionIamMemberCondition,
            Map<String, dynamic>
          >(condition, (value) => value.toMap()),
      'location': ?location,
      'member': member,
      'name': ?name,
      'project': ?project,
      'role': role,
    };
  }

  factory EkmConnectionIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return EkmConnectionIamMemberArgs(
      condition: map['condition'] == null
          ? null
          : EkmConnectionIamMemberCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>(),
            ),
      location: map['location'] == null ? null : map['location'] as String,
      member: map['member'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
    );
  }
}
