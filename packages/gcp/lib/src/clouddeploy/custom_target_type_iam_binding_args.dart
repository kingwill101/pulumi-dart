// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_iam_binding_condition.dart';

/// {@template pulumi_clouddeploy_custom_target_type_iam_binding_custom_target_type_iam_binding_args_doc}
/// The set of arguments for CustomTargetTypeIamBinding.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_custom_target_type_iam_binding_custom_target_type_iam_binding_args_doc}
class CustomTargetTypeIamBindingArgs {
  final pulumi.Input<CustomTargetTypeIamBindingCondition>? condition;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [CustomTargetTypeIamBindingArgs].
  /// [condition] Optional.
  /// [location] Optional.
  /// [members] Required.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Required.
  CustomTargetTypeIamBindingArgs({
    CustomTargetTypeIamBindingCondition? condition,
    String? location,
    required List<String> members,
    String? name,
    String? project,
    required String role,
  })  : condition =
            pulumi.Input.asOptionalInput<CustomTargetTypeIamBindingCondition>(
                condition),
        location = pulumi.Input.asOptionalInput<String>(location),
        members = pulumi.Input.asInput<List<String>>(members),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
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
      condition: map['condition'] == null
          ? null
          : CustomTargetTypeIamBindingCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      members: (map['members'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
    );
  }
}
