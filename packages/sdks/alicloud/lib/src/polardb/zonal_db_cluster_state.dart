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
  /// &gt; **NOTE:**  Valid values for PolarDB for MySQL Standard Edition: 20 to 32000. It is valid when pay_type are `PrePaid` ,`PostPaid`.
  final pulumi.Input<int>? storageSpace;
  /// The storage type of the cluster. Valid values are `ESSDPL1`, `ESSDPL0`.
  final pulumi.Input<String>? storageType;
  /// The Version Code of the target version, whose parameter values can be obtained from the [DescribeDBClusterVersionZonal](https://www.alibabacloud.com/help/en/polardb/api-polardb-2017-08-01-describedbclusterversionzonal) interface.
  final pulumi.Input<String>? targetMinorVersion;
  /// The duration that you will buy DB cluster (in month). It is valid when pay_type is `PrePaid`. Valid values: [1~9], 12, 24, 36.
  /// &gt; **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to `PostPaid`. Once effect, it will not be modified that means running `pulumi up` will not affect the resource.
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
  const ZonalDbClusterState({
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
      autoRenewPeriod: (() { final guardedValue = map['autoRenewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clusterLatestVersion: (() { final guardedValue = map['clusterLatestVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clusterVersion: (() { final guardedValue = map['clusterVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationCategory: (() { final guardedValue = map['creationCategory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbClusterNodesAttributes: (() { final guardedValue = map['dbClusterNodesAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      dbClusterNodesConfigs: (() { final guardedValue = map['dbClusterNodesConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      dbClusterNodesIds: (() { final guardedValue = map['dbClusterNodesIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      dbMinorVersion: (() { final guardedValue = map['dbMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbNodeClass: (() { final guardedValue = map['dbNodeClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbType: (() { final guardedValue = map['dbType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbVersion: (() { final guardedValue = map['dbVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ensRegionId: (() { final guardedValue = map['ensRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payType: (() { final guardedValue = map['payType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      renewalStatus: (() { final guardedValue = map['renewalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storagePayType: (() { final guardedValue = map['storagePayType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageSpace: (() { final guardedValue = map['storageSpace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetMinorVersion: (() { final guardedValue = map['targetMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usedTime: (() { final guardedValue = map['usedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

