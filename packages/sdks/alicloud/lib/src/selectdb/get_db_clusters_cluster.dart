// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_clusters_cluster_param.dart';
import 'get_db_clusters_cluster_param_change_log.dart';

class GetDbClustersCluster {
  /// The cache size for DBCluster.
  final int cacheSize;
  /// The cpu resource amount of DBCluster. Depends on `db_cluster_class`.
  final int cpu;
  /// The creation time of the resource.
  final String createTime;
  /// The DBCluster class. db_cluster_class has a range of class from `selectdb.xlarge` to `selectdb.256xlarge`.
  final String dbClusterClass;
  /// The DBCluster description.
  final String dbClusterDescription;
  /// The cluster ID.
  final String dbClusterId;
  /// The instance ID.
  final String dbInstanceId;
  /// The Engine of the DBCluster.
  final String engine;
  /// The engine version of the DBCluster.
  final String engineVersion;
  final String id;
  /// The memory resource amount of DBCluster. Depends on `db_cluster_class`.
  final int memory;
  /// The configuration change logs of parameters.
  final List<GetDbClustersClusterParamChangeLog> paramChangeLogs;
  /// The details about each parameter in DBCluster returned.
  final List<GetDbClustersClusterParam> params;
  /// The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  final String paymentType;
  /// The ID of region for the cluster.
  final String regionId;
  /// The status of the DBCluster. Valid values: `ACTIVATION`,`CREATING`,`DELETING`,`RESTARTING`,`ORDER_PREPARING`.
  final String status;
  /// The ID of the VPC for the cluster.
  final String vpcId;
  /// The ID of zone for the cluster.
  final String zoneId;

  /// Creates a new [GetDbClustersCluster].
  /// [cacheSize] The cache size for DBCluster.
  /// [cpu] The cpu resource amount of DBCluster. Depends on `db_cluster_class`.
  /// [createTime] The creation time of the resource.
  /// [dbClusterClass] The DBCluster class. db_cluster_class has a range of class from `selectdb.xlarge` to `selectdb.256xlarge`.
  /// [dbClusterDescription] The DBCluster description.
  /// [dbClusterId] The cluster ID.
  /// [dbInstanceId] The instance ID.
  /// [engine] The Engine of the DBCluster.
  /// [engineVersion] The engine version of the DBCluster.
  /// [id] Required.
  /// [memory] The memory resource amount of DBCluster. Depends on `db_cluster_class`.
  /// [paramChangeLogs] The configuration change logs of parameters.
  /// [params] The details about each parameter in DBCluster returned.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  /// [regionId] The ID of region for the cluster.
  /// [status] The status of the DBCluster. Valid values: `ACTIVATION`,`CREATING`,`DELETING`,`RESTARTING`,`ORDER_PREPARING`.
  /// [vpcId] The ID of the VPC for the cluster.
  /// [zoneId] The ID of zone for the cluster.
  GetDbClustersCluster({
    required this.cacheSize,
    required this.cpu,
    required this.createTime,
    required this.dbClusterClass,
    required this.dbClusterDescription,
    required this.dbClusterId,
    required this.dbInstanceId,
    required this.engine,
    required this.engineVersion,
    required this.id,
    required this.memory,
    required this.paramChangeLogs,
    required this.params,
    required this.paymentType,
    required this.regionId,
    required this.status,
    required this.vpcId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheSize': cacheSize,
      'cpu': cpu,
      'createTime': createTime,
      'dbClusterClass': dbClusterClass,
      'dbClusterDescription': dbClusterDescription,
      'dbClusterId': dbClusterId,
      'dbInstanceId': dbInstanceId,
      'engine': engine,
      'engineVersion': engineVersion,
      'id': id,
      'memory': memory,
      'paramChangeLogs': pulumi.Input.encodeList<GetDbClustersClusterParamChangeLog, Map<String, dynamic>>(paramChangeLogs, (value) => value.toMap()),
      'params': pulumi.Input.encodeList<GetDbClustersClusterParam, Map<String, dynamic>>(params, (value) => value.toMap()),
      'paymentType': paymentType,
      'regionId': regionId,
      'status': status,
      'vpcId': vpcId,
      'zoneId': zoneId,
    };
  }

  factory GetDbClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetDbClustersCluster(
      cacheSize: map['cacheSize'] as int,
      cpu: map['cpu'] as int,
      createTime: map['createTime'] as String,
      dbClusterClass: map['dbClusterClass'] as String,
      dbClusterDescription: map['dbClusterDescription'] as String,
      dbClusterId: map['dbClusterId'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      memory: map['memory'] as int,
      paramChangeLogs: pulumi.Input.decodeList<GetDbClustersClusterParamChangeLog>(map['paramChangeLogs'], (value) => GetDbClustersClusterParamChangeLog.fromMap((value as Map).cast<String, dynamic>())),
      params: pulumi.Input.decodeList<GetDbClustersClusterParam>(map['params'], (value) => GetDbClustersClusterParam.fromMap((value as Map).cast<String, dynamic>())),
      paymentType: map['paymentType'] as String,
      regionId: map['regionId'] as String,
      status: map['status'] as String,
      vpcId: map['vpcId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

