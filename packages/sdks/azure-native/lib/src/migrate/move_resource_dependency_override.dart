// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the dependency override of the move resource.
class MoveResourceDependencyOverride {
  /// Gets or sets the ARM ID of the dependent resource.
  final pulumi.Input<String>? id;
  /// Gets or sets the resource ARM id of either the MoveResource or the resource ARM ID of
  /// the dependent resource.
  final pulumi.Input<String>? targetId;

  /// Creates a new [MoveResourceDependencyOverride].
  /// [id] Gets or sets the ARM ID of the dependent resource.
  /// [targetId] Gets or sets the resource ARM id of either the MoveResource or the resource ARM ID of
  const MoveResourceDependencyOverride({
    this.id,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'targetId': ?targetId,
    };
  }

  factory MoveResourceDependencyOverride.fromMap(Map<String, dynamic> map) {
    return MoveResourceDependencyOverride(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetId: (() { final guardedValue = map['targetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
