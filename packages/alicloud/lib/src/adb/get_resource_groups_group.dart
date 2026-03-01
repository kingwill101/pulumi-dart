// ignore_for_file: unused_element, unnecessary_cast


class GetResourceGroupsGroup {
  /// Creation time.
  final String createTime;
  /// DBClusterId
  final String dbClusterId;
  /// The name of the resource pool, which cannot exceed 64 bytes in length.
  final String groupName;
  /// Query type, value description:
  /// * **etl**: Batch query mode.
  /// * **interactive**: interactive Query mode
  /// * **default_type**: the default query mode.
  final String groupType;
  /// The `key` of the resource supplied above.The value is formulated as `<db_cluster_id>:<group_name>`.
  final String id;
  /// The number of nodes. The default number of nodes is 0. The number of nodes must be less than or equal to the number of nodes whose resource name is USER_DEFAULT.
  final int nodeNum;
  /// Binding User.
  final String user;

  /// Creates a new [GetResourceGroupsGroup].
  /// [createTime] Creation time.
  /// [dbClusterId] DBClusterId
  /// [groupName] The name of the resource pool, which cannot exceed 64 bytes in length.
  /// [groupType] Query type, value description:
  /// [id] The `key` of the resource supplied above.The value is formulated as `<db_cluster_id>:<group_name>`.
  /// [nodeNum] The number of nodes. The default number of nodes is 0. The number of nodes must be less than or equal to the number of nodes whose resource name is USER_DEFAULT.
  /// [user] Binding User.
  GetResourceGroupsGroup({
    required this.createTime,
    required this.dbClusterId,
    required this.groupName,
    required this.groupType,
    required this.id,
    required this.nodeNum,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dbClusterId': dbClusterId,
      'groupName': groupName,
      'groupType': groupType,
      'id': id,
      'nodeNum': nodeNum,
      'user': user,
    };
  }

  factory GetResourceGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetResourceGroupsGroup(
      createTime: map['createTime'] as String,
      dbClusterId: map['dbClusterId'] as String,
      groupName: map['groupName'] as String,
      groupType: map['groupType'] as String,
      id: map['id'] as String,
      nodeNum: map['nodeNum'] as int,
      user: map['user'] as String,
    );
  }
}

