// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_iam_member_condition/instance_iam_member_condition_securitycenter.dart';

/// The set of arguments for InstanceIamMember.
class InstanceIamMemberSecuritycenterArgs {
  final pulumi.Input<InstanceIamMemberConditionSecuritycenter>? condition;
  final pulumi.Input<String> member;

  /// The ID of the instance or a fully qualified identifier for the instance.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the Data Fusion instance.
  final pulumi.Input<String>? region;
  final pulumi.Input<String> role;

  InstanceIamMemberSecuritycenterArgs({
    this.condition,
    required this.member,
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
          InstanceIamMemberConditionSecuritycenter,
          Map<String, dynamic>>(conditionValue, (value) => value.toMap());
    }
    map['member'] = member;
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

  factory InstanceIamMemberSecuritycenterArgs.fromMap(
      Map<String, dynamic> map) {
    return InstanceIamMemberSecuritycenterArgs(
      condition: pulumi.Input.asOptionalInput<
          InstanceIamMemberConditionSecuritycenter>(map['condition']),
      member: pulumi.Input.asInput<String>(map['member']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      role: pulumi.Input.asInput<String>(map['role']),
    );
  }
}
