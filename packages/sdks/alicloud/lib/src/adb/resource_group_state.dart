// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ResourceGroup resources.
class ResourceGroupState {
  /// The working mode of the resource group. Default value: `Disable`. Valid values: `Disable`, `AutoScale`.
  final pulumi.Input<String>? clusterMode;
  /// The resource specifications of a single compute cluster. Unit: ACU.
  final pulumi.Input<String>? clusterSizeResource;
  /// (Available since v1.261.0) The endpoint of the resource group.
  final pulumi.Input<String>? connectionString;
  /// The time when the resource group was created.
  final pulumi.Input<String>? createTime;
  /// The ID of the DBCluster.
  final pulumi.Input<String>? dbClusterId;
  /// The engine of the resource group. Default value: `AnalyticDB`. Valid values: `AnalyticDB`, `SparkWarehouse`.
  final pulumi.Input<String>? engine;
  /// The Spark application configuration parameters that can be applied to all Spark jobs executed in the resource group.
  final pulumi.Input<Map<String, String>>? engineParams;
  /// The name of the resource group. The `group_name` can be up to 255 characters in length and can contain digits, uppercase letters, hyphens (-), and underscores (_). It must start with a digit or uppercase letter.
  final pulumi.Input<String>? groupName;
  /// The query execution mode. Default value: `interactive`. Valid values: `interactive`, `batch`.
  final pulumi.Input<String>? groupType;
  /// The maximum number of compute clusters that are allowed in the resource group.
  final pulumi.Input<int>? maxClusterCount;
  /// The maximum amount of reserved computing resources, which refers to the amount of resources that are not allocated in the cluster.
  final pulumi.Input<String>? maxComputeResource;
  /// The minimum number of compute clusters that are required in the resource group.
  final pulumi.Input<int>? minClusterCount;
  /// The minimum amount of reserved computing resources. Unit: AnalyticDB compute unit (ACU).
  final pulumi.Input<String>? minComputeResource;
  /// The number of nodes.
  final pulumi.Input<int>? nodeNum;
  /// (Available since v1.261.0) The port number of the resource group.
  final pulumi.Input<String>? port;
  /// (Available since v1.261.0) The status of the resource group.
  final pulumi.Input<String>? status;
  /// The time when the resource group was updated.
  final pulumi.Input<String>? updateTime;
  /// The database accounts that are associated with the resource group.
  final pulumi.Input<String>? user;
  /// The database accounts with which to associate the resource group.
  final pulumi.Input<List<String>>? users;

  /// Creates a new [ResourceGroupState].
  /// [clusterMode] The working mode of the resource group. Default value: `Disable`. Valid values: `Disable`, `AutoScale`.
  /// [clusterSizeResource] The resource specifications of a single compute cluster. Unit: ACU.
  /// [connectionString] (Available since v1.261.0) The endpoint of the resource group.
  /// [createTime] The time when the resource group was created.
  /// [dbClusterId] The ID of the DBCluster.
  /// [engine] The engine of the resource group. Default value: `AnalyticDB`. Valid values: `AnalyticDB`, `SparkWarehouse`.
  /// [engineParams] The Spark application configuration parameters that can be applied to all Spark jobs executed in the resource group.
  /// [groupName] The name of the resource group. The `group_name` can be up to 255 characters in length and can contain digits, uppercase letters, hyphens (-), and underscores (_). It must start with a digit or uppercase letter.
  /// [groupType] The query execution mode. Default value: `interactive`. Valid values: `interactive`, `batch`.
  /// [maxClusterCount] The maximum number of compute clusters that are allowed in the resource group.
  /// [maxComputeResource] The maximum amount of reserved computing resources, which refers to the amount of resources that are not allocated in the cluster.
  /// [minClusterCount] The minimum number of compute clusters that are required in the resource group.
  /// [minComputeResource] The minimum amount of reserved computing resources. Unit: AnalyticDB compute unit (ACU).
  /// [nodeNum] The number of nodes.
  /// [port] (Available since v1.261.0) The port number of the resource group.
  /// [status] (Available since v1.261.0) The status of the resource group.
  /// [updateTime] The time when the resource group was updated.
  /// [user] The database accounts that are associated with the resource group.
  /// [users] The database accounts with which to associate the resource group.
  ResourceGroupState({
    pulumi.Output<String>? clusterMode,
    pulumi.Output<String>? clusterSizeResource,
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dbClusterId,
    pulumi.Output<String>? engine,
    pulumi.Output<Map<String, String>>? engineParams,
    pulumi.Output<String>? groupName,
    pulumi.Output<String>? groupType,
    pulumi.Output<int>? maxClusterCount,
    pulumi.Output<String>? maxComputeResource,
    pulumi.Output<int>? minClusterCount,
    pulumi.Output<String>? minComputeResource,
    pulumi.Output<int>? nodeNum,
    pulumi.Output<String>? port,
    pulumi.Output<String>? status,
    pulumi.Output<String>? updateTime,
    pulumi.Output<String>? user,
    pulumi.Output<List<String>>? users,
  }) :
      clusterMode = pulumi.Input.asOptionalInput<String>(clusterMode),
      clusterSizeResource = pulumi.Input.asOptionalInput<String>(clusterSizeResource),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dbClusterId = pulumi.Input.asOptionalInput<String>(dbClusterId),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineParams = pulumi.Input.asOptionalInput<Map<String, String>>(engineParams),
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      groupType = pulumi.Input.asOptionalInput<String>(groupType),
      maxClusterCount = pulumi.Input.asOptionalInput<int>(maxClusterCount),
      maxComputeResource = pulumi.Input.asOptionalInput<String>(maxComputeResource),
      minClusterCount = pulumi.Input.asOptionalInput<int>(minClusterCount),
      minComputeResource = pulumi.Input.asOptionalInput<String>(minComputeResource),
      nodeNum = pulumi.Input.asOptionalInput<int>(nodeNum),
      port = pulumi.Input.asOptionalInput<String>(port),
      status = pulumi.Input.asOptionalInput<String>(status),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      user = pulumi.Input.asOptionalInput<String>(user),
      users = pulumi.Input.asOptionalInput<List<String>>(users);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterMode': ?clusterMode,
      'clusterSizeResource': ?clusterSizeResource,
      'connectionString': ?connectionString,
      'createTime': ?createTime,
      'dbClusterId': ?dbClusterId,
      'engine': ?engine,
      'engineParams': ?engineParams,
      'groupName': ?groupName,
      'groupType': ?groupType,
      'maxClusterCount': ?maxClusterCount,
      'maxComputeResource': ?maxComputeResource,
      'minClusterCount': ?minClusterCount,
      'minComputeResource': ?minComputeResource,
      'nodeNum': ?nodeNum,
      'port': ?port,
      'status': ?status,
      'updateTime': ?updateTime,
      'user': ?user,
      'users': ?users,
    };
  }

  factory ResourceGroupState.fromMap(Map<String, dynamic> map) {
    return ResourceGroupState(
      clusterMode: map['clusterMode'] == null ? null : pulumi.Output.create<String>(map['clusterMode'] as String),
      clusterSizeResource: map['clusterSizeResource'] == null ? null : pulumi.Output.create<String>(map['clusterSizeResource'] as String),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dbClusterId: map['dbClusterId'] == null ? null : pulumi.Output.create<String>(map['dbClusterId'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineParams: map['engineParams'] == null ? null : pulumi.Output.create<Map<String, String>>((map['engineParams'] as Map).cast<String, String>()),
      groupName: map['groupName'] == null ? null : pulumi.Output.create<String>(map['groupName'] as String),
      groupType: map['groupType'] == null ? null : pulumi.Output.create<String>(map['groupType'] as String),
      maxClusterCount: map['maxClusterCount'] == null ? null : pulumi.Output.create<int>(map['maxClusterCount'] as int),
      maxComputeResource: map['maxComputeResource'] == null ? null : pulumi.Output.create<String>(map['maxComputeResource'] as String),
      minClusterCount: map['minClusterCount'] == null ? null : pulumi.Output.create<int>(map['minClusterCount'] as int),
      minComputeResource: map['minComputeResource'] == null ? null : pulumi.Output.create<String>(map['minComputeResource'] as String),
      nodeNum: map['nodeNum'] == null ? null : pulumi.Output.create<int>(map['nodeNum'] as int),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      user: map['user'] == null ? null : pulumi.Output.create<String>(map['user'] as String),
      users: map['users'] == null ? null : pulumi.Output.create<List<String>>((map['users'] as List).cast<String>()),
    );
  }
}

