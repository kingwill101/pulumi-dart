// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_iam_binding_condition.dart';

/// {@template pulumi_clouddeploy_target_iam_binding_target_iam_binding_args_doc}
/// The set of arguments for TargetIamBinding.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_target_iam_binding_target_iam_binding_args_doc}
class TargetIamBindingArgs {
  final pulumi.Input<TargetIamBindingCondition>? condition;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [TargetIamBindingArgs].
  /// [condition] Optional.
  /// [location] Optional.
  /// [members] Required.
  /// [name] Optional.
  /// [project] Optional.
  /// [role] Required.
  TargetIamBindingArgs({
    TargetIamBindingCondition? condition,
    String? location,
    required List<String> members,
    String? name,
    String? project,
    required String role,
  })  : condition =
            pulumi.Input.asOptionalInput<TargetIamBindingCondition>(condition),
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
      condition: map['condition'] == null
          ? null
          : TargetIamBindingCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      members: (map['members'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
    );
  }
}
