// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZonalDbCluster resources.
class ZonalDbClusterState {
  /// Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is `PrePaid`. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1.
  final pulumi.Input<int>? autoRenewPeriod;
  /// PolarDB zonal cluster latest version.
  final pulumi.Input<String>? clusterLatestVersion;
  /// current DB Cluster revision Version.
  final pulumi.Input<String>? clusterVersion;
  /// PolarDB zonal cluster creation time.
  final pulumi.Input<String>? createTime;
  /// The edition of the PolarDB service. Valid values are `SENormal`.
  final pulumi.Input<String>? creationCategory;
  /// Cache of the relationship between node key and node ID for PolarDB zonal Cluster
  final pulumi.Input<Map<String, String>>? dbClusterNodesAttributes;
  /// Map of node needs to be created after DB cluster was launched.
  final pulumi.Input<Map<String, String>>? dbClusterNodesConfigs;
  /// Cache of node ID for PolarDB zonal Cluster
  final pulumi.Input<Map<String, String>>? dbClusterNodesIds;
  /// Database minor version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBMinorVersion`. This parameter takes effect only when `db_type` is MySQL and `db_version` is 8.0.
  final pulumi.Input<String>? dbMinorVersion;
  /// The db_node_class of cluster node.Only effective when the cluster is created for the first time. After the cluster is started, the cluster specification is maintained through the node class.
  final pulumi.Input<String>? dbNodeClass;
  /// Database type. Value options: MySQL, Oracle, PostgreSQL.
  final pulumi.Input<String>? dbType;
  /// Database version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBVersion`.
  final pulumi.Input<String>? dbVersion;
  /// The description of cluster.
  final pulumi.Input<String>? description;
  /// The Zone to launch the DB cluster.
  final pulumi.Input<String>? ensRegionId;
  /// Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  final pulumi.Input<String>? payType;
  /// PolarDB zonal cluster region
  final pulumi.Input<String>? regionId;
  /// Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  final pulumi.Input<String>? renewalStatus;
  /// The billing method of the storage. Valid values `Prepaid`.
  final pulumi.Input<String>? storagePayType;
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
  final pulumi.Input<String>? vpcId;
  /// The ENS virtual switch ID to launch DB instances in one VPC.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [ZonalDbClusterState].
  /// [autoRenewPeriod] Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is `PrePaid`. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1.
  /// [clusterLatestVersion] PolarDB zonal cluster latest version.
  /// [clusterVersion] current DB Cluster revision Version.
  /// [createTime] PolarDB zonal cluster creation time.
  /// [creationCategory] The edition of the PolarDB service. Valid values are `SENormal`.
  /// [dbClusterNodesAttributes] Cache of the relationship between node key and node ID for PolarDB zonal Cluster
  /// [dbClusterNodesConfigs] Map of node needs to be created after DB cluster was launched.
  /// [dbClusterNodesIds] Cache of node ID for PolarDB zonal Cluster
  /// [dbMinorVersion] Database minor version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBMinorVersion`. This parameter takes effect only when `db_type` is MySQL and `db_version` is 8.0.
  /// [dbNodeClass] The db_node_class of cluster node.Only effective when the cluster is created for the first time. After the cluster is started, the cluster specification is maintained through the node class.
  /// [dbType] Database type. Value options: MySQL, Oracle, PostgreSQL.
  /// [dbVersion] Database version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBVersion`.
  /// [description] The description of cluster.
  /// [ensRegionId] The Zone to launch the DB cluster.
  /// [payType] Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  /// [regionId] PolarDB zonal cluster region
  /// [renewalStatus] Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  /// [storagePayType] The billing method of the storage. Valid values `Prepaid`.
  /// [storageSpace] Storage space charged by space (monthly package). Unit: GB.
  /// [storageType] The storage type of the cluster. Valid values are `ESSDPL1`, `ESSDPL0`.
  /// [targetMinorVersion] The Version Code of the target version, whose parameter values can be obtained from the [DescribeDBClusterVersionZonal](https://www.alibabacloud.com/help/en/polardb/api-polardb-2017-08-01-describedbclusterversionzonal) interface.
  /// [usedTime] The duration that you will buy DB cluster (in month). It is valid when pay_type is `PrePaid`. Valid values: [1~9], 12, 24, 36.
  /// [vpcId] The id of the ENS VPC.
  /// [vswitchId] The ENS virtual switch ID to launch DB instances in one VPC.
  ZonalDbClusterState({
    this.autoRenewPeriod,
    this.clusterLatestVersion,
    this.clusterVersion,
    this.createTime,
    this.creationCategory,
    this.dbClusterNodesAttributes,
    this.dbClusterNodesConfigs,
    this.dbClusterNodesIds,
    this.dbMinorVersion,
    this.dbNodeClass,
    this.dbType,
    this.dbVersion,
    this.description,
    this.ensRegionId,
    this.payType,
    this.regionId,
    this.renewalStatus,
    this.storagePayType,
    this.storageSpace,
    this.storageType,
    this.targetMinorVersion,
    this.usedTime,
    this.vpcId,
    this.vswitchId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenewPeriod': ?autoRenewPeriod,
      'clusterLatestVersion': ?clusterLatestVersion,
      'clusterVersion': ?clusterVersion,
      'createTime': ?createTime,
      'creationCategory': ?creationCategory,
      'dbClusterNodesAttributes': ?dbClusterNodesAttributes,
      'dbClusterNodesConfigs': ?dbClusterNodesConfigs,
      'dbClusterNodesIds': ?dbClusterNodesIds,
      'dbMinorVersion': ?dbMinorVersion,
      'dbNodeClass': ?dbNodeClass,
      'dbType': ?dbType,
      'dbVersion': ?dbVersion,
      'description': ?description,
      'ensRegionId': ?ensRegionId,
      'payType': ?payType,
      'regionId': ?regionId,
      'renewalStatus': ?renewalStatus,
      'storagePayType': ?storagePayType,
      'storageSpace': ?storageSpace,
      'storageType': ?storageType,
      'targetMinorVersion': ?targetMinorVersion,
      'usedTime': ?usedTime,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory ZonalDbClusterState.fromMap(Map<String, dynamic> map) {
    return ZonalDbClusterState(
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod'] as int).input(),
      clusterLatestVersion: map['clusterLatestVersion'] == null ? null : (map['clusterLatestVersion'] as String).input(),
      clusterVersion: map['clusterVersion'] == null ? null : (map['clusterVersion'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      creationCategory: map['creationCategory'] == null ? null : (map['creationCategory'] as String).input(),
      dbClusterNodesAttributes: map['dbClusterNodesAttributes'] == null ? null : ((map['dbClusterNodesAttributes'] as Map).cast<String, String>()).input(),
      dbClusterNodesConfigs: map['dbClusterNodesConfigs'] == null ? null : ((map['dbClusterNodesConfigs'] as Map).cast<String, String>()).input(),
      dbClusterNodesIds: map['dbClusterNodesIds'] == null ? null : ((map['dbClusterNodesIds'] as Map).cast<String, String>()).input(),
      dbMinorVersion: map['dbMinorVersion'] == null ? null : (map['dbMinorVersion'] as String).input(),
      dbNodeClass: map['dbNodeClass'] == null ? null : (map['dbNodeClass'] as String).input(),
      dbType: map['dbType'] == null ? null : (map['dbType'] as String).input(),
      dbVersion: map['dbVersion'] == null ? null : (map['dbVersion'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ensRegionId: map['ensRegionId'] == null ? null : (map['ensRegionId'] as String).input(),
      payType: map['payType'] == null ? null : (map['payType'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      renewalStatus: map['renewalStatus'] == null ? null : (map['renewalStatus'] as String).input(),
      storagePayType: map['storagePayType'] == null ? null : (map['storagePayType'] as String).input(),
      storageSpace: map['storageSpace'] == null ? null : (map['storageSpace'] as int).input(),
      storageType: map['storageType'] == null ? null : (map['storageType'] as String).input(),
      targetMinorVersion: map['targetMinorVersion'] == null ? null : (map['targetMinorVersion'] as String).input(),
      usedTime: map['usedTime'] == null ? null : (map['usedTime'] as int).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
    );
  }
}

