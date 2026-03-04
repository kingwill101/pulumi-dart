// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_clusters_cluster_param.dart';
import 'get_db_clusters_cluster_param_change_log.dart';

class GetDbClustersCluster {
  /// The cache size for DBCluster.
  final pulumi.Input<int> cacheSize;

  /// The cpu resource amount of DBCluster. Depends on `db_cluster_class`.
  final pulumi.Input<int> cpu;

  /// The creation time of the resource.
  final pulumi.Input<String> createTime;

  /// The DBCluster class. db_cluster_class has a range of class from `selectdb.xlarge` to `selectdb.256xlarge`.
  final pulumi.Input<String> dbClusterClass;

  /// The DBCluster description.
  final pulumi.Input<String> dbClusterDescription;

  /// The cluster ID.
  final pulumi.Input<String> dbClusterId;

  /// The instance ID.
  final pulumi.Input<String> dbInstanceId;

  /// The Engine of the DBCluster.
  final pulumi.Input<String> engine;

  /// The engine version of the DBCluster.
  final pulumi.Input<String> engineVersion;
  final pulumi.Input<String> id;

  /// The memory resource amount of DBCluster. Depends on `db_cluster_class`.
  final pulumi.Input<int> memory;

  /// The configuration change logs of parameters.
  final pulumi.Input<List<GetDbClustersClusterParamChangeLog>> paramChangeLogs;

  /// The details about each parameter in DBCluster returned.
  final pulumi.Input<List<GetDbClustersClusterParam>> params;

  /// The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  final pulumi.Input<String> paymentType;

  /// The ID of region for the cluster.
  final pulumi.Input<String> regionId;

  /// The status of the DBCluster. Valid values: `ACTIVATION`,`CREATING`,`DELETING`,`RESTARTING`,`ORDER_PREPARING`.
  final pulumi.Input<String> status;

  /// The ID of the VPC for the cluster.
  final pulumi.Input<String> vpcId;

  /// The ID of zone for the cluster.
  final pulumi.Input<String> zoneId;

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
      'paramChangeLogs':
          pulumi.Input.mapInputValue<
            List<GetDbClustersClusterParamChangeLog>,
            List<Map<String, dynamic>>
          >(
            paramChangeLogs,
            (value) =>
                pulumi.Input.encodeList<
                  GetDbClustersClusterParamChangeLog,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'params':
          pulumi.Input.mapInputValue<
            List<GetDbClustersClusterParam>,
            List<Map<String, dynamic>>
          >(
            params,
            (value) =>
                pulumi.Input.encodeList<
                  GetDbClustersClusterParam,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'paymentType': paymentType,
      'regionId': regionId,
      'status': status,
      'vpcId': vpcId,
      'zoneId': zoneId,
    };
  }

  factory GetDbClustersCluster.fromMap(Map<String, dynamic> map) {
    return GetDbClustersCluster(
      cacheSize: pulumi.Input.fromValue(map['cacheSize'] as int),
      cpu: pulumi.Input.fromValue(map['cpu'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dbClusterClass: pulumi.Input.fromValue(map['dbClusterClass'] as String),
      dbClusterDescription: pulumi.Input.fromValue(
        map['dbClusterDescription'] as String,
      ),
      dbClusterId: pulumi.Input.fromValue(map['dbClusterId'] as String),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      memory: pulumi.Input.fromValue(map['memory'] as int),
      paramChangeLogs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetDbClustersClusterParamChangeLog>(
          map['paramChangeLogs']!,
          (value) => GetDbClustersClusterParamChangeLog.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      params: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetDbClustersClusterParam>(
          map['params']!,
          (value) => GetDbClustersClusterParam.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      regionId: pulumi.Input.fromValue(map['regionId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
