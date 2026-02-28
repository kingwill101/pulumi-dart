// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_binding_condition.dart';

/// {@template pulumi_securesourcemanager_instance_iam_binding_instance_iam_binding_args_doc}
/// The set of arguments for InstanceIamBinding.
/// {@endtemplate}
/// {@macro pulumi_securesourcemanager_instance_iam_binding_instance_iam_binding_args_doc}
class InstanceIamBindingArgs {
  final pulumi.Input<InstanceIamBindingCondition>? condition;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? location;
  final pulumi.Input<List<String>> members;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [InstanceIamBindingArgs].
  /// [condition] Optional.
  /// [instanceId] Required.
  /// [location] Optional.
  /// [members] Required.
  /// [project] Optional.
  /// [role] Required.
  InstanceIamBindingArgs({
    InstanceIamBindingCondition? condition,
    required String instanceId,
    String? location,
    required List<String> members,
    String? project,
    required String role,
  })  : condition = pulumi.Input.asOptionalInput<InstanceIamBindingCondition>(
            condition),
        instanceId = pulumi.Input.asInput<String>(instanceId),
        location = pulumi.Input.asOptionalInput<String>(location),
        members = pulumi.Input.asInput<List<String>>(members),
        project = pulumi.Input.asOptionalInput<String>(project),
        role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          InstanceIamBindingCondition,
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

  factory InstanceIamBindingArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamBindingArgs(
      condition: map['condition'] == null
          ? null
          : InstanceIamBindingCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      instanceId: map['instanceId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      members: (map['members'] as List).cast<String>(),
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
    );
  }
}
