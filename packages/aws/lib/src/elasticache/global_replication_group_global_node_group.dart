// ignore_for_file: unused_element, unnecessary_cast

class GlobalReplicationGroupGlobalNodeGroup {
  /// The ID of the global node group.
  final String? globalNodeGroupId;

  /// The keyspace for this node group.
  final String? slots;

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
      globalNodeGroupId: map['globalNodeGroupId'] == null
          ? null
          : map['globalNodeGroupId'] as String,
      slots: map['slots'] == null ? null : map['slots'] as String,
    );
  }
}
