// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_iam_member_condition/instance_iam_member_condition3.dart';

/// The set of arguments for InstanceIamMember.
class InstanceIamMemberArgs3 {
  final Input<InstanceIamMemberCondition3>? condition;
  final Input<String> instanceId;
  final Input<String>? location;
  final Input<String> member;
  final Input<String>? project;
  final Input<String> role;

  InstanceIamMemberArgs3({
    this.condition,
    required this.instanceId,
    this.location,
    required this.member,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<
          InstanceIamMemberCondition3,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['instanceId'] = instanceId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['member'] = member;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['role'] = role;
    return map;
  }

  factory InstanceIamMemberArgs3.fromMap(Map<String, dynamic> map) {
    return InstanceIamMemberArgs3(
      condition:
          Input.asOptionalInput<InstanceIamMemberCondition3>(map['condition']),
      instanceId: Input.asInput<String>(map['instanceId']),
      location: Input.asOptionalInput<String>(map['location']),
      member: Input.asInput<String>(map['member']),
      project: Input.asOptionalInput<String>(map['project']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
