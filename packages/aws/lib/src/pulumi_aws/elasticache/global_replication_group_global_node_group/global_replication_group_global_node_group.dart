// ignore_for_file: unused_element, unnecessary_cast

class GlobalReplicationGroupGlobalNodeGroup {
  /// The ID of the global node group.
  final String? globalNodeGroupId;

  /// The keyspace for this node group.
  final String? slots;

  GlobalReplicationGroupGlobalNodeGroup({
    this.globalNodeGroupId,
    this.slots,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final globalNodeGroupIdValue = globalNodeGroupId;
    if (globalNodeGroupIdValue != null) {
      map['globalNodeGroupId'] = globalNodeGroupIdValue;
    }
    final slotsValue = slots;
    if (slotsValue != null) {
      map['slots'] = slotsValue;
    }
    return map;
  }

  factory GlobalReplicationGroupGlobalNodeGroup.fromMap(
      Map<String, dynamic> map) {
    return GlobalReplicationGroupGlobalNodeGroup(
      globalNodeGroupId: map['globalNodeGroupId'] == null
          ? null
          : map['globalNodeGroupId'] as String,
      slots: map['slots'] == null ? null : map['slots'] as String,
    );
  }
}
