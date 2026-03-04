// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GlobalReplicationGroupGlobalNodeGroup {
  /// The ID of the global node group.
  final pulumi.Input<String>? globalNodeGroupId;

  /// The keyspace for this node group.
  final pulumi.Input<String>? slots;

  /// Creates a new [GlobalReplicationGroupGlobalNodeGroup].
  /// [globalNodeGroupId] The ID of the global node group.
  /// [slots] The keyspace for this node group.
  GlobalReplicationGroupGlobalNodeGroup({this.globalNodeGroupId, this.slots});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNodeGroupId': ?globalNodeGroupId,
      'slots': ?slots,
    };
  }

  factory GlobalReplicationGroupGlobalNodeGroup.fromMap(
    Map<String, dynamic> map,
  ) {
    return GlobalReplicationGroupGlobalNodeGroup(
      globalNodeGroupId: (() {
        final guardedValue = map['globalNodeGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      slots: (() {
        final guardedValue = map['slots'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
