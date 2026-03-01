// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_db_cluster_ip_array.dart';
import 'cluster_parameter.dart';

/// {@template pulumi_polardb_cluster_cluster_args_doc}
/// The set of arguments for Cluster.
/// {@endtemplate}
/// {@macro pulumi_polardb_cluster_cluster_args_doc}
class ClusterArgs {
  /// Specifies whether to enable the no-activity suspension feature. Default value: false. Valid values are `true`, `false`. This parameter is valid only for serverless clusters.
  final pulumi.Input<String>? allowShutDown;
  /// Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is `PrePaid`. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1.
  final pulumi.Input<int>? autoRenewPeriod;
  /// The retention policy for the backup sets when you delete the cluster.  Valid values are `ALL`, `LATEST`, `NONE`. Value options can refer to the latest docs [DeleteDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/deletedbcluster-1)
  final pulumi.Input<String>? backupRetentionPolicyOnClusterDeletion;
  /// The time point of data to be cloned. Valid values are `LATEST`,`BackupID`,`Timestamp`.Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `CloneDataPoint`.
  /// > **NOTE:** If CreationOption is set to CloneFromRDS, the value of this parameter must be `LATEST`. When clone to a historical backup set, you must specify a specific backup set ID. When clone to a specific point in time, specify a YYYY-MM-DDThh:mm:ssZ format UTC timestamp.
  final pulumi.Input<String>? cloneDataPoint;
  /// Specifies whether to enable or disable SQL data collector. Valid values are `Enable`, `Disabled`.
  final pulumi.Input<String>? collectorStatus;
  /// Enable storage compression function. The value of this parameter is `ON`. Only MySQL supports.
  /// > **NOTE:** When the value of db_type is not MySQL, the value of creation_option is neither empty nor Normal, and the value of storage_type is not PSL4, this field will be ignored.
  final pulumi.Input<String>? compressStorage;
  /// The edition of the PolarDB service. Valid values are `Normal`,`Basic`,`ArchiveNormal`,`NormalMultimaster`,`SENormal`.Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `CreationCategory`.
  /// > **NOTE:** You can set this parameter to Basic only when DBType is set to MySQL and DBVersion is set to 5.6, 5.7, or 8.0. You can set this parameter to Archive only when DBType is set to MySQL and DBVersion is set to 8.0. From version 1.188.0, `creation_category` can be set to `NormalMultimaster`. From version 1.203.0, `creation_category` can be set to `SENormal`.
  final pulumi.Input<String>? creationCategory;
  /// The method that is used to create a cluster. Valid values are `Normal`,`CloneFromPolarDB`,`CloneFromRDS`,`MigrationFromRDS`,`CreateGdnStandby`,`RecoverFromRecyclebin`,`UpgradeFromPolarDB`. **NOTE:** From version 1.233.0, `creation_option` can be set to `RecoverFromRecyclebin`. From version 1.255.0, `creation_option` can be set to `UpgradeFromPolarDB`. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `CreationOption`.
  /// * > **NOTE:** The default value is Normal. If DBType is set to MySQL and DBVersion is set to 5.6 or 5.7, this parameter can be set to CloneFromRDS or MigrationFromRDS. If DBType is set to MySQL and DBVersion is set to 8.0, this parameter can be set to CreateGdnStandby. If `creation_option` is RecoverFromRecyclebin, you need to pass in the released source PolarDB cluster ID for this parameter. The DBType of the cluster recovered from the recycle bin and the source cluster must be consistent. For example, if the source cluster is MySQL 8.0, the cluster recovered from the recycle bin also needs to have its DBType set to MySQL and DBVersion set to 8.0.
  final pulumi.Input<String>? creationOption;
  /// db_cluster_ip_array defines how users can send requests to your API. See `db_cluster_ip_array` below.
  final pulumi.Input<List<ClusterDbClusterIpArray>>? dbClusterIpArrays;
  /// Database minor version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBMinorVersion`. This parameter takes effect only when `db_type` is MySQL and `db_version` is 8.0.
  final pulumi.Input<String>? dbMinorVersion;
  /// The db_node_class of cluster node.
  /// > **NOTE:** Node specifications are divided into cluster version, single node version and History Library version. They can't change each other, but the general specification and exclusive specification of cluster version can be changed.
  /// From version 1.204.0, If you need to create a Serverless cluster with MySQL , `db_node_class` can be set to `polar.mysql.sl.small` for enterprise edition, and `polar.mysql.sl.small.c` for standard edition.
  /// From version 1.229.1, If you need to create a Serverless cluster with PostgreSQL, `db_node_class` can be set to `polar.pg.sl.small` for enterprise edition, and `polar.pg.sl.small.c` for standard edition. Region can refer to the latest docs(https://help.aliyun.com/zh/polardb/polardb-for-postgresql/the-public-preview-of-polardb-for-postgresql-serverless-ends?spm=a2c4g.11186623.0.0.2e9f6cf0B4rIfC).
  final pulumi.Input<String> dbNodeClass;
  /// Number of the PolarDB cluster nodes, default is 2(Each cluster must contain at least a primary node and a read-only node). Add/remove nodes by modifying this parameter, valid values: [2~16].
  /// > **NOTE:** To avoid adding or removing multiple read-only nodes by mistake, the system allows you to add or remove one read-only node at a time.
  final pulumi.Input<int>? dbNodeCount;
  /// The ID of the node or node subscript. Node subscript values: 1 to 15.
  final pulumi.Input<String>? dbNodeId;
  /// The number of Standard and Enterprise Edition nodes. Default value: `1` for Standard Edition, `2` for Enterprise Edition. Valid values are `1`, `2`. From version 1.235.0, Valid values for PolarDB for MySQL Standard Edition: `1` to `8`. Valid values for PolarDB for MySQL Enterprise Edition: `1` to `16`.
  /// > **NOTE:** This parameter only takes effect on creation. To further manage target db node number, please refer to parameter `db_node_count`.
  final pulumi.Input<int>? dbNodeNum;
  /// Database type. Value options: MySQL, Oracle, PostgreSQL.
  final pulumi.Input<String> dbType;
  /// Database version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBVersion`.
  final pulumi.Input<String> dbVersion;
  /// The time zone of the cluster. You can set the parameter to a value that is on the hour from -12:00 to +13:00 based on UTC. Example: 00:00. Default value: SYSTEM. This value indicates that the time zone of the cluster is the same as the time zone of the region.
  /// > **NOTE:** This parameter is valid only when the DBType parameter is set to MySQL.
  final pulumi.Input<String>? defaultTimeZone;
  /// turn on table deletion_lock. Valid values are 0, 1. 1 means to open the cluster protection lock, 0 means to close the cluster protection lock
  /// > **NOTE:**  Cannot modify after created when `pay_type` is `PrePaid` .`deletion_lock` the cluster protection lock can be turned on or off when `pay_type` is `PostPaid`.
  final pulumi.Input<int>? deletionLock;
  /// The description of cluster.
  final pulumi.Input<String>? description;
  /// turn on table auto encryption. Valid values are `ON`, `OFF`. Only MySQL 8.0 supports.
  /// > **NOTE:** `encrypt_new_tables` Polardb MySQL 8.0 cluster, after TDE and Automatic Encryption are enabled, all newly created tables are automatically encrypted in the cluster.
  final pulumi.Input<String>? encryptNewTables;
  /// The ID of the custom key. `encryption_key` cannot be modified after TDE is opened.
  final pulumi.Input<String>? encryptionKey;
  /// Immediate or scheduled kernel version upgrade. Valid values are `true`, `false`. True means immediate execution, False means scheduled execution.
  final pulumi.Input<String>? fromTimeService;
  /// The ID of the global database network (GDN).
  /// > **NOTE:** This parameter is required if CreationOption is set to CreateGdnStandby.
  final pulumi.Input<String>? gdnId;
  /// The list of global security ip group ids.
  final pulumi.Input<List<String>>? globalSecurityGroupLists;
  /// Indicates whether the hot standby feature is enabled. Valid values are `ON`, `OFF`. Only MySQL supports.
  final pulumi.Input<String>? hotReplicaMode;
  /// Whether to enable the hot standby cluster. Valid values are `ON`, `OFF`, `EQUAL`.
  /// > **NOTE:** From version 1.249.0, `hot_standby_cluster` can be set to `EQUAL`, and this value is only valid for MySQL.
  final pulumi.Input<String>? hotStandbyCluster;
  /// Specifies whether to enable the In-Memory Column Index (IMCI) feature. Valid values are `ON`, `OFF`.
  /// > **NOTE:**  Only polardb MySQL Cluster version is available. The cluster with minor version number of 8.0.1 supports the column index feature, and the specific kernel version must be 8.0.1.1.22 or above.
  /// > **NOTE:**  The single node, the single node version of the history library, and the cluster version of the history library do not support column save indexes.
  final pulumi.Input<String>? imciSwitch;
  /// Enable the Binlog function. Default value: `OFF`. Valid values are `OFF`, `ON`.
  /// > **NOTE:** This parameter is valid only MySQL Engine supports.
  final pulumi.Input<String>? loosePolarLogBin;
  /// Specifies whether to enable X-Engine. Valid values are `ON`, `OFF`.
  /// > **NOTE:** This parameter takes effect only if you do not set `creation_option` to CreateGdnStandby and you set `db_type` to MySQL and `db_version` to 8.0. To enable X-Engine on a node, make sure that the memory of the node is greater than or equal to 8 GB in size.
  final pulumi.Input<String>? looseXengine;
  /// Set the ratio to enable the X-Engine storage engine. Valid values: 10 to 90.
  /// > **NOTE:** When the parameter `loose_xengine` is ON, `loose_xengine_use_memory_pct` takes effect.
  final pulumi.Input<int>? looseXengineUseMemoryPct;
  /// Specifies whether the table names are case-sensitive. Default value: `1`.  Valid values are `1`, `0`.
  /// > **NOTE:** This parameter is valid only when the DBType parameter is set to MySQL.
  final pulumi.Input<int>? lowerCaseTableNames;
  /// Maintainable time period format of the instance: HH:MMZ-HH:MMZ (UTC time)
  final pulumi.Input<String>? maintainTime;
  /// Use as `db_node_class` change class, define upgrade or downgrade. Valid values are `Upgrade`, `Downgrade`, Default to `Upgrade`.
  final pulumi.Input<String>? modifyType;
  /// The ID of the parameter template
  /// > **NOTE:** You can call the [DescribeParameterGroups](https://www.alibabacloud.com/help/en/polardb/latest/describeparametergroups) operation to query the details of all parameter templates of a specified region, such as the ID of a parameter template.
  final pulumi.Input<String>? parameterGroupId;
  /// Set of parameters needs to be set after DB cluster was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/en/polardb/latest/modifydbclusterparameters) .See `parameters` below.
  final pulumi.Input<List<ClusterParameter>>? parameters;
  /// Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  final pulumi.Input<String>? payType;
  /// The duration that you will buy DB cluster (in month). It is valid when pay_type is `PrePaid`. Valid values: [1~9], 12, 24, 36.
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  final pulumi.Input<int>? period;
  /// The latest time to start executing the target scheduled task. The format is YYYY-MM-DDThh: mm: ssZ (UTC).
  /// > **NOTE:** The latest time must be 30 minutes or more later than the start time. If PlannedStartTime is set but this parameter is not specified, the latest time to execute the target task defaults to the start time+30 minutes. For example, when the PlannedStartTime is set to 2021-01-14T09:00:00Z and this parameter is left blank, the target task will start executing at the latest on 2021-01-14T09:30:00Z.
  final pulumi.Input<String>? plannedEndTime;
  /// The earliest time to start executing a scheduled (i.e. within the target time period) kernel version upgrade task. The format is YYYY-MM-DDThh: mm: ssZ (UTC).
  /// > **NOTE:** The starting time range is any time point within the next 24 hours. For example, the current time is 2021-01-14T09:00:00Z, and the allowed start time range for filling in here is 2021-01-14T09:00:00Z~2021-01-15T09:00:00Z. If this parameter is left blank, the kernel version upgrade task will be executed immediately by default.
  final pulumi.Input<String>? plannedStartTime;
  /// The provisioned read/write IOPS of the ESSD AutoPL disk. Valid values: 0 to min{50,000, 1,000 × Capacity - Baseline IOPS}. Baseline IOPS = min{1,800 + 50 × Capacity, 50,000}.
  /// > **NOTE:** This parameter is available only if the StorageType parameter is set to ESSDAUTOPL.
  final pulumi.Input<String>? provisionedIops;
  /// The specifications of the Standard Edition PolarProxy. Available parameters can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1)
  /// > **NOTE:** This parameter is valid only for standard edition clusters.
  final pulumi.Input<String>? proxyClass;
  /// The type of PolarProxy. Valid values are `EXCLUSIVE` `GENERAL`.
  /// > **NOTE:** This parameter is valid for both standard and enterprise clusters.
  final pulumi.Input<String>? proxyType;
  /// Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  final pulumi.Input<String>? renewalStatus;
  /// The ID of resource group which the PolarDB cluster belongs. If not specified, then it belongs to the default resource group.
  /// > **NOTE:** From version 1.250.0, `resource_group_id` can be modified.
  final pulumi.Input<String>? resourceGroupId;
  /// The Alibaba Cloud Resource Name (ARN) of the RAM role. A RAM role is a virtual identity that you can create within your Alibaba Cloud account. For more information see [RAM role overview](https://www.alibabacloud.com/help/en/resource-access-management/latest/ram-role-overview).
  final pulumi.Input<String>? roleArn;
  /// Number of Read-only Columnar Nodes. Valid values: 0 to 7. This parameter is valid only for serverless clusters. This parameter is required when there are column nodes that support steady-state serverless.
  final pulumi.Input<int>? scaleApRoNumMax;
  /// Number of Read-only Columnar Nodes. Valid values: 0 to 7. This parameter is valid only for serverless clusters. This parameter is required when there are column nodes that support steady-state serverless.
  final pulumi.Input<int>? scaleApRoNumMin;
  /// The maximum number of PCUs per node for scaling. Valid values: 1 PCU to 32 PCUs when serverless_type is `AgileServerless` and 0 PCU to 8 PCUs when serverless_type is `SteadyServerless`. This parameter is valid only for serverless clusters.
  final pulumi.Input<int>? scaleMax;
  /// The minimum number of PCUs per node for scaling. Valid values: 1 PCU to 31 PCUs when serverless_type is `AgileServerless` and 0 PCU to 8 PCUs when serverless_type is `SteadyServerless`. This parameter is valid only for serverless clusters.
  final pulumi.Input<int>? scaleMin;
  /// The maximum number of read-only nodes for scaling. Valid values: 0 to 15 when serverless_type is `AgileServerless` and 0 to 7 when serverless_type is `SteadyServerless`. This parameter is valid only for serverless clusters.
  final pulumi.Input<int>? scaleRoNumMax;
  /// The minimum number of read-only nodes for scaling. Valid values: 0 to 15 when serverless_type is `AgileServerless` and 0 to 7 when serverless_type is `SteadyServerless`. This parameter is valid only for serverless clusters.
  final pulumi.Input<int>? scaleRoNumMin;
  /// The detection period for No-activity Suspension. Valid values: 300 to 86,4005. Unit: seconds. The detection duration must be a multiple of 300 seconds. This parameter is valid only for serverless clusters.
  final pulumi.Input<int>? secondsUntilAutoPause;
  /// The ID of the security group. Separate multiple security groups with commas (,). You can add a maximum of three security groups to a cluster.
  /// > **NOTE:** Because of data backup and migration, change DB cluster type and storage would cost 15~20 minutes. Please make full preparation before changing them.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// This attribute has been deprecated from v1.130.0 and using `db_cluster_ip_array` sub-element `security_ips` instead.
  /// Its value is same as `db_cluster_ip_array` sub-element `security_ips` value and its db_cluster_ip_array_name is "default".
  final pulumi.Input<List<String>>? securityIps;
  /// CPU upscale threshold. Valid values: 40 to 100. This parameter is valid only for serverless clusters.
  /// > **NOTE:** `serverless_rule_cpu_enlarge_threshold` should be at least 30 greater than `serverless_rule_cpu_shrink_threshold`.
  final pulumi.Input<int>? serverlessRuleCpuEnlargeThreshold;
  /// CPU downscale threshold. Valid values: 10 to 100. This parameter is valid only for serverless clusters.
  final pulumi.Input<int>? serverlessRuleCpuShrinkThreshold;
  /// Elasticity sensitivity. Valid values: `normal` for standard and `flexible` for sensitive. This parameter is valid only for serverless clusters.
  final pulumi.Input<String>? serverlessRuleMode;
  /// Serverless steady-state switch. Valid values are `ON`, `OFF`. This parameter is valid only for serverless clusters.
  /// > **NOTE:** When serverless_steady_switch is `ON` and serverless_type is `SteadyServerless`, parameters `scale_min`, `scale_max`, `scale_ro_num_min` and `scale_ro_num_max` are all required.
  final pulumi.Input<String>? serverlessSteadySwitch;
  /// The type of the serverless cluster. Valid values `AgileServerless`, `SteadyServerless`. This parameter is valid only for serverless clusters.
  final pulumi.Input<String>? serverlessType;
  /// The ID of the source RDS instance or the ID of the source PolarDB cluster. This parameter is required only when CreationOption is set to MigrationFromRDS, CloneFromRDS, or CloneFromPolarDB.Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `SourceResourceId`.
  final pulumi.Input<String>? sourceResourceId;
  /// The availability zone where the hot standby cluster is stored, takes effect when `hot_standby_cluster` is `ON` or `EQUAL`.
  /// > **NOTE:** `standby_az` is required when `hot_standby_cluster` is `EQUAL`.
  final pulumi.Input<String>? standbyAz;
  /// The billing method of the storage. Valid values `PostPaid`, `PrePaid`.
  final pulumi.Input<String>? storagePayType;
  /// Storage space charged by space (monthly package). Unit: GB.
  /// > **NOTE:**  Valid values for PolarDB for MySQL Standard Edition: 20 to 32000. It is valid when pay_type are `PrePaid` ,`PostPaid`.
  /// > **NOTE:**  Valid values for PolarDB for MySQL Enterprise Edition: 50 to 100000.It is valid when pay_type is `PrePaid`.
  final pulumi.Input<int>? storageSpace;
  /// The storage type of the cluster. Enterprise storage type values are `PSL5`, `PSL4`. The standard version storage type values are `ESSDPL1`, `ESSDPL2`, `ESSDPL3`, `ESSDPL0`, `ESSDAUTOPL`. The standard version only supports MySQL and PostgreSQL.
  final pulumi.Input<String>? storageType;
  /// Whether the cluster has enabled strong data consistency across multiple zones. Valid values are `ON`, `OFF`. Available parameters can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1)
  final pulumi.Input<String>? strictConsistency;
  /// The category of the cluster. Valid values are `Exclusive`, `General`. Only MySQL supports.
  final pulumi.Input<String>? subCategory;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Version Code of the target version, whose parameter values can be obtained from the [DescribeDBClusterVersion](https://www.alibabacloud.com/help/en/polardb/latest/describedbclusterversion) interface.
  final pulumi.Input<String>? targetDbRevisionVersionCode;
  /// turn on TDE encryption. Valid values are `Enabled`, `Disabled`. Default to `Disabled`. TDE cannot be closed after it is turned on.
  /// > **NOTE:** `tde_status` Cannot modify after created when `db_type` is `PostgreSQL` or `Oracle`.`tde_status` only support modification from `Disabled` to `Enabled` when `db_type` is `MySQL`.
  final pulumi.Input<String>? tdeStatus;
  /// Version upgrade type. Valid values are PROXY, DB, ALL. PROXY means upgrading the proxy version, DB means upgrading the db version, ALL means upgrading both db and proxy versions simultaneously.
  final pulumi.Input<String>? upgradeType;
  /// The id of the VPC.
  final pulumi.Input<String>? vpcId;
  /// The virtual switch ID to launch DB instances in one VPC.
  /// > **NOTE:** If vswitch_id is not specified, system will get a vswitch belongs to the user automatically.
  final pulumi.Input<String>? vswitchId;
  /// The Zone to launch the DB cluster. it supports multiple zone.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ClusterArgs].
  /// [allowShutDown] Specifies whether to enable the no-activity suspension feature. Default value: false. Valid values are `true`, `false`. This parameter is valid only for serverless clusters.
  /// [autoRenewPeriod] Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is `PrePaid`. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1.
  /// [backupRetentionPolicyOnClusterDeletion] The retention policy for the backup sets when you delete the cluster.  Valid values are `ALL`, `LATEST`, `NONE`. Value options can refer to the latest docs [DeleteDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/deletedbcluster-1)
  /// [cloneDataPoint] The time point of data to be cloned. Valid values are `LATEST`,`BackupID`,`Timestamp`.Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `CloneDataPoint`.
  /// [collectorStatus] Specifies whether to enable or disable SQL data collector. Valid values are `Enable`, `Disabled`.
  /// [compressStorage] Enable storage compression function. The value of this parameter is `ON`. Only MySQL supports.
  /// [creationCategory] The edition of the PolarDB service. Valid values are `Normal`,`Basic`,`ArchiveNormal`,`NormalMultimaster`,`SENormal`.Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `CreationCategory`.
  /// [creationOption] The method that is used to create a cluster. Valid values are `Normal`,`CloneFromPolarDB`,`CloneFromRDS`,`MigrationFromRDS`,`CreateGdnStandby`,`RecoverFromRecyclebin`,`UpgradeFromPolarDB`. **NOTE:** From version 1.233.0, `creation_option` can be set to `RecoverFromRecyclebin`. From version 1.255.0, `creation_option` can be set to `UpgradeFromPolarDB`. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `CreationOption`.
  /// [dbClusterIpArrays] db_cluster_ip_array defines how users can send requests to your API. See `db_cluster_ip_array` below.
  /// [dbMinorVersion] Database minor version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBMinorVersion`. This parameter takes effect only when `db_type` is MySQL and `db_version` is 8.0.
  /// [dbNodeClass] The db_node_class of cluster node.
  /// [dbNodeCount] Number of the PolarDB cluster nodes, default is 2(Each cluster must contain at least a primary node and a read-only node). Add/remove nodes by modifying this parameter, valid values: [2~16].
  /// [dbNodeId] The ID of the node or node subscript. Node subscript values: 1 to 15.
  /// [dbNodeNum] The number of Standard and Enterprise Edition nodes. Default value: `1` for Standard Edition, `2` for Enterprise Edition. Valid values are `1`, `2`. From version 1.235.0, Valid values for PolarDB for MySQL Standard Edition: `1` to `8`. Valid values for PolarDB for MySQL Enterprise Edition: `1` to `16`.
  /// [dbType] Database type. Value options: MySQL, Oracle, PostgreSQL.
  /// [dbVersion] Database version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBVersion`.
  /// [defaultTimeZone] The time zone of the cluster. You can set the parameter to a value that is on the hour from -12:00 to +13:00 based on UTC. Example: 00:00. Default value: SYSTEM. This value indicates that the time zone of the cluster is the same as the time zone of the region.
  /// [deletionLock] turn on table deletion_lock. Valid values are 0, 1. 1 means to open the cluster protection lock, 0 means to close the cluster protection lock
  /// [description] The description of cluster.
  /// [encryptNewTables] turn on table auto encryption. Valid values are `ON`, `OFF`. Only MySQL 8.0 supports.
  /// [encryptionKey] The ID of the custom key. `encryption_key` cannot be modified after TDE is opened.
  /// [fromTimeService] Immediate or scheduled kernel version upgrade. Valid values are `true`, `false`. True means immediate execution, False means scheduled execution.
  /// [gdnId] The ID of the global database network (GDN).
  /// [globalSecurityGroupLists] The list of global security ip group ids.
  /// [hotReplicaMode] Indicates whether the hot standby feature is enabled. Valid values are `ON`, `OFF`. Only MySQL supports.
  /// [hotStandbyCluster] Whether to enable the hot standby cluster. Valid values are `ON`, `OFF`, `EQUAL`.
  /// [imciSwitch] Specifies whether to enable the In-Memory Column Index (IMCI) feature. Valid values are `ON`, `OFF`.
  /// [loosePolarLogBin] Enable the Binlog function. Default value: `OFF`. Valid values are `OFF`, `ON`.
  /// [looseXengine] Specifies whether to enable X-Engine. Valid values are `ON`, `OFF`.
  /// [looseXengineUseMemoryPct] Set the ratio to enable the X-Engine storage engine. Valid values: 10 to 90.
  /// [lowerCaseTableNames] Specifies whether the table names are case-sensitive. Default value: `1`.  Valid values are `1`, `0`.
  /// [maintainTime] Maintainable time period format of the instance: HH:MMZ-HH:MMZ (UTC time)
  /// [modifyType] Use as `db_node_class` change class, define upgrade or downgrade. Valid values are `Upgrade`, `Downgrade`, Default to `Upgrade`.
  /// [parameterGroupId] The ID of the parameter template
  /// [parameters] Set of parameters needs to be set after DB cluster was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/en/polardb/latest/modifydbclusterparameters) .See `parameters` below.
  /// [payType] Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  /// [period] The duration that you will buy DB cluster (in month). It is valid when pay_type is `PrePaid`. Valid values: [1~9], 12, 24, 36.
  /// [plannedEndTime] The latest time to start executing the target scheduled task. The format is YYYY-MM-DDThh: mm: ssZ (UTC).
  /// [plannedStartTime] The earliest time to start executing a scheduled (i.e. within the target time period) kernel version upgrade task. The format is YYYY-MM-DDThh: mm: ssZ (UTC).
  /// [provisionedIops] The provisioned read/write IOPS of the ESSD AutoPL disk. Valid values: 0 to min{50,000, 1,000 × Capacity - Baseline IOPS}. Baseline IOPS = min{1,800 + 50 × Capacity, 50,000}.
  /// [proxyClass] The specifications of the Standard Edition PolarProxy. Available parameters can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1)
  /// [proxyType] The type of PolarProxy. Valid values are `EXCLUSIVE` `GENERAL`.
  /// [renewalStatus] Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  /// [resourceGroupId] The ID of resource group which the PolarDB cluster belongs. If not specified, then it belongs to the default resource group.
  /// [roleArn] The Alibaba Cloud Resource Name (ARN) of the RAM role. A RAM role is a virtual identity that you can create within your Alibaba Cloud account. For more information see [RAM role overview](https://www.alibabacloud.com/help/en/resource-access-management/latest/ram-role-overview).
  /// [scaleApRoNumMax] Number of Read-only Columnar Nodes. Valid values: 0 to 7. This parameter is valid only for serverless clusters. This parameter is required when there are column nodes that support steady-state serverless.
  /// [scaleApRoNumMin] Number of Read-only Columnar Nodes. Valid values: 0 to 7. This parameter is valid only for serverless clusters. This parameter is required when there are column nodes that support steady-state serverless.
  /// [scaleMax] The maximum number of PCUs per node for scaling. Valid values: 1 PCU to 32 PCUs when serverless_type is `AgileServerless` and 0 PCU to 8 PCUs when serverless_type is `SteadyServerless`. This parameter is valid only for serverless clusters.
  /// [scaleMin] The minimum number of PCUs per node for scaling. Valid values: 1 PCU to 31 PCUs when serverless_type is `AgileServerless` and 0 PCU to 8 PCUs when serverless_type is `SteadyServerless`. This parameter is valid only for serverless clusters.
  /// [scaleRoNumMax] The maximum number of read-only nodes for scaling. Valid values: 0 to 15 when serverless_type is `AgileServerless` and 0 to 7 when serverless_type is `SteadyServerless`. This parameter is valid only for serverless clusters.
  /// [scaleRoNumMin] The minimum number of read-only nodes for scaling. Valid values: 0 to 15 when serverless_type is `AgileServerless` and 0 to 7 when serverless_type is `SteadyServerless`. This parameter is valid only for serverless clusters.
  /// [secondsUntilAutoPause] The detection period for No-activity Suspension. Valid values: 300 to 86,4005. Unit: seconds. The detection duration must be a multiple of 300 seconds. This parameter is valid only for serverless clusters.
  /// [securityGroupIds] The ID of the security group. Separate multiple security groups with commas (,). You can add a maximum of three security groups to a cluster.
  /// [securityIps] This attribute has been deprecated from v1.130.0 and using `db_cluster_ip_array` sub-element `security_ips` instead.
  /// [serverlessRuleCpuEnlargeThreshold] CPU upscale threshold. Valid values: 40 to 100. This parameter is valid only for serverless clusters.
  /// [serverlessRuleCpuShrinkThreshold] CPU downscale threshold. Valid values: 10 to 100. This parameter is valid only for serverless clusters.
  /// [serverlessRuleMode] Elasticity sensitivity. Valid values: `normal` for standard and `flexible` for sensitive. This parameter is valid only for serverless clusters.
  /// [serverlessSteadySwitch] Serverless steady-state switch. Valid values are `ON`, `OFF`. This parameter is valid only for serverless clusters.
  /// [serverlessType] The type of the serverless cluster. Valid values `AgileServerless`, `SteadyServerless`. This parameter is valid only for serverless clusters.
  /// [sourceResourceId] The ID of the source RDS instance or the ID of the source PolarDB cluster. This parameter is required only when CreationOption is set to MigrationFromRDS, CloneFromRDS, or CloneFromPolarDB.Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `SourceResourceId`.
  /// [standbyAz] The availability zone where the hot standby cluster is stored, takes effect when `hot_standby_cluster` is `ON` or `EQUAL`.
  /// [storagePayType] The billing method of the storage. Valid values `PostPaid`, `PrePaid`.
  /// [storageSpace] Storage space charged by space (monthly package). Unit: GB.
  /// [storageType] The storage type of the cluster. Enterprise storage type values are `PSL5`, `PSL4`. The standard version storage type values are `ESSDPL1`, `ESSDPL2`, `ESSDPL3`, `ESSDPL0`, `ESSDAUTOPL`. The standard version only supports MySQL and PostgreSQL.
  /// [strictConsistency] Whether the cluster has enabled strong data consistency across multiple zones. Valid values are `ON`, `OFF`. Available parameters can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1)
  /// [subCategory] The category of the cluster. Valid values are `Exclusive`, `General`. Only MySQL supports.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetDbRevisionVersionCode] The Version Code of the target version, whose parameter values can be obtained from the [DescribeDBClusterVersion](https://www.alibabacloud.com/help/en/polardb/latest/describedbclusterversion) interface.
  /// [tdeStatus] turn on TDE encryption. Valid values are `Enabled`, `Disabled`. Default to `Disabled`. TDE cannot be closed after it is turned on.
  /// [upgradeType] Version upgrade type. Valid values are PROXY, DB, ALL. PROXY means upgrading the proxy version, DB means upgrading the db version, ALL means upgrading both db and proxy versions simultaneously.
  /// [vpcId] The id of the VPC.
  /// [vswitchId] The virtual switch ID to launch DB instances in one VPC.
  /// [zoneId] The Zone to launch the DB cluster. it supports multiple zone.
  ClusterArgs({
    String? allowShutDown,
    int? autoRenewPeriod,
    String? backupRetentionPolicyOnClusterDeletion,
    String? cloneDataPoint,
    String? collectorStatus,
    String? compressStorage,
    String? creationCategory,
    String? creationOption,
    List<ClusterDbClusterIpArray>? dbClusterIpArrays,
    String? dbMinorVersion,
    required String dbNodeClass,
    int? dbNodeCount,
    String? dbNodeId,
    int? dbNodeNum,
    required String dbType,
    required String dbVersion,
    String? defaultTimeZone,
    int? deletionLock,
    String? description,
    String? encryptNewTables,
    String? encryptionKey,
    String? fromTimeService,
    String? gdnId,
    List<String>? globalSecurityGroupLists,
    String? hotReplicaMode,
    String? hotStandbyCluster,
    String? imciSwitch,
    String? loosePolarLogBin,
    String? looseXengine,
    int? looseXengineUseMemoryPct,
    int? lowerCaseTableNames,
    String? maintainTime,
    String? modifyType,
    String? parameterGroupId,
    List<ClusterParameter>? parameters,
    String? payType,
    int? period,
    String? plannedEndTime,
    String? plannedStartTime,
    String? provisionedIops,
    String? proxyClass,
    String? proxyType,
    String? renewalStatus,
    String? resourceGroupId,
    String? roleArn,
    int? scaleApRoNumMax,
    int? scaleApRoNumMin,
    int? scaleMax,
    int? scaleMin,
    int? scaleRoNumMax,
    int? scaleRoNumMin,
    int? secondsUntilAutoPause,
    List<String>? securityGroupIds,
    List<String>? securityIps,
    int? serverlessRuleCpuEnlargeThreshold,
    int? serverlessRuleCpuShrinkThreshold,
    String? serverlessRuleMode,
    String? serverlessSteadySwitch,
    String? serverlessType,
    String? sourceResourceId,
    String? standbyAz,
    String? storagePayType,
    int? storageSpace,
    String? storageType,
    String? strictConsistency,
    String? subCategory,
    Map<String, String>? tags,
    String? targetDbRevisionVersionCode,
    String? tdeStatus,
    String? upgradeType,
    String? vpcId,
    String? vswitchId,
    String? zoneId,
  }) :
      allowShutDown = pulumi.Input.asOptionalInput<String>(allowShutDown),
      autoRenewPeriod = pulumi.Input.asOptionalInput<int>(autoRenewPeriod),
      backupRetentionPolicyOnClusterDeletion = pulumi.Input.asOptionalInput<String>(backupRetentionPolicyOnClusterDeletion),
      cloneDataPoint = pulumi.Input.asOptionalInput<String>(cloneDataPoint),
      collectorStatus = pulumi.Input.asOptionalInput<String>(collectorStatus),
      compressStorage = pulumi.Input.asOptionalInput<String>(compressStorage),
      creationCategory = pulumi.Input.asOptionalInput<String>(creationCategory),
      creationOption = pulumi.Input.asOptionalInput<String>(creationOption),
      dbClusterIpArrays = pulumi.Input.asOptionalInput<List<ClusterDbClusterIpArray>>(dbClusterIpArrays),
      dbMinorVersion = pulumi.Input.asOptionalInput<String>(dbMinorVersion),
      dbNodeClass = pulumi.Input.asInput<String>(dbNodeClass),
      dbNodeCount = pulumi.Input.asOptionalInput<int>(dbNodeCount),
      dbNodeId = pulumi.Input.asOptionalInput<String>(dbNodeId),
      dbNodeNum = pulumi.Input.asOptionalInput<int>(dbNodeNum),
      dbType = pulumi.Input.asInput<String>(dbType),
      dbVersion = pulumi.Input.asInput<String>(dbVersion),
      defaultTimeZone = pulumi.Input.asOptionalInput<String>(defaultTimeZone),
      deletionLock = pulumi.Input.asOptionalInput<int>(deletionLock),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptNewTables = pulumi.Input.asOptionalInput<String>(encryptNewTables),
      encryptionKey = pulumi.Input.asOptionalInput<String>(encryptionKey),
      fromTimeService = pulumi.Input.asOptionalInput<String>(fromTimeService),
      gdnId = pulumi.Input.asOptionalInput<String>(gdnId),
      globalSecurityGroupLists = pulumi.Input.asOptionalInput<List<String>>(globalSecurityGroupLists),
      hotReplicaMode = pulumi.Input.asOptionalInput<String>(hotReplicaMode),
      hotStandbyCluster = pulumi.Input.asOptionalInput<String>(hotStandbyCluster),
      imciSwitch = pulumi.Input.asOptionalInput<String>(imciSwitch),
      loosePolarLogBin = pulumi.Input.asOptionalInput<String>(loosePolarLogBin),
      looseXengine = pulumi.Input.asOptionalInput<String>(looseXengine),
      looseXengineUseMemoryPct = pulumi.Input.asOptionalInput<int>(looseXengineUseMemoryPct),
      lowerCaseTableNames = pulumi.Input.asOptionalInput<int>(lowerCaseTableNames),
      maintainTime = pulumi.Input.asOptionalInput<String>(maintainTime),
      modifyType = pulumi.Input.asOptionalInput<String>(modifyType),
      parameterGroupId = pulumi.Input.asOptionalInput<String>(parameterGroupId),
      parameters = pulumi.Input.asOptionalInput<List<ClusterParameter>>(parameters),
      payType = pulumi.Input.asOptionalInput<String>(payType),
      period = pulumi.Input.asOptionalInput<int>(period),
      plannedEndTime = pulumi.Input.asOptionalInput<String>(plannedEndTime),
      plannedStartTime = pulumi.Input.asOptionalInput<String>(plannedStartTime),
      provisionedIops = pulumi.Input.asOptionalInput<String>(provisionedIops),
      proxyClass = pulumi.Input.asOptionalInput<String>(proxyClass),
      proxyType = pulumi.Input.asOptionalInput<String>(proxyType),
      renewalStatus = pulumi.Input.asOptionalInput<String>(renewalStatus),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      scaleApRoNumMax = pulumi.Input.asOptionalInput<int>(scaleApRoNumMax),
      scaleApRoNumMin = pulumi.Input.asOptionalInput<int>(scaleApRoNumMin),
      scaleMax = pulumi.Input.asOptionalInput<int>(scaleMax),
      scaleMin = pulumi.Input.asOptionalInput<int>(scaleMin),
      scaleRoNumMax = pulumi.Input.asOptionalInput<int>(scaleRoNumMax),
      scaleRoNumMin = pulumi.Input.asOptionalInput<int>(scaleRoNumMin),
      secondsUntilAutoPause = pulumi.Input.asOptionalInput<int>(secondsUntilAutoPause),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      securityIps = pulumi.Input.asOptionalInput<List<String>>(securityIps),
      serverlessRuleCpuEnlargeThreshold = pulumi.Input.asOptionalInput<int>(serverlessRuleCpuEnlargeThreshold),
      serverlessRuleCpuShrinkThreshold = pulumi.Input.asOptionalInput<int>(serverlessRuleCpuShrinkThreshold),
      serverlessRuleMode = pulumi.Input.asOptionalInput<String>(serverlessRuleMode),
      serverlessSteadySwitch = pulumi.Input.asOptionalInput<String>(serverlessSteadySwitch),
      serverlessType = pulumi.Input.asOptionalInput<String>(serverlessType),
      sourceResourceId = pulumi.Input.asOptionalInput<String>(sourceResourceId),
      standbyAz = pulumi.Input.asOptionalInput<String>(standbyAz),
      storagePayType = pulumi.Input.asOptionalInput<String>(storagePayType),
      storageSpace = pulumi.Input.asOptionalInput<int>(storageSpace),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      strictConsistency = pulumi.Input.asOptionalInput<String>(strictConsistency),
      subCategory = pulumi.Input.asOptionalInput<String>(subCategory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetDbRevisionVersionCode = pulumi.Input.asOptionalInput<String>(targetDbRevisionVersionCode),
      tdeStatus = pulumi.Input.asOptionalInput<String>(tdeStatus),
      upgradeType = pulumi.Input.asOptionalInput<String>(upgradeType),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowShutDown': ?allowShutDown,
      'autoRenewPeriod': ?autoRenewPeriod,
      'backupRetentionPolicyOnClusterDeletion': ?backupRetentionPolicyOnClusterDeletion,
      'cloneDataPoint': ?cloneDataPoint,
      'collectorStatus': ?collectorStatus,
      'compressStorage': ?compressStorage,
      'creationCategory': ?creationCategory,
      'creationOption': ?creationOption,
      'dbClusterIpArrays': ?pulumi.Input.mapOptionalInputValue<List<ClusterDbClusterIpArray>, List<Map<String, dynamic>>>(dbClusterIpArrays, (value) => pulumi.Input.encodeList<ClusterDbClusterIpArray, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbMinorVersion': ?dbMinorVersion,
      'dbNodeClass': dbNodeClass,
      'dbNodeCount': ?dbNodeCount,
      'dbNodeId': ?dbNodeId,
      'dbNodeNum': ?dbNodeNum,
      'dbType': dbType,
      'dbVersion': dbVersion,
      'defaultTimeZone': ?defaultTimeZone,
      'deletionLock': ?deletionLock,
      'description': ?description,
      'encryptNewTables': ?encryptNewTables,
      'encryptionKey': ?encryptionKey,
      'fromTimeService': ?fromTimeService,
      'gdnId': ?gdnId,
      'globalSecurityGroupLists': ?globalSecurityGroupLists,
      'hotReplicaMode': ?hotReplicaMode,
      'hotStandbyCluster': ?hotStandbyCluster,
      'imciSwitch': ?imciSwitch,
      'loosePolarLogBin': ?loosePolarLogBin,
      'looseXengine': ?looseXengine,
      'looseXengineUseMemoryPct': ?looseXengineUseMemoryPct,
      'lowerCaseTableNames': ?lowerCaseTableNames,
      'maintainTime': ?maintainTime,
      'modifyType': ?modifyType,
      'parameterGroupId': ?parameterGroupId,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ClusterParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ClusterParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'payType': ?payType,
      'period': ?period,
      'plannedEndTime': ?plannedEndTime,
      'plannedStartTime': ?plannedStartTime,
      'provisionedIops': ?provisionedIops,
      'proxyClass': ?proxyClass,
      'proxyType': ?proxyType,
      'renewalStatus': ?renewalStatus,
      'resourceGroupId': ?resourceGroupId,
      'roleArn': ?roleArn,
      'scaleApRoNumMax': ?scaleApRoNumMax,
      'scaleApRoNumMin': ?scaleApRoNumMin,
      'scaleMax': ?scaleMax,
      'scaleMin': ?scaleMin,
      'scaleRoNumMax': ?scaleRoNumMax,
      'scaleRoNumMin': ?scaleRoNumMin,
      'secondsUntilAutoPause': ?secondsUntilAutoPause,
      'securityGroupIds': ?securityGroupIds,
      'securityIps': ?securityIps,
      'serverlessRuleCpuEnlargeThreshold': ?serverlessRuleCpuEnlargeThreshold,
      'serverlessRuleCpuShrinkThreshold': ?serverlessRuleCpuShrinkThreshold,
      'serverlessRuleMode': ?serverlessRuleMode,
      'serverlessSteadySwitch': ?serverlessSteadySwitch,
      'serverlessType': ?serverlessType,
      'sourceResourceId': ?sourceResourceId,
      'standbyAz': ?standbyAz,
      'storagePayType': ?storagePayType,
      'storageSpace': ?storageSpace,
      'storageType': ?storageType,
      'strictConsistency': ?strictConsistency,
      'subCategory': ?subCategory,
      'tags': ?tags,
      'targetDbRevisionVersionCode': ?targetDbRevisionVersionCode,
      'tdeStatus': ?tdeStatus,
      'upgradeType': ?upgradeType,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory ClusterArgs.fromMap(Map<String, dynamic> map) {
    return ClusterArgs(
      allowShutDown: map['allowShutDown'] == null ? null : map['allowShutDown'] as String,
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : map['autoRenewPeriod'] as int,
      backupRetentionPolicyOnClusterDeletion: map['backupRetentionPolicyOnClusterDeletion'] == null ? null : map['backupRetentionPolicyOnClusterDeletion'] as String,
      cloneDataPoint: map['cloneDataPoint'] == null ? null : map['cloneDataPoint'] as String,
      collectorStatus: map['collectorStatus'] == null ? null : map['collectorStatus'] as String,
      compressStorage: map['compressStorage'] == null ? null : map['compressStorage'] as String,
      creationCategory: map['creationCategory'] == null ? null : map['creationCategory'] as String,
      creationOption: map['creationOption'] == null ? null : map['creationOption'] as String,
      dbClusterIpArrays: map['dbClusterIpArrays'] == null ? null : pulumi.Input.decodeList<ClusterDbClusterIpArray>(map['dbClusterIpArrays'], (value) => ClusterDbClusterIpArray.fromMap((value as Map).cast<String, dynamic>())),
      dbMinorVersion: map['dbMinorVersion'] == null ? null : map['dbMinorVersion'] as String,
      dbNodeClass: map['dbNodeClass'] as String,
      dbNodeCount: map['dbNodeCount'] == null ? null : map['dbNodeCount'] as int,
      dbNodeId: map['dbNodeId'] == null ? null : map['dbNodeId'] as String,
      dbNodeNum: map['dbNodeNum'] == null ? null : map['dbNodeNum'] as int,
      dbType: map['dbType'] as String,
      dbVersion: map['dbVersion'] as String,
      defaultTimeZone: map['defaultTimeZone'] == null ? null : map['defaultTimeZone'] as String,
      deletionLock: map['deletionLock'] == null ? null : map['deletionLock'] as int,
      description: map['description'] == null ? null : map['description'] as String,
      encryptNewTables: map['encryptNewTables'] == null ? null : map['encryptNewTables'] as String,
      encryptionKey: map['encryptionKey'] == null ? null : map['encryptionKey'] as String,
      fromTimeService: map['fromTimeService'] == null ? null : map['fromTimeService'] as String,
      gdnId: map['gdnId'] == null ? null : map['gdnId'] as String,
      globalSecurityGroupLists: map['globalSecurityGroupLists'] == null ? null : (map['globalSecurityGroupLists'] as List).cast<String>(),
      hotReplicaMode: map['hotReplicaMode'] == null ? null : map['hotReplicaMode'] as String,
      hotStandbyCluster: map['hotStandbyCluster'] == null ? null : map['hotStandbyCluster'] as String,
      imciSwitch: map['imciSwitch'] == null ? null : map['imciSwitch'] as String,
      loosePolarLogBin: map['loosePolarLogBin'] == null ? null : map['loosePolarLogBin'] as String,
      looseXengine: map['looseXengine'] == null ? null : map['looseXengine'] as String,
      looseXengineUseMemoryPct: map['looseXengineUseMemoryPct'] == null ? null : map['looseXengineUseMemoryPct'] as int,
      lowerCaseTableNames: map['lowerCaseTableNames'] == null ? null : map['lowerCaseTableNames'] as int,
      maintainTime: map['maintainTime'] == null ? null : map['maintainTime'] as String,
      modifyType: map['modifyType'] == null ? null : map['modifyType'] as String,
      parameterGroupId: map['parameterGroupId'] == null ? null : map['parameterGroupId'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeList<ClusterParameter>(map['parameters'], (value) => ClusterParameter.fromMap((value as Map).cast<String, dynamic>())),
      payType: map['payType'] == null ? null : map['payType'] as String,
      period: map['period'] == null ? null : map['period'] as int,
      plannedEndTime: map['plannedEndTime'] == null ? null : map['plannedEndTime'] as String,
      plannedStartTime: map['plannedStartTime'] == null ? null : map['plannedStartTime'] as String,
      provisionedIops: map['provisionedIops'] == null ? null : map['provisionedIops'] as String,
      proxyClass: map['proxyClass'] == null ? null : map['proxyClass'] as String,
      proxyType: map['proxyType'] == null ? null : map['proxyType'] as String,
      renewalStatus: map['renewalStatus'] == null ? null : map['renewalStatus'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
      scaleApRoNumMax: map['scaleApRoNumMax'] == null ? null : map['scaleApRoNumMax'] as int,
      scaleApRoNumMin: map['scaleApRoNumMin'] == null ? null : map['scaleApRoNumMin'] as int,
      scaleMax: map['scaleMax'] == null ? null : map['scaleMax'] as int,
      scaleMin: map['scaleMin'] == null ? null : map['scaleMin'] as int,
      scaleRoNumMax: map['scaleRoNumMax'] == null ? null : map['scaleRoNumMax'] as int,
      scaleRoNumMin: map['scaleRoNumMin'] == null ? null : map['scaleRoNumMin'] as int,
      secondsUntilAutoPause: map['secondsUntilAutoPause'] == null ? null : map['secondsUntilAutoPause'] as int,
      securityGroupIds: map['securityGroupIds'] == null ? null : (map['securityGroupIds'] as List).cast<String>(),
      securityIps: map['securityIps'] == null ? null : (map['securityIps'] as List).cast<String>(),
      serverlessRuleCpuEnlargeThreshold: map['serverlessRuleCpuEnlargeThreshold'] == null ? null : map['serverlessRuleCpuEnlargeThreshold'] as int,
      serverlessRuleCpuShrinkThreshold: map['serverlessRuleCpuShrinkThreshold'] == null ? null : map['serverlessRuleCpuShrinkThreshold'] as int,
      serverlessRuleMode: map['serverlessRuleMode'] == null ? null : map['serverlessRuleMode'] as String,
      serverlessSteadySwitch: map['serverlessSteadySwitch'] == null ? null : map['serverlessSteadySwitch'] as String,
      serverlessType: map['serverlessType'] == null ? null : map['serverlessType'] as String,
      sourceResourceId: map['sourceResourceId'] == null ? null : map['sourceResourceId'] as String,
      standbyAz: map['standbyAz'] == null ? null : map['standbyAz'] as String,
      storagePayType: map['storagePayType'] == null ? null : map['storagePayType'] as String,
      storageSpace: map['storageSpace'] == null ? null : map['storageSpace'] as int,
      storageType: map['storageType'] == null ? null : map['storageType'] as String,
      strictConsistency: map['strictConsistency'] == null ? null : map['strictConsistency'] as String,
      subCategory: map['subCategory'] == null ? null : map['subCategory'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetDbRevisionVersionCode: map['targetDbRevisionVersionCode'] == null ? null : map['targetDbRevisionVersionCode'] as String,
      tdeStatus: map['tdeStatus'] == null ? null : map['tdeStatus'] as String,
      upgradeType: map['upgradeType'] == null ? null : map['upgradeType'] as String,
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
      vswitchId: map['vswitchId'] == null ? null : map['vswitchId'] as String,
      zoneId: map['zoneId'] == null ? null : map['zoneId'] as String,
    );
  }
}

