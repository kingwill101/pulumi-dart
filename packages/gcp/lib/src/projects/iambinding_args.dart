// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iambinding_condition.dart';

/// {@template pulumi_projects_i_ambinding_iambinding_args_doc}
/// The set of arguments for IAMBinding.
/// {@endtemplate}
/// {@macro pulumi_projects_i_ambinding_iambinding_args_doc}
class IAMBindingArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<IAMBindingCondition>? condition;
  /// Identities that will be granted the privilege in `role`. gcp.projects.IAMBinding expects `members` field while gcp.projects.IAMMember expects `member` field.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<List<String>> members;
  /// The project id of the target project. This is not
  /// inferred from the provider.
  final pulumi.Input<String> project;
  /// The role that should be applied. Only one
  /// `gcp.projects.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [IAMBindingArgs].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [members] Identities that will be granted the privilege in `role`. gcp.projects.IAMBinding expects `members` field while gcp.projects.IAMMember expects `member` field.
  /// [project] The project id of the target project. This is not
  /// [role] The role that should be applied. Only one
  IAMBindingArgs({
    IAMBindingCondition? condition,
    required List<String> members,
    required String project,
    required String role,
  }) :
      condition = pulumi.Input.asOptionalInput<IAMBindingCondition>(condition),
      members = pulumi.Input.asInput<List<String>>(members),
      project = pulumi.Input.asInput<String>(project),
      role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?pulumi.Input.mapOptionalInputValue<IAMBindingCondition, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'members': members,
      'project': project,
      'role': role,
    };
  }

  factory IAMBindingArgs.fromMap(Map<String, dynamic> map) {
    return IAMBindingArgs(
      condition: map['condition'] == null ? null : IAMBindingCondition.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      members: (map['members'] as List).cast<String>(),
      project: map['project'] as String,
      role: map['role'] as String,
    );
  }
}

