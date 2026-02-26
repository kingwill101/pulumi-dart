// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../instance_iam_binding_condition/instance_iam_binding_condition4.dart';

/// The set of arguments for InstanceIamBinding.
class InstanceIamBindingArgs4 {
  final Input<InstanceIamBindingCondition4>? condition;
  final Input<List<String>> members;

  /// The ID of the instance or a fully qualified identifier for the instance.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The region of the Data Fusion instance.
  final Input<String>? region;
  final Input<String> role;

  InstanceIamBindingArgs4({
    this.condition,
    required this.members,
    this.name,
    this.project,
    this.region,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = Input.mapOptionalInputValue<
          InstanceIamBindingCondition4,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
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
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['role'] = role;
    return map;
  }

  factory InstanceIamBindingArgs4.fromMap(Map<String, dynamic> map) {
    return InstanceIamBindingArgs4(
      condition:
          Input.asOptionalInput<InstanceIamBindingCondition4>(map['condition']),
      members: Input.asInput<List<String>>(map['members']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
