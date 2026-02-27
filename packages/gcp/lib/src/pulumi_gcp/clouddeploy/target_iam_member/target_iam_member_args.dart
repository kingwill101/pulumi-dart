// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../target_iam_member_condition/target_iam_member_condition.dart';

/// The set of arguments for TargetIamMember.
class TargetIamMemberArgs {
  final pulumi.Input<TargetIamMemberCondition>? condition;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> member;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  TargetIamMemberArgs({
    this.condition,
    this.location,
    required this.member,
    this.name,
    this.project,
    required this.role,
  });

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
      condition: pulumi.Input.asOptionalInput<TargetIamMemberCondition>(
          map['condition']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      member: pulumi.Input.asInput<String>(map['member']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
