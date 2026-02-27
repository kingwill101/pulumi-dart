// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_iam_binding_condition/instance_iam_binding_condition_securitycenter.dart';

/// The set of arguments for InstanceIamBinding.
class InstanceIamBindingSecuritycenterArgs {
  final pulumi.Input<InstanceIamBindingConditionSecuritycenter>? condition;
  final pulumi.Input<List<String>> members;

  /// The ID of the instance or a fully qualified identifier for the instance.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the Data Fusion instance.
  final pulumi.Input<String>? region;
  final pulumi.Input<String> role;

  InstanceIamBindingSecuritycenterArgs({
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
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          InstanceIamBindingConditionSecuritycenter,
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

  factory InstanceIamBindingSecuritycenterArgs.fromMap(
      Map<String, dynamic> map) {
    return InstanceIamBindingSecuritycenterArgs(
      condition: pulumi.Input.asOptionalInput<
          InstanceIamBindingConditionSecuritycenter>(map['condition']),
      members: pulumi.Input.asInput<List<String>>(map['members']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
