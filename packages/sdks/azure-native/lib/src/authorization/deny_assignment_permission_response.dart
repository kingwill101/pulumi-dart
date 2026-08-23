// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deny assignment permissions.
class DenyAssignmentPermissionResponse {
  /// Actions to which the deny assignment does not grant access.
  final pulumi.Input<List<String>>? actions;
  /// The conditions on the Deny assignment permission. This limits the resources it applies to.
  final pulumi.Input<String>? condition;
  /// Version of the condition.
  final pulumi.Input<String>? conditionVersion;
  /// Data actions to which the deny assignment does not grant access.
  final pulumi.Input<List<String>>? dataActions;
  /// Actions to exclude from that the deny assignment does not grant access.
  final pulumi.Input<List<String>>? notActions;
  /// Data actions to exclude from that the deny assignment does not grant access.
  final pulumi.Input<List<String>>? notDataActions;

  /// Creates a new [DenyAssignmentPermissionResponse].
  /// [actions] Actions to which the deny assignment does not grant access.
  /// [condition] The conditions on the Deny assignment permission. This limits the resources it applies to.
  /// [conditionVersion] Version of the condition.
  /// [dataActions] Data actions to which the deny assignment does not grant access.
  /// [notActions] Actions to exclude from that the deny assignment does not grant access.
  /// [notDataActions] Data actions to exclude from that the deny assignment does not grant access.
  const DenyAssignmentPermissionResponse({
    this.actions,
    this.condition,
    this.conditionVersion,
    this.dataActions,
    this.notActions,
    this.notDataActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'condition': ?condition,
      'conditionVersion': ?conditionVersion,
      'dataActions': ?dataActions,
      'notActions': ?notActions,
      'notDataActions': ?notDataActions,
    };
  }

  factory DenyAssignmentPermissionResponse.fromMap(Map<String, dynamic> map) {
    return DenyAssignmentPermissionResponse(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      condition: (() { final guardedValue = map['condition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditionVersion: (() { final guardedValue = map['conditionVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataActions: (() { final guardedValue = map['dataActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notActions: (() { final guardedValue = map['notActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notDataActions: (() { final guardedValue = map['notDataActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
