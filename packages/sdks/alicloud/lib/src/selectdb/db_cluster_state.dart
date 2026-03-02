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
    this.cacheSize,
    this.cpu,
    this.createTime,
    this.dbClusterClass,
    this.dbClusterDescription,
    this.dbClusterId,
    this.dbInstanceId,
    this.desiredParams,
    this.desiredStatus,
    this.engine,
    this.engineVersion,
    this.memory,
    this.paramChangeLogs,
    this.paymentType,
    this.regionId,
    this.status,
    this.vpcId,
    this.zoneId,
  });

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
      cacheSize: map['cacheSize'] == null ? null : (map['cacheSize'] as int).input(),
      cpu: map['cpu'] == null ? null : (map['cpu'] as int).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dbClusterClass: map['dbClusterClass'] == null ? null : (map['dbClusterClass'] as String).input(),
      dbClusterDescription: map['dbClusterDescription'] == null ? null : (map['dbClusterDescription'] as String).input(),
      dbClusterId: map['dbClusterId'] == null ? null : (map['dbClusterId'] as String).input(),
      dbInstanceId: map['dbInstanceId'] == null ? null : (map['dbInstanceId'] as String).input(),
      desiredParams: map['desiredParams'] == null ? null : (pulumi.Input.decodeList<DbClusterDesiredParam>(map['desiredParams'], (value) => DbClusterDesiredParam.fromMap((value as Map).cast<String, dynamic>()))).input(),
      desiredStatus: map['desiredStatus'] == null ? null : (map['desiredStatus'] as String).input(),
      engine: map['engine'] == null ? null : (map['engine'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      memory: map['memory'] == null ? null : (map['memory'] as int).input(),
      paramChangeLogs: map['paramChangeLogs'] == null ? null : (pulumi.Input.decodeList<DbClusterParamChangeLog>(map['paramChangeLogs'], (value) => DbClusterParamChangeLog.fromMap((value as Map).cast<String, dynamic>()))).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
    );
  }
}

