// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iammember_condition.dart';

/// {@template pulumi_projects_i_ammember_iammember_args_doc}
/// The set of arguments for IAMMember.
/// {@endtemplate}
/// {@macro pulumi_projects_i_ammember_iammember_args_doc}
class IAMMemberArgs {
  /// An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// Structure is documented below.
  final pulumi.Input<IAMMemberCondition>? condition;

  /// Identities that will be granted the privilege in `role`. gcp.projects.IAMBinding expects `members` field while gcp.projects.IAMMember expects `member` field.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  final pulumi.Input<String> member;

  /// The project id of the target project. This is not
  /// inferred from the provider.
  final pulumi.Input<String> project;

  /// The role that should be applied. Only one
  /// `gcp.projects.IAMBinding` can be used per role. Note that custom roles must be of the format
  /// `[projects|organizations]/{parent-name}/roles/{role-name}`.
  final pulumi.Input<String> role;

  /// Creates a new [IAMMemberArgs].
  /// [condition] An [IAM Condition](https://cloud.google.com/iam/docs/conditions-overview) for a given binding.
  /// [member] Identities that will be granted the privilege in `role`. gcp.projects.IAMBinding expects `members` field while gcp.projects.IAMMember expects `member` field.
  /// [project] The project id of the target project. This is not
  /// [role] The role that should be applied. Only one
  IAMMemberArgs({
    IAMMemberCondition? condition,
    required String member,
    required String project,
    required String role,
  })  : condition = pulumi.Input.asOptionalInput<IAMMemberCondition>(condition),
        member = pulumi.Input.asInput<String>(member),
        project = pulumi.Input.asInput<String>(project),
        role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<IAMMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
    map['project'] = project;
    map['role'] = role;
    return map;
  }

  factory IAMMemberArgs.fromMap(Map<String, dynamic> map) {
    return IAMMemberArgs(
      condition: map['condition'] == null
          ? null
          : IAMMemberCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      member: map['member'] as String,
      project: map['project'] as String,
      role: map['role'] as String,
    );
  }
}
