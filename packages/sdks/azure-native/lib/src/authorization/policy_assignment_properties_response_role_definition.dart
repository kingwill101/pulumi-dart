// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of role definition
class PolicyAssignmentPropertiesResponseRoleDefinition {
  /// Display name of the role definition
  final pulumi.Input<String>? displayName;
  /// Id of the role definition
  final pulumi.Input<String>? id;
  /// Type of the role definition
  final pulumi.Input<String>? type;

  /// Creates a new [PolicyAssignmentPropertiesResponseRoleDefinition].
  /// [displayName] Display name of the role definition
  /// [id] Id of the role definition
  /// [type] Type of the role definition
  const PolicyAssignmentPropertiesResponseRoleDefinition({
    this.displayName,
    this.id,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'type': ?type,
    };
  }

  factory PolicyAssignmentPropertiesResponseRoleDefinition.fromMap(Map<String, dynamic> map) {
    return PolicyAssignmentPropertiesResponseRoleDefinition(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

