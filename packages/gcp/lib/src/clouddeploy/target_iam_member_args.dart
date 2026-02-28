// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_iam_member_condition.dart';

/// {@template pulumi_clouddeploy_target_iam_member_target_iam_member_args_doc}
/// The set of arguments for TargetIamMember.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_target_iam_member_target_iam_member_args_doc}
class TargetIamMemberArgs {
  final pulumi.Input<TargetIamMemberCondition>? condition;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> member;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [TargetIamMemberArgs].
  /// [condition] Optional.
  /// [location] Optional.
  /// [member] Required.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Required.
  TargetIamMemberArgs({
    TargetIamMemberCondition? condition,
    String? location,
    required String member,
    String? name,
    String? project,
    required String role,
  })  : condition =
            pulumi.Input.asOptionalInput<TargetIamMemberCondition>(condition),
        location = pulumi.Input.asOptionalInput<String>(location),
        member = pulumi.Input.asInput<String>(member),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          TargetIamMemberCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['member'] = member;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['role'] = role;
    return map;
  }

  factory TargetIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return TargetIamMemberArgs(
      condition: map['condition'] == null
          ? null
          : TargetIamMemberCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      member: map['member'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
    );
  }
}
