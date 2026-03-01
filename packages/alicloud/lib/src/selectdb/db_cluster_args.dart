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
  DbClusterArgs({
    required int cacheSize,
    required String dbClusterClass,
    required String dbClusterDescription,
    required String dbInstanceId,
    List<DbClusterDesiredParam>? desiredParams,
    String? desiredStatus,
    required String paymentType,
  }) :
      cacheSize = pulumi.Input.asInput<int>(cacheSize),
      dbClusterClass = pulumi.Input.asInput<String>(dbClusterClass),
      dbClusterDescription = pulumi.Input.asInput<String>(dbClusterDescription),
      dbInstanceId = pulumi.Input.asInput<String>(dbInstanceId),
      desiredParams = pulumi.Input.asOptionalInput<List<DbClusterDesiredParam>>(desiredParams),
      desiredStatus = pulumi.Input.asOptionalInput<String>(desiredStatus),
      paymentType = pulumi.Input.asInput<String>(paymentType);

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
      cacheSize: map['cacheSize'] as int,
      dbClusterClass: map['dbClusterClass'] as String,
      dbClusterDescription: map['dbClusterDescription'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      desiredParams: map['desiredParams'] == null ? null : pulumi.Input.decodeList<DbClusterDesiredParam>(map['desiredParams'], (value) => DbClusterDesiredParam.fromMap((value as Map).cast<String, dynamic>())),
      desiredStatus: map['desiredStatus'] == null ? null : map['desiredStatus'] as String,
      paymentType: map['paymentType'] as String,
    );
  }
}

