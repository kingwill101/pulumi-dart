// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The role management policy rule target.
class RoleManagementPolicyRuleTargetResponse {
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

  /// Creates a new [RoleManagementPolicyRuleTargetResponse].
  /// [caller] The caller of the setting.
  /// [enforcedSettings] The list of enforced settings.
  /// [inheritableSettings] The list of inheritable settings.
  /// [level] The assignment level to which rule is applied.
  /// [operations] The type of operation.
  /// [targetObjects] The list of target objects.
  RoleManagementPolicyRuleTargetResponse({
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

  factory RoleManagementPolicyRuleTargetResponse.fromMap(Map<String, dynamic> map) {
    return RoleManagementPolicyRuleTargetResponse(
      caller: map['caller'] == null ? null : (map['caller']! as String).input(),
      enforcedSettings: map['enforcedSettings'] == null ? null : ((map['enforcedSettings']! as List).cast<String>()).input(),
      inheritableSettings: map['inheritableSettings'] == null ? null : ((map['inheritableSettings']! as List).cast<String>()).input(),
      level: map['level'] == null ? null : (map['level']! as String).input(),
      operations: map['operations'] == null ? null : ((map['operations']! as List).cast<String>()).input(),
      targetObjects: map['targetObjects'] == null ? null : ((map['targetObjects']! as List).cast<String>()).input(),
    );
  }
}

