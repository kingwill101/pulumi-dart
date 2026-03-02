// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_adb_resource_group_resource_group_args_doc}
/// The set of arguments for ResourceGroup.
/// {@endtemplate}
/// {@macro pulumi_adb_resource_group_resource_group_args_doc}
class ResourceGroupArgs {
  /// The working mode of the resource group. Default value: `Disable`. Valid values: `Disable`, `AutoScale`.
  final pulumi.Input<String>? clusterMode;
  /// The resource specifications of a single compute cluster. Unit: ACU.
  final pulumi.Input<String>? clusterSizeResource;
  /// The ID of the DBCluster.
  final pulumi.Input<String> dbClusterId;
  /// The engine of the resource group. Default value: `AnalyticDB`. Valid values: `AnalyticDB`, `SparkWarehouse`.
  final pulumi.Input<String>? engine;
  /// The Spark application configuration parameters that can be applied to all Spark jobs executed in the resource group.
  final pulumi.Input<Map<String, String>>? engineParams;
  /// The name of the resource group. The `group_name` can be up to 255 characters in length and can contain digits, uppercase letters, hyphens (-), and underscores (_). It must start with a digit or uppercase letter.
  final pulumi.Input<String> groupName;
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
  /// The database accounts with which to associate the resource group.
  final pulumi.Input<List<String>>? users;

  /// Creates a new [ResourceGroupArgs].
  /// [clusterMode] The working mode of the resource group. Default value: `Disable`. Valid values: `Disable`, `AutoScale`.
  /// [clusterSizeResource] The resource specifications of a single compute cluster. Unit: ACU.
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
  /// [users] The database accounts with which to associate the resource group.
  ResourceGroupArgs({
    this.clusterMode,
    this.clusterSizeResource,
    required this.dbClusterId,
    this.engine,
    this.engineParams,
    required this.groupName,
    this.groupType,
    this.maxClusterCount,
    this.maxComputeResource,
    this.minClusterCount,
    this.minComputeResource,
    this.nodeNum,
    this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterMode': ?clusterMode,
      'clusterSizeResource': ?clusterSizeResource,
      'dbClusterId': dbClusterId,
      'engine': ?engine,
      'engineParams': ?engineParams,
      'groupName': groupName,
      'groupType': ?groupType,
      'maxClusterCount': ?maxClusterCount,
      'maxComputeResource': ?maxComputeResource,
      'minClusterCount': ?minClusterCount,
      'minComputeResource': ?minComputeResource,
      'nodeNum': ?nodeNum,
      'users': ?users,
    };
  }

  factory ResourceGroupArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGroupArgs(
      clusterMode: map['clusterMode'] == null ? null : (map['clusterMode']! as String).input(),
      clusterSizeResource: map['clusterSizeResource'] == null ? null : (map['clusterSizeResource']! as String).input(),
      dbClusterId: (map['dbClusterId'] as String).input(),
      engine: map['engine'] == null ? null : (map['engine']! as String).input(),
      engineParams: map['engineParams'] == null ? null : ((map['engineParams']! as Map).cast<String, String>()).input(),
      groupName: (map['groupName'] as String).input(),
      groupType: map['groupType'] == null ? null : (map['groupType']! as String).input(),
      maxClusterCount: map['maxClusterCount'] == null ? null : (map['maxClusterCount']! as int).input(),
      maxComputeResource: map['maxComputeResource'] == null ? null : (map['maxComputeResource']! as String).input(),
      minClusterCount: map['minClusterCount'] == null ? null : (map['minClusterCount']! as int).input(),
      minComputeResource: map['minComputeResource'] == null ? null : (map['minComputeResource']! as String).input(),
      nodeNum: map['nodeNum'] == null ? null : (map['nodeNum']! as int).input(),
      users: map['users'] == null ? null : ((map['users']! as List).cast<String>()).input(),
    );
  }
}

