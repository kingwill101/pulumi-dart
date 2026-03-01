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
    pulumi.Output<String>? clusterMode,
    pulumi.Output<String>? clusterSizeResource,
    required pulumi.Output<String> dbClusterId,
    pulumi.Output<String>? engine,
    pulumi.Output<Map<String, String>>? engineParams,
    required pulumi.Output<String> groupName,
    pulumi.Output<String>? groupType,
    pulumi.Output<int>? maxClusterCount,
    pulumi.Output<String>? maxComputeResource,
    pulumi.Output<int>? minClusterCount,
    pulumi.Output<String>? minComputeResource,
    pulumi.Output<int>? nodeNum,
    pulumi.Output<List<String>>? users,
  }) :
      clusterMode = pulumi.Input.asOptionalInput<String>(clusterMode),
      clusterSizeResource = pulumi.Input.asOptionalInput<String>(clusterSizeResource),
      dbClusterId = pulumi.Input.asInput<String>(dbClusterId),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineParams = pulumi.Input.asOptionalInput<Map<String, String>>(engineParams),
      groupName = pulumi.Input.asInput<String>(groupName),
      groupType = pulumi.Input.asOptionalInput<String>(groupType),
      maxClusterCount = pulumi.Input.asOptionalInput<int>(maxClusterCount),
      maxComputeResource = pulumi.Input.asOptionalInput<String>(maxComputeResource),
      minClusterCount = pulumi.Input.asOptionalInput<int>(minClusterCount),
      minComputeResource = pulumi.Input.asOptionalInput<String>(minComputeResource),
      nodeNum = pulumi.Input.asOptionalInput<int>(nodeNum),
      users = pulumi.Input.asOptionalInput<List<String>>(users);

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
      clusterMode: map['clusterMode'] == null ? null : pulumi.Output.create<String>(map['clusterMode'] as String),
      clusterSizeResource: map['clusterSizeResource'] == null ? null : pulumi.Output.create<String>(map['clusterSizeResource'] as String),
      dbClusterId: pulumi.Output.create<String>(map['dbClusterId'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineParams: map['engineParams'] == null ? null : pulumi.Output.create<Map<String, String>>((map['engineParams'] as Map).cast<String, String>()),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      groupType: map['groupType'] == null ? null : pulumi.Output.create<String>(map['groupType'] as String),
      maxClusterCount: map['maxClusterCount'] == null ? null : pulumi.Output.create<int>(map['maxClusterCount'] as int),
      maxComputeResource: map['maxComputeResource'] == null ? null : pulumi.Output.create<String>(map['maxComputeResource'] as String),
      minClusterCount: map['minClusterCount'] == null ? null : pulumi.Output.create<int>(map['minClusterCount'] as int),
      minComputeResource: map['minComputeResource'] == null ? null : pulumi.Output.create<String>(map['minComputeResource'] as String),
      nodeNum: map['nodeNum'] == null ? null : pulumi.Output.create<int>(map['nodeNum'] as int),
      users: map['users'] == null ? null : pulumi.Output.create<List<String>>((map['users'] as List).cast<String>()),
    );
  }
}

