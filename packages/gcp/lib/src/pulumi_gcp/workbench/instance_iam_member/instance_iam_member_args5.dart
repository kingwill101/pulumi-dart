// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_iam_member_condition/instance_iam_member_condition5.dart';

/// The set of arguments for InstanceIamMember.
class InstanceIamMemberArgs5 {
  final Input<InstanceIamMemberCondition5>? condition;
  final Input<String>? location;
  final Input<String> member;
  final Input<String>? name;
  final Input<String>? project;
  final Input<String> role;

  InstanceIamMemberArgs5({
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
      map['condition'] = Input.mapOptionalInputValue<
          InstanceIamMemberCondition5,
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

  factory InstanceIamMemberArgs5.fromMap(Map<String, dynamic> map) {
    return InstanceIamMemberArgs5(
      condition:
          Input.asOptionalInput<InstanceIamMemberCondition5>(map['condition']),
      location: Input.asOptionalInput<String>(map['location']),
      member: Input.asInput<String>(map['member']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
