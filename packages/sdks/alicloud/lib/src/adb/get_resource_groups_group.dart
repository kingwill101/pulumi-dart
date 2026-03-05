// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResourceGroupsGroup {
  /// Creation time.
  final pulumi.Input<String> createTime;
  /// DBClusterId
  final pulumi.Input<String> dbClusterId;
  /// The name of the resource pool, which cannot exceed 64 bytes in length.
  final pulumi.Input<String> groupName;
  /// Query type, value description:
  /// * **etl**: Batch query mode.
  /// * **interactive**: interactive Query mode
  /// * **default_type**: the default query mode.
  final pulumi.Input<String> groupType;
  /// The `key` of the resource supplied above.The value is formulated as `&lt;db_cluster_id&gt;:&lt;group_name&gt;`.
  final pulumi.Input<String> id;
  /// The number of nodes. The default number of nodes is 0. The number of nodes must be less than or equal to the number of nodes whose resource name is USER_DEFAULT.
  final pulumi.Input<int> nodeNum;
  /// Binding User.
  final pulumi.Input<String> user;

  /// Creates a new [GetResourceGroupsGroup].
  /// [createTime] Creation time.
  /// [dbClusterId] DBClusterId
  /// [groupName] The name of the resource pool, which cannot exceed 64 bytes in length.
  /// [groupType] Query type, value description:
  /// [id] The `key` of the resource supplied above.The value is formulated as `&lt;db_cluster_id&gt;:&lt;group_name&gt;`.
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
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      groupType: pulumi.Input.fromValue(map['groupType'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      nodeNum: pulumi.Input.fromValue(map['nodeNum'] as int),
      user: pulumi.Input.fromValue(map['user'] as String),
    );
  }
}

