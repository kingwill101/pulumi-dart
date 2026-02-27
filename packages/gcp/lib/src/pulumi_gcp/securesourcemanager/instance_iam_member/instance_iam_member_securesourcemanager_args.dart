// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_iam_member_condition/instance_iam_member_condition_securesourcemanager.dart';

/// The set of arguments for InstanceIamMember.
class InstanceIamMemberSecuresourcemanagerArgs {
  final pulumi.Input<InstanceIamMemberConditionSecuresourcemanager>? condition;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> member;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  InstanceIamMemberSecuresourcemanagerArgs({
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
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          InstanceIamMemberConditionSecuresourcemanager,
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

  factory InstanceIamMemberSecuresourcemanagerArgs.fromMap(
      Map<String, dynamic> map) {
    return InstanceIamMemberSecuresourcemanagerArgs(
      condition: pulumi.Input.asOptionalInput<
          InstanceIamMemberConditionSecuresourcemanager>(map['condition']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      member: pulumi.Input.asInput<String>(map['member']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
