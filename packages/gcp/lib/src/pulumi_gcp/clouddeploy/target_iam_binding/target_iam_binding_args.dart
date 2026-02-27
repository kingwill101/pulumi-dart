// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../target_iam_binding_condition/target_iam_binding_condition.dart';

/// The set of arguments for TargetIamBinding.
class TargetIamBindingArgs {
  final pulumi.Input<TargetIamBindingCondition>? condition;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  TargetIamBindingArgs({
    this.condition,
    this.location,
    required this.members,
    this.name,
    this.project,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          TargetIamBindingCondition,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['members'] = members;
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

  factory TargetIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return TargetIamBindingArgs(
      condition: pulumi.Input.asOptionalInput<TargetIamBindingCondition>(
          map['condition']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      members: pulumi.Input.asInput<List<String>>(map['members']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
