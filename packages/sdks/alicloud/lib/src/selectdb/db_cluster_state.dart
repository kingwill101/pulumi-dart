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
  const DbClusterState({
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
      cacheSize: (() { final guardedValue = map['cacheSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterClass: (() { final guardedValue = map['dbClusterClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterDescription: (() { final guardedValue = map['dbClusterDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterId: (() { final guardedValue = map['dbClusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceId: (() { final guardedValue = map['dbInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredParams: (() { final guardedValue = map['desiredParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DbClusterDesiredParam>(guardedValue, (value) => DbClusterDesiredParam.fromMap((value as Map).cast<String, dynamic>()))); })(),
      desiredStatus: (() { final guardedValue = map['desiredStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      paramChangeLogs: (() { final guardedValue = map['paramChangeLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DbClusterParamChangeLog>(guardedValue, (value) => DbClusterParamChangeLog.fromMap((value as Map).cast<String, dynamic>()))); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

