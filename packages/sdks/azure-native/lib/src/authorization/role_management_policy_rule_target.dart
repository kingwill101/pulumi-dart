// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The role management policy rule target.
class RoleManagementPolicyRuleTarget {
  /// The caller of the setting.
  final pulumi.Input<String>? caller;
  /// The list of enforced settings.
  final pulumi.Input<List<String>>? enforcedSettings;
  /// The list of inheritable settings.
  final pulumi.Input<List<String>>? inheritableSettings;
  /// The assignment level to which rule is applied.
  final pulumi.Input<String>? level;
  /// The type of operation.
  final pulumi.Input<List<String>>? operations;
  /// The list of target objects.
  final pulumi.Input<List<String>>? targetObjects;

  /// Creates a new [RoleManagementPolicyRuleTarget].
  /// [caller] The caller of the setting.
  /// [enforcedSettings] The list of enforced settings.
  /// [inheritableSettings] The list of inheritable settings.
  /// [level] The assignment level to which rule is applied.
  /// [operations] The type of operation.
  /// [targetObjects] The list of target objects.
  RoleManagementPolicyRuleTarget({
    this.caller,
    this.enforcedSettings,
    this.inheritableSettings,
    this.level,
    this.operations,
    this.targetObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caller': ?caller,
      'enforcedSettings': ?enforcedSettings,
      'inheritableSettings': ?inheritableSettings,
      'level': ?level,
      'operations': ?operations,
      'targetObjects': ?targetObjects,
    };
  }

  factory RoleManagementPolicyRuleTarget.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyRuleTarget(
      caller: (() { final guardedValue = map['caller']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enforcedSettings: (() { final guardedValue = map['enforcedSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      inheritableSettings: (() { final guardedValue = map['inheritableSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      level: (() { final guardedValue = map['level']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operations: (() { final guardedValue = map['operations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      targetObjects: (() { final guardedValue = map['targetObjects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

