// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'db_cluster_desired_param.dart';

/// {@template pulumi_selectdb_db_cluster_db_cluster_args_doc}
/// The set of arguments for DbCluster.
/// {@endtemplate}
/// {@macro pulumi_selectdb_db_cluster_db_cluster_args_doc}
class DbClusterArgs {
  /// The desired cache size on creating cluster. The number should be divided by 100.
  final pulumi.Input<int> cacheSize;
  /// The DBCluster class. db_cluster_class has a range of class from `selectdb.xlarge` to `selectdb.256xlarge`.
  final pulumi.Input<String> dbClusterClass;
  /// The DBCluster description.
  final pulumi.Input<String> dbClusterDescription;
  /// The InstanceId of DBInstance for DBCluster. Every DBCluster requires one DBInstance to rely on.
  final pulumi.Input<String> dbInstanceId;
  /// The modified parameter in DBCluster. See `desired_params` below.
  final pulumi.Input<List<DbClusterDesiredParam>>? desiredParams;
  /// The desired status for the resource. Valid values: `ACTIVATION`,`STOPPED`,`STARTING`,`RESTART`.
  final pulumi.Input<String>? desiredStatus;
  /// The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  final pulumi.Input<String> paymentType;

  /// Creates a new [DbClusterArgs].
  /// [cacheSize] The desired cache size on creating cluster. The number should be divided by 100.
  /// [dbClusterClass] The DBCluster class. db_cluster_class has a range of class from `selectdb.xlarge` to `selectdb.256xlarge`.
  /// [dbClusterDescription] The DBCluster description.
  /// [dbInstanceId] The InstanceId of DBInstance for DBCluster. Every DBCluster requires one DBInstance to rely on.
  /// [desiredParams] The modified parameter in DBCluster. See `desired_params` below.
  /// [desiredStatus] The desired status for the resource. Valid values: `ACTIVATION`,`STOPPED`,`STARTING`,`RESTART`.
  /// [paymentType] The payment type of the resource. Valid values: `PayAsYouGo`,`Subscription`.
  const DbClusterArgs({
    required this.cacheSize,
    required this.dbClusterClass,
    required this.dbClusterDescription,
    required this.dbInstanceId,
    this.desiredParams,
    this.desiredStatus,
    required this.paymentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheSize': cacheSize,
      'dbClusterClass': dbClusterClass,
      'dbClusterDescription': dbClusterDescription,
      'dbInstanceId': dbInstanceId,
      'desiredParams': ?pulumi.Input.mapOptionalInputValue<List<DbClusterDesiredParam>, List<Map<String, dynamic>>>(desiredParams, (value) => pulumi.Input.encodeList<DbClusterDesiredParam, Map<String, dynamic>>(value, (value) => value.toMap())),
      'desiredStatus': ?desiredStatus,
      'paymentType': paymentType,
    };
  }

  factory DbClusterArgs.fromMap(Map<String, dynamic> map) {
    return DbClusterArgs(
      cacheSize: pulumi.Input.fromValue(map['cacheSize'] as int),
      dbClusterClass: pulumi.Input.fromValue(map['dbClusterClass'] as String),
      dbClusterDescription: pulumi.Input.fromValue(map['dbClusterDescription'] as String),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      desiredParams: (() { final guardedValue = map['desiredParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DbClusterDesiredParam>(guardedValue, (value) => DbClusterDesiredParam.fromMap((value as Map).cast<String, dynamic>()))); })(),
      desiredStatus: (() { final guardedValue = map['desiredStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
    );
  }
}

