// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_iam_binding_condition/instance_iam_binding_condition_securesourcemanager.dart';

/// The set of arguments for InstanceIamBinding.
class InstanceIamBindingSecuresourcemanagerArgs {
  final pulumi.Input<InstanceIamBindingConditionSecuresourcemanager>? condition;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  InstanceIamBindingSecuresourcemanagerArgs({
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
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          InstanceIamBindingConditionSecuresourcemanager,
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

  factory InstanceIamBindingSecuresourcemanagerArgs.fromMap(
      Map<String, dynamic> map) {
    return InstanceIamBindingSecuresourcemanagerArgs(
      condition: pulumi.Input.asOptionalInput<
          InstanceIamBindingConditionSecuresourcemanager>(map['condition']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      members: pulumi.Input.asInput<List<String>>(map['members']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
