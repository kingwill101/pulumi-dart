// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_db_cluster_ip_array.dart';
import 'cluster_db_revision_version_list.dart';
import 'cluster_parameter.dart';

/// Input properties used for looking up and filtering Cluster resources.
class ClusterState {
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
  /// (Available since 1.81.0) PolarDB cluster connection string.
  final pulumi.Input<String>? connectionString;
  /// (Available since 1.204.1) PolarDB cluster creation time.
  final pulumi.Input<String>? createTime;
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
  final pulumi.Input<String>? dbNodeClass;
  /// Number of the PolarDB cluster nodes, default is 2(Each cluster must contain at least a primary node and a read-only node). Add/remove nodes by modifying this parameter, valid values: [2~16].
  /// > **NOTE:** To avoid adding or removing multiple read-only nodes by mistake, the system allows you to add or remove one read-only node at a time.
  final pulumi.Input<int>? dbNodeCount;
  /// The ID of the node or node subscript. Node subscript values: 1 to 15.
  final pulumi.Input<String>? dbNodeId;
  /// The number of Standard and Enterprise Edition nodes. Default value: `1` for Standard Edition, `2` for Enterprise Edition. Valid values are `1`, `2`. From version 1.235.0, Valid values for PolarDB for MySQL Standard Edition: `1` to `8`. Valid values for PolarDB for MySQL Enterprise Edition: `1` to `16`.
  /// > **NOTE:** This parameter only takes effect on creation. To further manage target db node number, please refer to parameter `db_node_count`.
  final pulumi.Input<int>? dbNodeNum;
  /// (Available since v1.216.0) The db_revision_version_list supports the following:
  final pulumi.Input<List<ClusterDbRevisionVersionList>>? dbRevisionVersionLists;
  /// Database type. Value options: MySQL, Oracle, PostgreSQL.
  final pulumi.Input<String>? dbType;
  /// Database version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBVersion`.
  final pulumi.Input<String>? dbVersion;
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
  /// (Available since 1.196.0) PolarDB cluster connection port.
  final pulumi.Input<String>? port;
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
  /// (Available since 1.204.1) PolarDB cluster status.
  final pulumi.Input<String>? status;
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
  /// (Available since 1.200.0) The region where the TDE key resides.
  /// > **NOTE:** TDE can be enabled on clusters that have joined a global database network (GDN). After TDE is enabled on the primary cluster in a GDN, TDE is enabled on the secondary clusters in the GDN by default. The key used by the secondary clusters and the region for the key resides must be the same as the primary cluster. The region of the key cannot be modified.
  /// > **NOTE:** You cannot enable TDE for the secondary clusters in a GDN. Used to view user KMS activation status.
  final pulumi.Input<String>? tdeRegion;
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

  /// Creates a new [ClusterState].
  /// [allowShutDown] Specifies whether to enable the no-activity suspension feature. Default value: false. Valid values are `true`, `false`. This parameter is valid only for serverless clusters.
  /// [autoRenewPeriod] Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is `PrePaid`. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1.
  /// [backupRetentionPolicyOnClusterDeletion] The retention policy for the backup sets when you delete the cluster.  Valid values are `ALL`, `LATEST`, `NONE`. Value options can refer to the latest docs [DeleteDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/deletedbcluster-1)
  /// [cloneDataPoint] The time point of data to be cloned. Valid values are `LATEST`,`BackupID`,`Timestamp`.Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `CloneDataPoint`.
  /// [collectorStatus] Specifies whether to enable or disable SQL data collector. Valid values are `Enable`, `Disabled`.
  /// [compressStorage] Enable storage compression function. The value of this parameter is `ON`. Only MySQL supports.
  /// [connectionString] (Available since 1.81.0) PolarDB cluster connection string.
  /// [createTime] (Available since 1.204.1) PolarDB cluster creation time.
  /// [creationCategory] The edition of the PolarDB service. Valid values are `Normal`,`Basic`,`ArchiveNormal`,`NormalMultimaster`,`SENormal`.Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `CreationCategory`.
  /// [creationOption] The method that is used to create a cluster. Valid values are `Normal`,`CloneFromPolarDB`,`CloneFromRDS`,`MigrationFromRDS`,`CreateGdnStandby`,`RecoverFromRecyclebin`,`UpgradeFromPolarDB`. **NOTE:** From version 1.233.0, `creation_option` can be set to `RecoverFromRecyclebin`. From version 1.255.0, `creation_option` can be set to `UpgradeFromPolarDB`. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `CreationOption`.
  /// [dbClusterIpArrays] db_cluster_ip_array defines how users can send requests to your API. See `db_cluster_ip_array` below.
  /// [dbMinorVersion] Database minor version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBMinorVersion`. This parameter takes effect only when `db_type` is MySQL and `db_version` is 8.0.
  /// [dbNodeClass] The db_node_class of cluster node.
  /// [dbNodeCount] Number of the PolarDB cluster nodes, default is 2(Each cluster must contain at least a primary node and a read-only node). Add/remove nodes by modifying this parameter, valid values: [2~16].
  /// [dbNodeId] The ID of the node or node subscript. Node subscript values: 1 to 15.
  /// [dbNodeNum] The number of Standard and Enterprise Edition nodes. Default value: `1` for Standard Edition, `2` for Enterprise Edition. Valid values are `1`, `2`. From version 1.235.0, Valid values for PolarDB for MySQL Standard Edition: `1` to `8`. Valid values for PolarDB for MySQL Enterprise Edition: `1` to `16`.
  /// [dbRevisionVersionLists] (Available since v1.216.0) The db_revision_version_list supports the following:
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
  /// [port] (Available since 1.196.0) PolarDB cluster connection port.
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
  /// [status] (Available since 1.204.1) PolarDB cluster status.
  /// [storagePayType] The billing method of the storage. Valid values `PostPaid`, `PrePaid`.
  /// [storageSpace] Storage space charged by space (monthly package). Unit: GB.
  /// [storageType] The storage type of the cluster. Enterprise storage type values are `PSL5`, `PSL4`. The standard version storage type values are `ESSDPL1`, `ESSDPL2`, `ESSDPL3`, `ESSDPL0`, `ESSDAUTOPL`. The standard version only supports MySQL and PostgreSQL.
  /// [strictConsistency] Whether the cluster has enabled strong data consistency across multiple zones. Valid values are `ON`, `OFF`. Available parameters can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1)
  /// [subCategory] The category of the cluster. Valid values are `Exclusive`, `General`. Only MySQL supports.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetDbRevisionVersionCode] The Version Code of the target version, whose parameter values can be obtained from the [DescribeDBClusterVersion](https://www.alibabacloud.com/help/en/polardb/latest/describedbclusterversion) interface.
  /// [tdeRegion] (Available since 1.200.0) The region where the TDE key resides.
  /// [tdeStatus] turn on TDE encryption. Valid values are `Enabled`, `Disabled`. Default to `Disabled`. TDE cannot be closed after it is turned on.
  /// [upgradeType] Version upgrade type. Valid values are PROXY, DB, ALL. PROXY means upgrading the proxy version, DB means upgrading the db version, ALL means upgrading both db and proxy versions simultaneously.
  /// [vpcId] The id of the VPC.
  /// [vswitchId] The virtual switch ID to launch DB instances in one VPC.
  /// [zoneId] The Zone to launch the DB cluster. it supports multiple zone.
  ClusterState({
    pulumi.Output<String>? allowShutDown,
    pulumi.Output<int>? autoRenewPeriod,
    pulumi.Output<String>? backupRetentionPolicyOnClusterDeletion,
    pulumi.Output<String>? cloneDataPoint,
    pulumi.Output<String>? collectorStatus,
    pulumi.Output<String>? compressStorage,
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? creationCategory,
    pulumi.Output<String>? creationOption,
    pulumi.Output<List<ClusterDbClusterIpArray>>? dbClusterIpArrays,
    pulumi.Output<String>? dbMinorVersion,
    pulumi.Output<String>? dbNodeClass,
    pulumi.Output<int>? dbNodeCount,
    pulumi.Output<String>? dbNodeId,
    pulumi.Output<int>? dbNodeNum,
    pulumi.Output<List<ClusterDbRevisionVersionList>>? dbRevisionVersionLists,
    pulumi.Output<String>? dbType,
    pulumi.Output<String>? dbVersion,
    pulumi.Output<String>? defaultTimeZone,
    pulumi.Output<int>? deletionLock,
    pulumi.Output<String>? description,
    pulumi.Output<String>? encryptNewTables,
    pulumi.Output<String>? encryptionKey,
    pulumi.Output<String>? fromTimeService,
    pulumi.Output<String>? gdnId,
    pulumi.Output<List<String>>? globalSecurityGroupLists,
    pulumi.Output<String>? hotReplicaMode,
    pulumi.Output<String>? hotStandbyCluster,
    pulumi.Output<String>? imciSwitch,
    pulumi.Output<String>? loosePolarLogBin,
    pulumi.Output<String>? looseXengine,
    pulumi.Output<int>? looseXengineUseMemoryPct,
    pulumi.Output<int>? lowerCaseTableNames,
    pulumi.Output<String>? maintainTime,
    pulumi.Output<String>? modifyType,
    pulumi.Output<String>? parameterGroupId,
    pulumi.Output<List<ClusterParameter>>? parameters,
    pulumi.Output<String>? payType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? plannedEndTime,
    pulumi.Output<String>? plannedStartTime,
    pulumi.Output<String>? port,
    pulumi.Output<String>? provisionedIops,
    pulumi.Output<String>? proxyClass,
    pulumi.Output<String>? proxyType,
    pulumi.Output<String>? renewalStatus,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? roleArn,
    pulumi.Output<int>? scaleApRoNumMax,
    pulumi.Output<int>? scaleApRoNumMin,
    pulumi.Output<int>? scaleMax,
    pulumi.Output<int>? scaleMin,
    pulumi.Output<int>? scaleRoNumMax,
    pulumi.Output<int>? scaleRoNumMin,
    pulumi.Output<int>? secondsUntilAutoPause,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<List<String>>? securityIps,
    pulumi.Output<int>? serverlessRuleCpuEnlargeThreshold,
    pulumi.Output<int>? serverlessRuleCpuShrinkThreshold,
    pulumi.Output<String>? serverlessRuleMode,
    pulumi.Output<String>? serverlessSteadySwitch,
    pulumi.Output<String>? serverlessType,
    pulumi.Output<String>? sourceResourceId,
    pulumi.Output<String>? standbyAz,
    pulumi.Output<String>? status,
    pulumi.Output<String>? storagePayType,
    pulumi.Output<int>? storageSpace,
    pulumi.Output<String>? storageType,
    pulumi.Output<String>? strictConsistency,
    pulumi.Output<String>? subCategory,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? targetDbRevisionVersionCode,
    pulumi.Output<String>? tdeRegion,
    pulumi.Output<String>? tdeStatus,
    pulumi.Output<String>? upgradeType,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
  }) :
      allowShutDown = pulumi.Input.asOptionalInput<String>(allowShutDown),
      autoRenewPeriod = pulumi.Input.asOptionalInput<int>(autoRenewPeriod),
      backupRetentionPolicyOnClusterDeletion = pulumi.Input.asOptionalInput<String>(backupRetentionPolicyOnClusterDeletion),
      cloneDataPoint = pulumi.Input.asOptionalInput<String>(cloneDataPoint),
      collectorStatus = pulumi.Input.asOptionalInput<String>(collectorStatus),
      compressStorage = pulumi.Input.asOptionalInput<String>(compressStorage),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      creationCategory = pulumi.Input.asOptionalInput<String>(creationCategory),
      creationOption = pulumi.Input.asOptionalInput<String>(creationOption),
      dbClusterIpArrays = pulumi.Input.asOptionalInput<List<ClusterDbClusterIpArray>>(dbClusterIpArrays),
      dbMinorVersion = pulumi.Input.asOptionalInput<String>(dbMinorVersion),
      dbNodeClass = pulumi.Input.asOptionalInput<String>(dbNodeClass),
      dbNodeCount = pulumi.Input.asOptionalInput<int>(dbNodeCount),
      dbNodeId = pulumi.Input.asOptionalInput<String>(dbNodeId),
      dbNodeNum = pulumi.Input.asOptionalInput<int>(dbNodeNum),
      dbRevisionVersionLists = pulumi.Input.asOptionalInput<List<ClusterDbRevisionVersionList>>(dbRevisionVersionLists),
      dbType = pulumi.Input.asOptionalInput<String>(dbType),
      dbVersion = pulumi.Input.asOptionalInput<String>(dbVersion),
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
      port = pulumi.Input.asOptionalInput<String>(port),
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
      status = pulumi.Input.asOptionalInput<String>(status),
      storagePayType = pulumi.Input.asOptionalInput<String>(storagePayType),
      storageSpace = pulumi.Input.asOptionalInput<int>(storageSpace),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      strictConsistency = pulumi.Input.asOptionalInput<String>(strictConsistency),
      subCategory = pulumi.Input.asOptionalInput<String>(subCategory),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetDbRevisionVersionCode = pulumi.Input.asOptionalInput<String>(targetDbRevisionVersionCode),
      tdeRegion = pulumi.Input.asOptionalInput<String>(tdeRegion),
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
      'connectionString': ?connectionString,
      'createTime': ?createTime,
      'creationCategory': ?creationCategory,
      'creationOption': ?creationOption,
      'dbClusterIpArrays': ?pulumi.Input.mapOptionalInputValue<List<ClusterDbClusterIpArray>, List<Map<String, dynamic>>>(dbClusterIpArrays, (value) => pulumi.Input.encodeList<ClusterDbClusterIpArray, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbMinorVersion': ?dbMinorVersion,
      'dbNodeClass': ?dbNodeClass,
      'dbNodeCount': ?dbNodeCount,
      'dbNodeId': ?dbNodeId,
      'dbNodeNum': ?dbNodeNum,
      'dbRevisionVersionLists': ?pulumi.Input.mapOptionalInputValue<List<ClusterDbRevisionVersionList>, List<Map<String, dynamic>>>(dbRevisionVersionLists, (value) => pulumi.Input.encodeList<ClusterDbRevisionVersionList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbType': ?dbType,
      'dbVersion': ?dbVersion,
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
      'port': ?port,
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
      'status': ?status,
      'storagePayType': ?storagePayType,
      'storageSpace': ?storageSpace,
      'storageType': ?storageType,
      'strictConsistency': ?strictConsistency,
      'subCategory': ?subCategory,
      'tags': ?tags,
      'targetDbRevisionVersionCode': ?targetDbRevisionVersionCode,
      'tdeRegion': ?tdeRegion,
      'tdeStatus': ?tdeStatus,
      'upgradeType': ?upgradeType,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory ClusterState.fromMap(Map<String, dynamic> map) {
    return ClusterState(
      allowShutDown: map['allowShutDown'] == null ? null : pulumi.Output.create<String>(map['allowShutDown'] as String),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : pulumi.Output.create<int>(map['autoRenewPeriod'] as int),
      backupRetentionPolicyOnClusterDeletion: map['backupRetentionPolicyOnClusterDeletion'] == null ? null : pulumi.Output.create<String>(map['backupRetentionPolicyOnClusterDeletion'] as String),
      cloneDataPoint: map['cloneDataPoint'] == null ? null : pulumi.Output.create<String>(map['cloneDataPoint'] as String),
      collectorStatus: map['collectorStatus'] == null ? null : pulumi.Output.create<String>(map['collectorStatus'] as String),
      compressStorage: map['compressStorage'] == null ? null : pulumi.Output.create<String>(map['compressStorage'] as String),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      creationCategory: map['creationCategory'] == null ? null : pulumi.Output.create<String>(map['creationCategory'] as String),
      creationOption: map['creationOption'] == null ? null : pulumi.Output.create<String>(map['creationOption'] as String),
      dbClusterIpArrays: map['dbClusterIpArrays'] == null ? null : pulumi.Output.create<List<ClusterDbClusterIpArray>>(pulumi.Input.decodeList<ClusterDbClusterIpArray>(map['dbClusterIpArrays'], (value) => ClusterDbClusterIpArray.fromMap((value as Map).cast<String, dynamic>()))),
      dbMinorVersion: map['dbMinorVersion'] == null ? null : pulumi.Output.create<String>(map['dbMinorVersion'] as String),
      dbNodeClass: map['dbNodeClass'] == null ? null : pulumi.Output.create<String>(map['dbNodeClass'] as String),
      dbNodeCount: map['dbNodeCount'] == null ? null : pulumi.Output.create<int>(map['dbNodeCount'] as int),
      dbNodeId: map['dbNodeId'] == null ? null : pulumi.Output.create<String>(map['dbNodeId'] as String),
      dbNodeNum: map['dbNodeNum'] == null ? null : pulumi.Output.create<int>(map['dbNodeNum'] as int),
      dbRevisionVersionLists: map['dbRevisionVersionLists'] == null ? null : pulumi.Output.create<List<ClusterDbRevisionVersionList>>(pulumi.Input.decodeList<ClusterDbRevisionVersionList>(map['dbRevisionVersionLists'], (value) => ClusterDbRevisionVersionList.fromMap((value as Map).cast<String, dynamic>()))),
      dbType: map['dbType'] == null ? null : pulumi.Output.create<String>(map['dbType'] as String),
      dbVersion: map['dbVersion'] == null ? null : pulumi.Output.create<String>(map['dbVersion'] as String),
      defaultTimeZone: map['defaultTimeZone'] == null ? null : pulumi.Output.create<String>(map['defaultTimeZone'] as String),
      deletionLock: map['deletionLock'] == null ? null : pulumi.Output.create<int>(map['deletionLock'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptNewTables: map['encryptNewTables'] == null ? null : pulumi.Output.create<String>(map['encryptNewTables'] as String),
      encryptionKey: map['encryptionKey'] == null ? null : pulumi.Output.create<String>(map['encryptionKey'] as String),
      fromTimeService: map['fromTimeService'] == null ? null : pulumi.Output.create<String>(map['fromTimeService'] as String),
      gdnId: map['gdnId'] == null ? null : pulumi.Output.create<String>(map['gdnId'] as String),
      globalSecurityGroupLists: map['globalSecurityGroupLists'] == null ? null : pulumi.Output.create<List<String>>((map['globalSecurityGroupLists'] as List).cast<String>()),
      hotReplicaMode: map['hotReplicaMode'] == null ? null : pulumi.Output.create<String>(map['hotReplicaMode'] as String),
      hotStandbyCluster: map['hotStandbyCluster'] == null ? null : pulumi.Output.create<String>(map['hotStandbyCluster'] as String),
      imciSwitch: map['imciSwitch'] == null ? null : pulumi.Output.create<String>(map['imciSwitch'] as String),
      loosePolarLogBin: map['loosePolarLogBin'] == null ? null : pulumi.Output.create<String>(map['loosePolarLogBin'] as String),
      looseXengine: map['looseXengine'] == null ? null : pulumi.Output.create<String>(map['looseXengine'] as String),
      looseXengineUseMemoryPct: map['looseXengineUseMemoryPct'] == null ? null : pulumi.Output.create<int>(map['looseXengineUseMemoryPct'] as int),
      lowerCaseTableNames: map['lowerCaseTableNames'] == null ? null : pulumi.Output.create<int>(map['lowerCaseTableNames'] as int),
      maintainTime: map['maintainTime'] == null ? null : pulumi.Output.create<String>(map['maintainTime'] as String),
      modifyType: map['modifyType'] == null ? null : pulumi.Output.create<String>(map['modifyType'] as String),
      parameterGroupId: map['parameterGroupId'] == null ? null : pulumi.Output.create<String>(map['parameterGroupId'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<ClusterParameter>>(pulumi.Input.decodeList<ClusterParameter>(map['parameters'], (value) => ClusterParameter.fromMap((value as Map).cast<String, dynamic>()))),
      payType: map['payType'] == null ? null : pulumi.Output.create<String>(map['payType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      plannedEndTime: map['plannedEndTime'] == null ? null : pulumi.Output.create<String>(map['plannedEndTime'] as String),
      plannedStartTime: map['plannedStartTime'] == null ? null : pulumi.Output.create<String>(map['plannedStartTime'] as String),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
      provisionedIops: map['provisionedIops'] == null ? null : pulumi.Output.create<String>(map['provisionedIops'] as String),
      proxyClass: map['proxyClass'] == null ? null : pulumi.Output.create<String>(map['proxyClass'] as String),
      proxyType: map['proxyType'] == null ? null : pulumi.Output.create<String>(map['proxyType'] as String),
      renewalStatus: map['renewalStatus'] == null ? null : pulumi.Output.create<String>(map['renewalStatus'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      scaleApRoNumMax: map['scaleApRoNumMax'] == null ? null : pulumi.Output.create<int>(map['scaleApRoNumMax'] as int),
      scaleApRoNumMin: map['scaleApRoNumMin'] == null ? null : pulumi.Output.create<int>(map['scaleApRoNumMin'] as int),
      scaleMax: map['scaleMax'] == null ? null : pulumi.Output.create<int>(map['scaleMax'] as int),
      scaleMin: map['scaleMin'] == null ? null : pulumi.Output.create<int>(map['scaleMin'] as int),
      scaleRoNumMax: map['scaleRoNumMax'] == null ? null : pulumi.Output.create<int>(map['scaleRoNumMax'] as int),
      scaleRoNumMin: map['scaleRoNumMin'] == null ? null : pulumi.Output.create<int>(map['scaleRoNumMin'] as int),
      secondsUntilAutoPause: map['secondsUntilAutoPause'] == null ? null : pulumi.Output.create<int>(map['secondsUntilAutoPause'] as int),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      securityIps: map['securityIps'] == null ? null : pulumi.Output.create<List<String>>((map['securityIps'] as List).cast<String>()),
      serverlessRuleCpuEnlargeThreshold: map['serverlessRuleCpuEnlargeThreshold'] == null ? null : pulumi.Output.create<int>(map['serverlessRuleCpuEnlargeThreshold'] as int),
      serverlessRuleCpuShrinkThreshold: map['serverlessRuleCpuShrinkThreshold'] == null ? null : pulumi.Output.create<int>(map['serverlessRuleCpuShrinkThreshold'] as int),
      serverlessRuleMode: map['serverlessRuleMode'] == null ? null : pulumi.Output.create<String>(map['serverlessRuleMode'] as String),
      serverlessSteadySwitch: map['serverlessSteadySwitch'] == null ? null : pulumi.Output.create<String>(map['serverlessSteadySwitch'] as String),
      serverlessType: map['serverlessType'] == null ? null : pulumi.Output.create<String>(map['serverlessType'] as String),
      sourceResourceId: map['sourceResourceId'] == null ? null : pulumi.Output.create<String>(map['sourceResourceId'] as String),
      standbyAz: map['standbyAz'] == null ? null : pulumi.Output.create<String>(map['standbyAz'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storagePayType: map['storagePayType'] == null ? null : pulumi.Output.create<String>(map['storagePayType'] as String),
      storageSpace: map['storageSpace'] == null ? null : pulumi.Output.create<int>(map['storageSpace'] as int),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      strictConsistency: map['strictConsistency'] == null ? null : pulumi.Output.create<String>(map['strictConsistency'] as String),
      subCategory: map['subCategory'] == null ? null : pulumi.Output.create<String>(map['subCategory'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetDbRevisionVersionCode: map['targetDbRevisionVersionCode'] == null ? null : pulumi.Output.create<String>(map['targetDbRevisionVersionCode'] as String),
      tdeRegion: map['tdeRegion'] == null ? null : pulumi.Output.create<String>(map['tdeRegion'] as String),
      tdeStatus: map['tdeStatus'] == null ? null : pulumi.Output.create<String>(map['tdeStatus'] as String),
      upgradeType: map['upgradeType'] == null ? null : pulumi.Output.create<String>(map['upgradeType'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

