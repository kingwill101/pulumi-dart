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
    this.clusterMode,
    this.clusterSizeResource,
    this.connectionString,
    this.createTime,
    this.dbClusterId,
    this.engine,
    this.engineParams,
    this.groupName,
    this.groupType,
    this.maxClusterCount,
    this.maxComputeResource,
    this.minClusterCount,
    this.minComputeResource,
    this.nodeNum,
    this.port,
    this.status,
    this.updateTime,
    this.user,
    this.users,
  });

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
      clusterMode: (() {
        final guardedValue = map['clusterMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterSizeResource: (() {
        final guardedValue = map['clusterSizeResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbClusterId: (() {
        final guardedValue = map['dbClusterId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      engine: (() {
        final guardedValue = map['engine'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      engineParams: (() {
        final guardedValue = map['engineParams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      groupName: (() {
        final guardedValue = map['groupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      groupType: (() {
        final guardedValue = map['groupType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxClusterCount: (() {
        final guardedValue = map['maxClusterCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      maxComputeResource: (() {
        final guardedValue = map['maxComputeResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minClusterCount: (() {
        final guardedValue = map['minClusterCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      minComputeResource: (() {
        final guardedValue = map['minComputeResource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodeNum: (() {
        final guardedValue = map['nodeNum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      user: (() {
        final guardedValue = map['user'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      users: (() {
        final guardedValue = map['users'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
