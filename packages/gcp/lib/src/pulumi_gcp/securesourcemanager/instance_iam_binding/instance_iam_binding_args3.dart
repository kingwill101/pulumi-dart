// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_iam_binding_condition/instance_iam_binding_condition3.dart';

/// The set of arguments for InstanceIamBinding.
class InstanceIamBindingArgs3 {
  final Input<InstanceIamBindingCondition3>? condition;
  final Input<String> instanceId;
  final Input<String>? location;
  final Input<List<String>> members;
  final Input<String>? project;
  final Input<String> role;

  InstanceIamBindingArgs3({
    this.condition,
    required this.instanceId,
    this.location,
    required this.members,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<
          InstanceIamBindingCondition3,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['instanceId'] = instanceId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['members'] = members;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['role'] = role;
    return map;
  }

  factory InstanceIamBindingArgs3.fromMap(Map<String, dynamic> map) {
    return InstanceIamBindingArgs3(
      condition:
          Input.asOptionalInput<InstanceIamBindingCondition3>(map['condition']),
      instanceId: Input.asInput<String>(map['instanceId']),
      location: Input.asOptionalInput<String>(map['location']),
      members: Input.asInput<List<String>>(map['members']),
      project: Input.asOptionalInput<String>(map['project']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
