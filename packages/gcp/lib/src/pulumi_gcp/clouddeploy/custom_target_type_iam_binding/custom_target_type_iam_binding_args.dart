// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../custom_target_type_iam_binding_condition/custom_target_type_iam_binding_condition.dart';

/// The set of arguments for CustomTargetTypeIamBinding.
class CustomTargetTypeIamBindingArgs {
  final Input<CustomTargetTypeIamBindingCondition>? condition;
  final Input<String>? location;
  final Input<List<String>> members;
  final Input<String>? name;
  final Input<String>? project;
  final Input<String> role;

  CustomTargetTypeIamBindingArgs({
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
      map['condition'] = Input.mapOptionalInputValue<
          CustomTargetTypeIamBindingCondition,
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

  factory CustomTargetTypeIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeIamBindingArgs(
      condition: Input.asOptionalInput<CustomTargetTypeIamBindingCondition>(
          map['condition']),
      location: Input.asOptionalInput<String>(map['location']),
      members: Input.asInput<List<String>>(map['members']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      role: Input.asInput<String>(map['role']),
    );
  }
}
