// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_iam_member_condition.dart';

/// {@template pulumi_securesourcemanager_instance_iam_member_instance_iam_member_args_doc}
/// The set of arguments for InstanceIamMember.
/// {@endtemplate}
/// {@macro pulumi_securesourcemanager_instance_iam_member_instance_iam_member_args_doc}
class InstanceIamMemberArgs {
  final pulumi.Input<InstanceIamMemberCondition>? condition;
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String> member;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> role;

  /// Creates a new [InstanceIamMemberArgs].
  /// [condition] Optional.
  /// [instanceId] Required.
  /// [location] Optional.
  /// [member] Required.
  /// [project] Optional.
  /// [role] Required.
  InstanceIamMemberArgs({
    InstanceIamMemberCondition? condition,
    required String instanceId,
    String? location,
    required String member,
    String? project,
    required String role,
  })  : condition =
            pulumi.Input.asOptionalInput<InstanceIamMemberCondition>(condition),
        instanceId = pulumi.Input.asInput<String>(instanceId),
        location = pulumi.Input.asOptionalInput<String>(location),
        member = pulumi.Input.asInput<String>(member),
        project = pulumi.Input.asOptionalInput<String>(project),
        role = pulumi.Input.asInput<String>(role);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final conditionValue = condition;
    if (conditionValue != null) {
      map['condition'] = pulumi.Input.mapOptionalInputValue<
          InstanceIamMemberCondition,
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

  factory InstanceIamMemberArgs.fromMap(Map<String, dynamic> map) {
    return InstanceIamMemberArgs(
      condition: map['condition'] == null
          ? null
          : InstanceIamMemberCondition.fromMap(
              (map['condition'] as Map).cast<String, dynamic>()),
      instanceId: map['instanceId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      member: map['member'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      role: map['role'] as String,
    );
  }
}
