// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_cluster_desired_param.dart';
import 'db_cluster_param_change_log.dart';

/// Input properties used for looking up and filtering DbCluster resources.
class DbClusterState {
  /// The desired cache size on creating cluster. The number should be divided by 100.
  final pulumi.Input<int>? cacheSize;
  /// The cpu resource amount of DBCluster. Depends on `db_cluster_class`.
  final pulumi.Input<int>? cpu;
  /// The time when DBCluster is created.
  final pulumi.Input<String>? createTime;
  /// The DBCluster class. db_cluster_class has a range of class from `selectdb.xlarge` to `selectdb.256xlarge`.
  final pulumi.Input<String>? dbClusterClass;
  /// The DBCluster description.
  final pulumi.Input<String>? dbClusterDescription;
  /// The id of the cluster.
  final pulumi.Input<String>? dbClusterId;
  /// The InstanceId of DBInstance for DBCluster. Every DBCluster requires one DBInstance to rely on.
  final pulumi.Input<String>? dbInstanceId;
  /// The modified parameter in DBCluster. See `desired_params` below.
  final pulumi.Input<List<DbClusterDesiredParam>>? desiredParams;
  /// The desired status for the resource. Valid values: `ACTIVATION`,`STOPPED`,`STARTING`,`RESTART`.
  final pulumi.Input<String>? desiredStatus;
  /// The engine of DBCluster. Always `selectdb`.
  final pulumi.Input<String>? engine;
  /// The version of DBCluster.
  final pulumi.Input<String>? engineVersion;
  /// The memory resource amount of DBCluster. Depends on `db_cluster_class`.
  final pulumi.Input<int>? memory;
  /// The details about parameter changelogs in DBCluster returned.
  final pulumi.Input<List<DbClusterParamChangeLog>>? paramChangeLogs;
  /// The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  final pulumi.Input<String>? paymentType;
  /// The ID of region for the cluster.
  final pulumi.Input<String>? regionId;
  /// The current status of the resource.
  final pulumi.Input<String>? status;
  /// The ID of the VPC for the cluster.
  final pulumi.Input<String>? vpcId;
  /// The ID of zone for the cluster.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [DbClusterState].
  /// [cacheSize] The desired cache size on creating cluster. The number should be divided by 100.
  /// [cpu] The cpu resource amount of DBCluster. Depends on `db_cluster_class`.
  /// [createTime] The time when DBCluster is created.
  /// [dbClusterClass] The DBCluster class. db_cluster_class has a range of class from `selectdb.xlarge` to `selectdb.256xlarge`.
  /// [dbClusterDescription] The DBCluster description.
  /// [dbClusterId] The id of the cluster.
  /// [dbInstanceId] The InstanceId of DBInstance for DBCluster. Every DBCluster requires one DBInstance to rely on.
  /// [desiredParams] The modified parameter in DBCluster. See `desired_params` below.
  /// [desiredStatus] The desired status for the resource. Valid values: `ACTIVATION`,`STOPPED`,`STARTING`,`RESTART`.
  /// [engine] The engine of DBCluster. Always `selectdb`.
  /// [engineVersion] The version of DBCluster.
  /// [memory] The memory resource amount of DBCluster. Depends on `db_cluster_class`.
  /// [paramChangeLogs] The details about parameter changelogs in DBCluster returned.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  /// [regionId] The ID of region for the cluster.
  /// [status] The current status of the resource.
  /// [vpcId] The ID of the VPC for the cluster.
  /// [zoneId] The ID of zone for the cluster.
  DbClusterState({
    pulumi.Output<int>? cacheSize,
    pulumi.Output<int>? cpu,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dbClusterClass,
    pulumi.Output<String>? dbClusterDescription,
    pulumi.Output<String>? dbClusterId,
    pulumi.Output<String>? dbInstanceId,
    pulumi.Output<List<DbClusterDesiredParam>>? desiredParams,
    pulumi.Output<String>? desiredStatus,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<int>? memory,
    pulumi.Output<List<DbClusterParamChangeLog>>? paramChangeLogs,
    pulumi.Output<String>? paymentType,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? zoneId,
  }) :
      cacheSize = pulumi.Input.asOptionalInput<int>(cacheSize),
      cpu = pulumi.Input.asOptionalInput<int>(cpu),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dbClusterClass = pulumi.Input.asOptionalInput<String>(dbClusterClass),
      dbClusterDescription = pulumi.Input.asOptionalInput<String>(dbClusterDescription),
      dbClusterId = pulumi.Input.asOptionalInput<String>(dbClusterId),
      dbInstanceId = pulumi.Input.asOptionalInput<String>(dbInstanceId),
      desiredParams = pulumi.Input.asOptionalInput<List<DbClusterDesiredParam>>(desiredParams),
      desiredStatus = pulumi.Input.asOptionalInput<String>(desiredStatus),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      memory = pulumi.Input.asOptionalInput<int>(memory),
      paramChangeLogs = pulumi.Input.asOptionalInput<List<DbClusterParamChangeLog>>(paramChangeLogs),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheSize': ?cacheSize,
      'cpu': ?cpu,
      'createTime': ?createTime,
      'dbClusterClass': ?dbClusterClass,
      'dbClusterDescription': ?dbClusterDescription,
      'dbClusterId': ?dbClusterId,
      'dbInstanceId': ?dbInstanceId,
      'desiredParams': ?pulumi.Input.mapOptionalInputValue<List<DbClusterDesiredParam>, List<Map<String, dynamic>>>(desiredParams, (value) => pulumi.Input.encodeList<DbClusterDesiredParam, Map<String, dynamic>>(value, (value) => value.toMap())),
      'desiredStatus': ?desiredStatus,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'memory': ?memory,
      'paramChangeLogs': ?pulumi.Input.mapOptionalInputValue<List<DbClusterParamChangeLog>, List<Map<String, dynamic>>>(paramChangeLogs, (value) => pulumi.Input.encodeList<DbClusterParamChangeLog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paymentType': ?paymentType,
      'regionId': ?regionId,
      'status': ?status,
      'vpcId': ?vpcId,
      'zoneId': ?zoneId,
    };
  }

  factory DbClusterState.fromMap(Map<String, dynamic> map) {
    return DbClusterState(
      cacheSize: map['cacheSize'] == null ? null : pulumi.Output.create<int>(map['cacheSize'] as int),
      cpu: map['cpu'] == null ? null : pulumi.Output.create<int>(map['cpu'] as int),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dbClusterClass: map['dbClusterClass'] == null ? null : pulumi.Output.create<String>(map['dbClusterClass'] as String),
      dbClusterDescription: map['dbClusterDescription'] == null ? null : pulumi.Output.create<String>(map['dbClusterDescription'] as String),
      dbClusterId: map['dbClusterId'] == null ? null : pulumi.Output.create<String>(map['dbClusterId'] as String),
      dbInstanceId: map['dbInstanceId'] == null ? null : pulumi.Output.create<String>(map['dbInstanceId'] as String),
      desiredParams: map['desiredParams'] == null ? null : pulumi.Output.create<List<DbClusterDesiredParam>>(pulumi.Input.decodeList<DbClusterDesiredParam>(map['desiredParams'], (value) => DbClusterDesiredParam.fromMap((value as Map).cast<String, dynamic>()))),
      desiredStatus: map['desiredStatus'] == null ? null : pulumi.Output.create<String>(map['desiredStatus'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      memory: map['memory'] == null ? null : pulumi.Output.create<int>(map['memory'] as int),
      paramChangeLogs: map['paramChangeLogs'] == null ? null : pulumi.Output.create<List<DbClusterParamChangeLog>>(pulumi.Input.decodeList<DbClusterParamChangeLog>(map['paramChangeLogs'], (value) => DbClusterParamChangeLog.fromMap((value as Map).cast<String, dynamic>()))),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

