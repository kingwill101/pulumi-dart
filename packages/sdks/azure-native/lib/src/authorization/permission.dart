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
  Permission({
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
      actions: map['actions'] == null ? null : ((map['actions'] as List).cast<String>()).input(),
      dataActions: map['dataActions'] == null ? null : ((map['dataActions'] as List).cast<String>()).input(),
      notActions: map['notActions'] == null ? null : ((map['notActions'] as List).cast<String>()).input(),
      notDataActions: map['notDataActions'] == null ? null : ((map['notDataActions'] as List).cast<String>()).input(),
    );
  }
}

