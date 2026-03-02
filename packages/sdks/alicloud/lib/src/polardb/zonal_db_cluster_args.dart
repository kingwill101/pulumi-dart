// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_polardb_zonal_db_cluster_zonal_db_cluster_args_doc}
/// The set of arguments for ZonalDbCluster.
/// {@endtemplate}
/// {@macro pulumi_polardb_zonal_db_cluster_zonal_db_cluster_args_doc}
class ZonalDbClusterArgs {
  /// Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is `PrePaid`. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1.
  final pulumi.Input<int>? autoRenewPeriod;
  /// current DB Cluster revision Version.
  final pulumi.Input<String>? clusterVersion;
  /// The edition of the PolarDB service. Valid values are `SENormal`.
  final pulumi.Input<String>? creationCategory;
  /// Map of node needs to be created after DB cluster was launched.
  final pulumi.Input<Map<String, String>> dbClusterNodesConfigs;
  /// Database minor version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBMinorVersion`. This parameter takes effect only when `db_type` is MySQL and `db_version` is 8.0.
  final pulumi.Input<String>? dbMinorVersion;
  /// The db_node_class of cluster node.Only effective when the cluster is created for the first time. After the cluster is started, the cluster specification is maintained through the node class.
  final pulumi.Input<String> dbNodeClass;
  /// Database type. Value options: MySQL, Oracle, PostgreSQL.
  final pulumi.Input<String>? dbType;
  /// Database version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBVersion`.
  final pulumi.Input<String>? dbVersion;
  /// The description of cluster.
  final pulumi.Input<String>? description;
  /// The Zone to launch the DB cluster.
  final pulumi.Input<String> ensRegionId;
  /// Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  final pulumi.Input<String>? payType;
  /// Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  final pulumi.Input<String>? renewalStatus;
  /// Storage space charged by space (monthly package). Unit: GB.
  /// > **NOTE:**  Valid values for PolarDB for MySQL Standard Edition: 20 to 32000. It is valid when pay_type are `PrePaid` ,`PostPaid`.
  final pulumi.Input<int>? storageSpace;
  /// The storage type of the cluster. Valid values are `ESSDPL1`, `ESSDPL0`.
  final pulumi.Input<String>? storageType;
  /// The Version Code of the target version, whose parameter values can be obtained from the [DescribeDBClusterVersionZonal](https://www.alibabacloud.com/help/en/polardb/api-polardb-2017-08-01-describedbclusterversionzonal) interface.
  final pulumi.Input<String>? targetMinorVersion;
  /// The duration that you will buy DB cluster (in month). It is valid when pay_type is `PrePaid`. Valid values: [1~9], 12, 24, 36.
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to `PostPaid`. Once effect, it will not be modified that means running `pulumi up` will not affect the resource.
  final pulumi.Input<int>? usedTime;
  /// The id of the ENS VPC.
  final pulumi.Input<String> vpcId;
  /// The ENS virtual switch ID to launch DB instances in one VPC.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [ZonalDbClusterArgs].
  /// [autoRenewPeriod] Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is `PrePaid`. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1.
  /// [clusterVersion] current DB Cluster revision Version.
  /// [creationCategory] The edition of the PolarDB service. Valid values are `SENormal`.
  /// [dbClusterNodesConfigs] Map of node needs to be created after DB cluster was launched.
  /// [dbMinorVersion] Database minor version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBMinorVersion`. This parameter takes effect only when `db_type` is MySQL and `db_version` is 8.0.
  /// [dbNodeClass] The db_node_class of cluster node.Only effective when the cluster is created for the first time. After the cluster is started, the cluster specification is maintained through the node class.
  /// [dbType] Database type. Value options: MySQL, Oracle, PostgreSQL.
  /// [dbVersion] Database version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBVersion`.
  /// [description] The description of cluster.
  /// [ensRegionId] The Zone to launch the DB cluster.
  /// [payType] Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  /// [renewalStatus] Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  /// [storageSpace] Storage space charged by space (monthly package). Unit: GB.
  /// [storageType] The storage type of the cluster. Valid values are `ESSDPL1`, `ESSDPL0`.
  /// [targetMinorVersion] The Version Code of the target version, whose parameter values can be obtained from the [DescribeDBClusterVersionZonal](https://www.alibabacloud.com/help/en/polardb/api-polardb-2017-08-01-describedbclusterversionzonal) interface.
  /// [usedTime] The duration that you will buy DB cluster (in month). It is valid when pay_type is `PrePaid`. Valid values: [1~9], 12, 24, 36.
  /// [vpcId] The id of the ENS VPC.
  /// [vswitchId] The ENS virtual switch ID to launch DB instances in one VPC.
  ZonalDbClusterArgs({
    this.autoRenewPeriod,
    this.clusterVersion,
    this.creationCategory,
    required this.dbClusterNodesConfigs,
    this.dbMinorVersion,
    required this.dbNodeClass,
    this.dbType,
    this.dbVersion,
    this.description,
    required this.ensRegionId,
    this.payType,
    this.renewalStatus,
    this.storageSpace,
    this.storageType,
    this.targetMinorVersion,
    this.usedTime,
    required this.vpcId,
    required this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenewPeriod': ?autoRenewPeriod,
      'clusterVersion': ?clusterVersion,
      'creationCategory': ?creationCategory,
      'dbClusterNodesConfigs': dbClusterNodesConfigs,
      'dbMinorVersion': ?dbMinorVersion,
      'dbNodeClass': dbNodeClass,
      'dbType': ?dbType,
      'dbVersion': ?dbVersion,
      'description': ?description,
      'ensRegionId': ensRegionId,
      'payType': ?payType,
      'renewalStatus': ?renewalStatus,
      'storageSpace': ?storageSpace,
      'storageType': ?storageType,
      'targetMinorVersion': ?targetMinorVersion,
      'usedTime': ?usedTime,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory ZonalDbClusterArgs.fromMap(Map<String, dynamic> map) {
    return ZonalDbClusterArgs(
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod'] as int).input(),
      clusterVersion: map['clusterVersion'] == null ? null : (map['clusterVersion'] as String).input(),
      creationCategory: map['creationCategory'] == null ? null : (map['creationCategory'] as String).input(),
      dbClusterNodesConfigs: ((map['dbClusterNodesConfigs'] as Map).cast<String, String>()).input(),
      dbMinorVersion: map['dbMinorVersion'] == null ? null : (map['dbMinorVersion'] as String).input(),
      dbNodeClass: (map['dbNodeClass'] as String).input(),
      dbType: map['dbType'] == null ? null : (map['dbType'] as String).input(),
      dbVersion: map['dbVersion'] == null ? null : (map['dbVersion'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ensRegionId: (map['ensRegionId'] as String).input(),
      payType: map['payType'] == null ? null : (map['payType'] as String).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus'] as String).input(),
      storageSpace: map['storageSpace'] == null ? null : (map['storageSpace'] as int).input(),
      storageType: map['storageType'] == null ? null : (map['storageType'] as String).input(),
      targetMinorVersion: map['targetMinorVersion'] == null ? null : (map['targetMinorVersion'] as String).input(),
      usedTime: map['usedTime'] == null ? null : (map['usedTime'] as int).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
    );
  }
}

