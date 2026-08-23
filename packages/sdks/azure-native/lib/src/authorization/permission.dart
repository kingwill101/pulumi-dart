// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Role definition permissions.
class Permission {
  /// Allowed actions.
  final pulumi.Input<List<String>>? actions;
  /// Allowed Data actions.
  final pulumi.Input<List<String>>? dataActions;
  /// Denied actions.
  final pulumi.Input<List<String>>? notActions;
  /// Denied Data actions.
  final pulumi.Input<List<String>>? notDataActions;

  /// Creates a new [Permission].
  /// [actions] Allowed actions.
  /// [dataActions] Allowed Data actions.
  /// [notActions] Denied actions.
  /// [notDataActions] Denied Data actions.
  const Permission({
    this.actions,
    this.dataActions,
    this.notActions,
    this.notDataActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'dataActions': ?dataActions,
      'notActions': ?notActions,
      'notDataActions': ?notDataActions,
    };
  }

  factory Permission.fromMap(Map<String, dynamic> map) {
    return Permission(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataActions: (() { final guardedValue = map['dataActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notActions: (() { final guardedValue = map['notActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      notDataActions: (() { final guardedValue = map['notDataActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
