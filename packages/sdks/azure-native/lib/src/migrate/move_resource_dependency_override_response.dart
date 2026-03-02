// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the dependency override of the move resource.
class MoveResourceDependencyOverrideResponse {
  /// Gets or sets the ARM ID of the dependent resource.
  final pulumi.Input<String>? id;
  /// Gets or sets the resource ARM id of either the MoveResource or the resource ARM ID of
  /// the dependent resource.
  final pulumi.Input<String>? targetId;

  /// Creates a new [MoveResourceDependencyOverrideResponse].
  /// [id] Gets or sets the ARM ID of the dependent resource.
  /// [targetId] Gets or sets the resource ARM id of either the MoveResource or the resource ARM ID of
  MoveResourceDependencyOverrideResponse({
    this.id,
    this.targetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'targetId': ?targetId,
    };
  }

  factory MoveResourceDependencyOverrideResponse.fromMap(Map<String, dynamic> map) {
    return MoveResourceDependencyOverrideResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      targetId: map['targetId'] == null ? null : (map['targetId']! as String).input(),
    );
  }
}

