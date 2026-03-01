import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_db_cluster_ip_array.dart';
import 'cluster_db_revision_version_list.dart';
import 'cluster_parameter.dart';

/// ## Import
///
/// PolarDB cluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:polardb/cluster:Cluster example pc-abc12345678
/// ```
class Cluster extends pulumi.CustomResource {
  /// Specifies whether to enable the no-activity suspension feature. Default value: false. Valid values are `true`, `false`. This parameter is valid only for serverless clusters.
  late final pulumi.Output<String> allowShutDown;
  /// Auto-renewal period of an cluster, in the unit of the month. It is valid when pay_type is `PrePaid`. Valid value:1, 2, 3, 6, 12, 24, 36, Default to 1.
  late final pulumi.Output<int?> autoRenewPeriod;
  /// The retention policy for the backup sets when you delete the cluster.  Valid values are `ALL`, `LATEST`, `NONE`. Value options can refer to the latest docs [DeleteDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/deletedbcluster-1)
  late final pulumi.Output<String> backupRetentionPolicyOnClusterDeletion;
  /// The time point of data to be cloned. Valid values are `LATEST`,`BackupID`,`Timestamp`.Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `CloneDataPoint`.
  /// > **NOTE:** If CreationOption is set to CloneFromRDS, the value of this parameter must be `LATEST`. When clone to a historical backup set, you must specify a specific backup set ID. When clone to a specific point in time, specify a YYYY-MM-DDThh:mm:ssZ format UTC timestamp.
  late final pulumi.Output<String?> cloneDataPoint;
  /// Specifies whether to enable or disable SQL data collector. Valid values are `Enable`, `Disabled`.
  late final pulumi.Output<String> collectorStatus;
  /// Enable storage compression function. The value of this parameter is `ON`. Only MySQL supports.
  /// > **NOTE:** When the value of db_type is not MySQL, the value of creation_option is neither empty nor Normal, and the value of storage_type is not PSL4, this field will be ignored.
  late final pulumi.Output<String> compressStorage;
  /// (Available since 1.81.0) PolarDB cluster connection string.
  late final pulumi.Output<String> connectionString;
  /// (Available since 1.204.1) PolarDB cluster creation time.
  late final pulumi.Output<String> createTime;
  /// The edition of the PolarDB service. Valid values are `Normal`,`Basic`,`ArchiveNormal`,`NormalMultimaster`,`SENormal`.Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `CreationCategory`.
  /// > **NOTE:** You can set this parameter to Basic only when DBType is set to MySQL and DBVersion is set to 5.6, 5.7, or 8.0. You can set this parameter to Archive only when DBType is set to MySQL and DBVersion is set to 8.0. From version 1.188.0, `creation_category` can be set to `NormalMultimaster`. From version 1.203.0, `creation_category` can be set to `SENormal`.
  late final pulumi.Output<String> creationCategory;
  /// The method that is used to create a cluster. Valid values are `Normal`,`CloneFromPolarDB`,`CloneFromRDS`,`MigrationFromRDS`,`CreateGdnStandby`,`RecoverFromRecyclebin`,`UpgradeFromPolarDB`. **NOTE:** From version 1.233.0, `creation_option` can be set to `RecoverFromRecyclebin`. From version 1.255.0, `creation_option` can be set to `UpgradeFromPolarDB`. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `CreationOption`.
  /// * > **NOTE:** The default value is Normal. If DBType is set to MySQL and DBVersion is set to 5.6 or 5.7, this parameter can be set to CloneFromRDS or MigrationFromRDS. If DBType is set to MySQL and DBVersion is set to 8.0, this parameter can be set to CreateGdnStandby. If `creation_option` is RecoverFromRecyclebin, you need to pass in the released source PolarDB cluster ID for this parameter. The DBType of the cluster recovered from the recycle bin and the source cluster must be consistent. For example, if the source cluster is MySQL 8.0, the cluster recovered from the recycle bin also needs to have its DBType set to MySQL and DBVersion set to 8.0.
  late final pulumi.Output<String> creationOption;
  /// db_cluster_ip_array defines how users can send requests to your API. See `db_cluster_ip_array` below.
  late final pulumi.Output<List<ClusterDbClusterIpArray>> dbClusterIpArrays;
  /// Database minor version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBMinorVersion`. This parameter takes effect only when `db_type` is MySQL and `db_version` is 8.0.
  late final pulumi.Output<String> dbMinorVersion;
  /// The db_node_class of cluster node.
  /// > **NOTE:** Node specifications are divided into cluster version, single node version and History Library version. They can't change each other, but the general specification and exclusive specification of cluster version can be changed.
  /// From version 1.204.0, If you need to create a Serverless cluster with MySQL , `db_node_class` can be set to `polar.mysql.sl.small` for enterprise edition, and `polar.mysql.sl.small.c` for standard edition.
  /// From version 1.229.1, If you need to create a Serverless cluster with PostgreSQL, `db_node_class` can be set to `polar.pg.sl.small` for enterprise edition, and `polar.pg.sl.small.c` for standard edition. Region can refer to the latest docs(https://help.aliyun.com/zh/polardb/polardb-for-postgresql/the-public-preview-of-polardb-for-postgresql-serverless-ends?spm=a2c4g.11186623.0.0.2e9f6cf0B4rIfC).
  late final pulumi.Output<String> dbNodeClass;
  /// Number of the PolarDB cluster nodes, default is 2(Each cluster must contain at least a primary node and a read-only node). Add/remove nodes by modifying this parameter, valid values: [2~16].
  /// > **NOTE:** To avoid adding or removing multiple read-only nodes by mistake, the system allows you to add or remove one read-only node at a time.
  late final pulumi.Output<int> dbNodeCount;
  /// The ID of the node or node subscript. Node subscript values: 1 to 15.
  late final pulumi.Output<String?> dbNodeId;
  /// The number of Standard and Enterprise Edition nodes. Default value: `1` for Standard Edition, `2` for Enterprise Edition. Valid values are `1`, `2`. From version 1.235.0, Valid values for PolarDB for MySQL Standard Edition: `1` to `8`. Valid values for PolarDB for MySQL Enterprise Edition: `1` to `16`.
  /// > **NOTE:** This parameter only takes effect on creation. To further manage target db node number, please refer to parameter `db_node_count`.
  late final pulumi.Output<int?> dbNodeNum;
  /// (Available since v1.216.0) The db_revision_version_list supports the following:
  late final pulumi.Output<List<ClusterDbRevisionVersionList>> dbRevisionVersionLists;
  /// Database type. Value options: MySQL, Oracle, PostgreSQL.
  late final pulumi.Output<String> dbType;
  /// Database version. Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `DBVersion`.
  late final pulumi.Output<String> dbVersion;
  /// The time zone of the cluster. You can set the parameter to a value that is on the hour from -12:00 to +13:00 based on UTC. Example: 00:00. Default value: SYSTEM. This value indicates that the time zone of the cluster is the same as the time zone of the region.
  /// > **NOTE:** This parameter is valid only when the DBType parameter is set to MySQL.
  late final pulumi.Output<String> defaultTimeZone;
  /// turn on table deletion_lock. Valid values are 0, 1. 1 means to open the cluster protection lock, 0 means to close the cluster protection lock
  /// > **NOTE:**  Cannot modify after created when `pay_type` is `PrePaid` .`deletion_lock` the cluster protection lock can be turned on or off when `pay_type` is `PostPaid`.
  late final pulumi.Output<int?> deletionLock;
  /// The description of cluster.
  late final pulumi.Output<String> description;
  /// turn on table auto encryption. Valid values are `ON`, `OFF`. Only MySQL 8.0 supports.
  /// > **NOTE:** `encrypt_new_tables` Polardb MySQL 8.0 cluster, after TDE and Automatic Encryption are enabled, all newly created tables are automatically encrypted in the cluster.
  late final pulumi.Output<String?> encryptNewTables;
  /// The ID of the custom key. `encryption_key` cannot be modified after TDE is opened.
  late final pulumi.Output<String?> encryptionKey;
  /// Immediate or scheduled kernel version upgrade. Valid values are `true`, `false`. True means immediate execution, False means scheduled execution.
  late final pulumi.Output<String?> fromTimeService;
  /// The ID of the global database network (GDN).
  /// > **NOTE:** This parameter is required if CreationOption is set to CreateGdnStandby.
  late final pulumi.Output<String?> gdnId;
  /// The list of global security ip group ids.
  late final pulumi.Output<List<String>?> globalSecurityGroupLists;
  /// Indicates whether the hot standby feature is enabled. Valid values are `ON`, `OFF`. Only MySQL supports.
  late final pulumi.Output<String> hotReplicaMode;
  /// Whether to enable the hot standby cluster. Valid values are `ON`, `OFF`, `EQUAL`.
  /// > **NOTE:** From version 1.249.0, `hot_standby_cluster` can be set to `EQUAL`, and this value is only valid for MySQL.
  late final pulumi.Output<String> hotStandbyCluster;
  /// Specifies whether to enable the In-Memory Column Index (IMCI) feature. Valid values are `ON`, `OFF`.
  /// > **NOTE:**  Only polardb MySQL Cluster version is available. The cluster with minor version number of 8.0.1 supports the column index feature, and the specific kernel version must be 8.0.1.1.22 or above.
  /// > **NOTE:**  The single node, the single node version of the history library, and the cluster version of the history library do not support column save indexes.
  late final pulumi.Output<String> imciSwitch;
  /// Enable the Binlog function. Default value: `OFF`. Valid values are `OFF`, `ON`.
  /// > **NOTE:** This parameter is valid only MySQL Engine supports.
  late final pulumi.Output<String> loosePolarLogBin;
  /// Specifies whether to enable X-Engine. Valid values are `ON`, `OFF`.
  /// > **NOTE:** This parameter takes effect only if you do not set `creation_option` to CreateGdnStandby and you set `db_type` to MySQL and `db_version` to 8.0. To enable X-Engine on a node, make sure that the memory of the node is greater than or equal to 8 GB in size.
  late final pulumi.Output<String> looseXengine;
  /// Set the ratio to enable the X-Engine storage engine. Valid values: 10 to 90.
  /// > **NOTE:** When the parameter `loose_xengine` is ON, `loose_xengine_use_memory_pct` takes effect.
  late final pulumi.Output<int> looseXengineUseMemoryPct;
  /// Specifies whether the table names are case-sensitive. Default value: `1`.  Valid values are `1`, `0`.
  /// > **NOTE:** This parameter is valid only when the DBType parameter is set to MySQL.
  late final pulumi.Output<int> lowerCaseTableNames;
  /// Maintainable time period format of the instance: HH:MMZ-HH:MMZ (UTC time)
  late final pulumi.Output<String> maintainTime;
  /// Use as `db_node_class` change class, define upgrade or downgrade. Valid values are `Upgrade`, `Downgrade`, Default to `Upgrade`.
  late final pulumi.Output<String?> modifyType;
  /// The ID of the parameter template
  /// > **NOTE:** You can call the [DescribeParameterGroups](https://www.alibabacloud.com/help/en/polardb/latest/describeparametergroups) operation to query the details of all parameter templates of a specified region, such as the ID of a parameter template.
  late final pulumi.Output<String?> parameterGroupId;
  /// Set of parameters needs to be set after DB cluster was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/en/polardb/latest/modifydbclusterparameters) .See `parameters` below.
  late final pulumi.Output<List<ClusterParameter>> parameters;
  /// Valid values are `PrePaid`, `PostPaid`, Default to `PostPaid`.
  late final pulumi.Output<String?> payType;
  /// The duration that you will buy DB cluster (in month). It is valid when pay_type is `PrePaid`. Valid values: [1~9], 12, 24, 36.
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  late final pulumi.Output<int?> period;
  /// The latest time to start executing the target scheduled task. The format is YYYY-MM-DDThh: mm: ssZ (UTC).
  /// > **NOTE:** The latest time must be 30 minutes or more later than the start time. If PlannedStartTime is set but this parameter is not specified, the latest time to execute the target task defaults to the start time+30 minutes. For example, when the PlannedStartTime is set to 2021-01-14T09:00:00Z and this parameter is left blank, the target task will start executing at the latest on 2021-01-14T09:30:00Z.
  late final pulumi.Output<String?> plannedEndTime;
  /// The earliest time to start executing a scheduled (i.e. within the target time period) kernel version upgrade task. The format is YYYY-MM-DDThh: mm: ssZ (UTC).
  /// > **NOTE:** The starting time range is any time point within the next 24 hours. For example, the current time is 2021-01-14T09:00:00Z, and the allowed start time range for filling in here is 2021-01-14T09:00:00Z~2021-01-15T09:00:00Z. If this parameter is left blank, the kernel version upgrade task will be executed immediately by default.
  late final pulumi.Output<String?> plannedStartTime;
  /// (Available since 1.196.0) PolarDB cluster connection port.
  late final pulumi.Output<String> port;
  /// The provisioned read/write IOPS of the ESSD AutoPL disk. Valid values: 0 to min{50,000, 1,000 × Capacity - Baseline IOPS}. Baseline IOPS = min{1,800 + 50 × Capacity, 50,000}.
  /// > **NOTE:** This parameter is available only if the StorageType parameter is set to ESSDAUTOPL.
  late final pulumi.Output<String> provisionedIops;
  /// The specifications of the Standard Edition PolarProxy. Available parameters can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1)
  /// > **NOTE:** This parameter is valid only for standard edition clusters.
  late final pulumi.Output<String?> proxyClass;
  /// The type of PolarProxy. Valid values are `EXCLUSIVE` `GENERAL`.
  /// > **NOTE:** This parameter is valid for both standard and enterprise clusters.
  late final pulumi.Output<String?> proxyType;
  /// Valid values are `AutoRenewal`, `Normal`, `NotRenewal`, Default to `NotRenewal`.
  late final pulumi.Output<String?> renewalStatus;
  /// The ID of resource group which the PolarDB cluster belongs. If not specified, then it belongs to the default resource group.
  /// > **NOTE:** From version 1.250.0, `resource_group_id` can be modified.
  late final pulumi.Output<String> resourceGroupId;
  /// The Alibaba Cloud Resource Name (ARN) of the RAM role. A RAM role is a virtual identity that you can create within your Alibaba Cloud account. For more information see [RAM role overview](https://www.alibabacloud.com/help/en/resource-access-management/latest/ram-role-overview).
  late final pulumi.Output<String> roleArn;
  /// Number of Read-only Columnar Nodes. Valid values: 0 to 7. This parameter is valid only for serverless clusters. This parameter is required when there are column nodes that support steady-state serverless.
  late final pulumi.Output<int> scaleApRoNumMax;
  /// Number of Read-only Columnar Nodes. Valid values: 0 to 7. This parameter is valid only for serverless clusters. This parameter is required when there are column nodes that support steady-state serverless.
  late final pulumi.Output<int> scaleApRoNumMin;
  /// The maximum number of PCUs per node for scaling. Valid values: 1 PCU to 32 PCUs when serverless_type is `AgileServerless` and 0 PCU to 8 PCUs when serverless_type is `SteadyServerless`. This parameter is valid only for serverless clusters.
  late final pulumi.Output<int?> scaleMax;
  /// The minimum number of PCUs per node for scaling. Valid values: 1 PCU to 31 PCUs when serverless_type is `AgileServerless` and 0 PCU to 8 PCUs when serverless_type is `SteadyServerless`. This parameter is valid only for serverless clusters.
  late final pulumi.Output<int?> scaleMin;
  /// The maximum number of read-only nodes for scaling. Valid values: 0 to 15 when serverless_type is `AgileServerless` and 0 to 7 when serverless_type is `SteadyServerless`. This parameter is valid only for serverless clusters.
  late final pulumi.Output<int?> scaleRoNumMax;
  /// The minimum number of read-only nodes for scaling. Valid values: 0 to 15 when serverless_type is `AgileServerless` and 0 to 7 when serverless_type is `SteadyServerless`. This parameter is valid only for serverless clusters.
  late final pulumi.Output<int?> scaleRoNumMin;
  /// The detection period for No-activity Suspension. Valid values: 300 to 86,4005. Unit: seconds. The detection duration must be a multiple of 300 seconds. This parameter is valid only for serverless clusters.
  late final pulumi.Output<int> secondsUntilAutoPause;
  /// The ID of the security group. Separate multiple security groups with commas (,). You can add a maximum of three security groups to a cluster.
  /// > **NOTE:** Because of data backup and migration, change DB cluster type and storage would cost 15~20 minutes. Please make full preparation before changing them.
  late final pulumi.Output<List<String>> securityGroupIds;
  /// This attribute has been deprecated from v1.130.0 and using `db_cluster_ip_array` sub-element `security_ips` instead.
  /// Its value is same as `db_cluster_ip_array` sub-element `security_ips` value and its db_cluster_ip_array_name is "default".
  late final pulumi.Output<List<String>> securityIps;
  /// CPU upscale threshold. Valid values: 40 to 100. This parameter is valid only for serverless clusters.
  /// > **NOTE:** `serverless_rule_cpu_enlarge_threshold` should be at least 30 greater than `serverless_rule_cpu_shrink_threshold`.
  late final pulumi.Output<int> serverlessRuleCpuEnlargeThreshold;
  /// CPU downscale threshold. Valid values: 10 to 100. This parameter is valid only for serverless clusters.
  late final pulumi.Output<int> serverlessRuleCpuShrinkThreshold;
  /// Elasticity sensitivity. Valid values: `normal` for standard and `flexible` for sensitive. This parameter is valid only for serverless clusters.
  late final pulumi.Output<String> serverlessRuleMode;
  /// Serverless steady-state switch. Valid values are `ON`, `OFF`. This parameter is valid only for serverless clusters.
  /// > **NOTE:** When serverless_steady_switch is `ON` and serverless_type is `SteadyServerless`, parameters `scale_min`, `scale_max`, `scale_ro_num_min` and `scale_ro_num_max` are all required.
  late final pulumi.Output<String?> serverlessSteadySwitch;
  /// The type of the serverless cluster. Valid values `AgileServerless`, `SteadyServerless`. This parameter is valid only for serverless clusters.
  late final pulumi.Output<String?> serverlessType;
  /// The ID of the source RDS instance or the ID of the source PolarDB cluster. This parameter is required only when CreationOption is set to MigrationFromRDS, CloneFromRDS, or CloneFromPolarDB.Value options can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1) `SourceResourceId`.
  late final pulumi.Output<String?> sourceResourceId;
  /// The availability zone where the hot standby cluster is stored, takes effect when `hot_standby_cluster` is `ON` or `EQUAL`.
  /// > **NOTE:** `standby_az` is required when `hot_standby_cluster` is `EQUAL`.
  late final pulumi.Output<String> standbyAz;
  /// (Available since 1.204.1) PolarDB cluster status.
  late final pulumi.Output<String> status;
  /// The billing method of the storage. Valid values `PostPaid`, `PrePaid`.
  late final pulumi.Output<String> storagePayType;
  /// Storage space charged by space (monthly package). Unit: GB.
  /// > **NOTE:**  Valid values for PolarDB for MySQL Standard Edition: 20 to 32000. It is valid when pay_type are `PrePaid` ,`PostPaid`.
  /// > **NOTE:**  Valid values for PolarDB for MySQL Enterprise Edition: 50 to 100000.It is valid when pay_type is `PrePaid`.
  late final pulumi.Output<int> storageSpace;
  /// The storage type of the cluster. Enterprise storage type values are `PSL5`, `PSL4`. The standard version storage type values are `ESSDPL1`, `ESSDPL2`, `ESSDPL3`, `ESSDPL0`, `ESSDAUTOPL`. The standard version only supports MySQL and PostgreSQL.
  late final pulumi.Output<String> storageType;
  /// Whether the cluster has enabled strong data consistency across multiple zones. Valid values are `ON`, `OFF`. Available parameters can refer to the latest docs [CreateDBCluster](https://www.alibabacloud.com/help/en/polardb/latest/createdbcluster-1)
  late final pulumi.Output<String> strictConsistency;
  /// The category of the cluster. Valid values are `Exclusive`, `General`. Only MySQL supports.
  late final pulumi.Output<String> subCategory;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The Version Code of the target version, whose parameter values can be obtained from the [DescribeDBClusterVersion](https://www.alibabacloud.com/help/en/polardb/latest/describedbclusterversion) interface.
  late final pulumi.Output<String?> targetDbRevisionVersionCode;
  /// (Available since 1.200.0) The region where the TDE key resides.
  /// > **NOTE:** TDE can be enabled on clusters that have joined a global database network (GDN). After TDE is enabled on the primary cluster in a GDN, TDE is enabled on the secondary clusters in the GDN by default. The key used by the secondary clusters and the region for the key resides must be the same as the primary cluster. The region of the key cannot be modified.
  /// > **NOTE:** You cannot enable TDE for the secondary clusters in a GDN. Used to view user KMS activation status.
  late final pulumi.Output<String> tdeRegion;
  /// turn on TDE encryption. Valid values are `Enabled`, `Disabled`. Default to `Disabled`. TDE cannot be closed after it is turned on.
  /// > **NOTE:** `tde_status` Cannot modify after created when `db_type` is `PostgreSQL` or `Oracle`.`tde_status` only support modification from `Disabled` to `Enabled` when `db_type` is `MySQL`.
  late final pulumi.Output<String?> tdeStatus;
  /// Version upgrade type. Valid values are PROXY, DB, ALL. PROXY means upgrading the proxy version, DB means upgrading the db version, ALL means upgrading both db and proxy versions simultaneously.
  late final pulumi.Output<String?> upgradeType;
  /// The id of the VPC.
  late final pulumi.Output<String> vpcId;
  /// The virtual switch ID to launch DB instances in one VPC.
  /// > **NOTE:** If vswitch_id is not specified, system will get a vswitch belongs to the user automatically.
  late final pulumi.Output<String> vswitchId;
  /// The Zone to launch the DB cluster. it supports multiple zone.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_polardb_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:polardb/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowShutDown = registerOutput<String>('allowShutDown');
    this.autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    this.backupRetentionPolicyOnClusterDeletion = registerOutput<String>('backupRetentionPolicyOnClusterDeletion');
    this.cloneDataPoint = registerOutput<String?>('cloneDataPoint');
    this.collectorStatus = registerOutput<String>('collectorStatus');
    this.compressStorage = registerOutput<String>('compressStorage');
    this.connectionString = registerOutput<String>('connectionString');
    this.createTime = registerOutput<String>('createTime');
    this.creationCategory = registerOutput<String>('creationCategory');
    this.creationOption = registerOutput<String>('creationOption');
    this.dbClusterIpArrays = registerOutput<List<ClusterDbClusterIpArray>>('dbClusterIpArrays');
    this.dbMinorVersion = registerOutput<String>('dbMinorVersion');
    this.dbNodeClass = registerOutput<String>('dbNodeClass');
    this.dbNodeCount = registerOutput<int>('dbNodeCount');
    this.dbNodeId = registerOutput<String?>('dbNodeId');
    this.dbNodeNum = registerOutput<int?>('dbNodeNum');
    this.dbRevisionVersionLists = registerOutput<List<ClusterDbRevisionVersionList>>('dbRevisionVersionLists');
    this.dbType = registerOutput<String>('dbType');
    this.dbVersion = registerOutput<String>('dbVersion');
    this.defaultTimeZone = registerOutput<String>('defaultTimeZone');
    this.deletionLock = registerOutput<int?>('deletionLock');
    this.description = registerOutput<String>('description');
    this.encryptNewTables = registerOutput<String?>('encryptNewTables');
    this.encryptionKey = registerOutput<String?>('encryptionKey');
    this.fromTimeService = registerOutput<String?>('fromTimeService');
    this.gdnId = registerOutput<String?>('gdnId');
    this.globalSecurityGroupLists = registerOutput<List<String>?>('globalSecurityGroupLists');
    this.hotReplicaMode = registerOutput<String>('hotReplicaMode');
    this.hotStandbyCluster = registerOutput<String>('hotStandbyCluster');
    this.imciSwitch = registerOutput<String>('imciSwitch');
    this.loosePolarLogBin = registerOutput<String>('loosePolarLogBin');
    this.looseXengine = registerOutput<String>('looseXengine');
    this.looseXengineUseMemoryPct = registerOutput<int>('looseXengineUseMemoryPct');
    this.lowerCaseTableNames = registerOutput<int>('lowerCaseTableNames');
    this.maintainTime = registerOutput<String>('maintainTime');
    this.modifyType = registerOutput<String?>('modifyType');
    this.parameterGroupId = registerOutput<String?>('parameterGroupId');
    this.parameters = registerOutput<List<ClusterParameter>>('parameters');
    this.payType = registerOutput<String?>('payType');
    this.period = registerOutput<int?>('period');
    this.plannedEndTime = registerOutput<String?>('plannedEndTime');
    this.plannedStartTime = registerOutput<String?>('plannedStartTime');
    this.port = registerOutput<String>('port');
    this.provisionedIops = registerOutput<String>('provisionedIops');
    this.proxyClass = registerOutput<String?>('proxyClass');
    this.proxyType = registerOutput<String?>('proxyType');
    this.renewalStatus = registerOutput<String?>('renewalStatus');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.roleArn = registerOutput<String>('roleArn');
    this.scaleApRoNumMax = registerOutput<int>('scaleApRoNumMax');
    this.scaleApRoNumMin = registerOutput<int>('scaleApRoNumMin');
    this.scaleMax = registerOutput<int?>('scaleMax');
    this.scaleMin = registerOutput<int?>('scaleMin');
    this.scaleRoNumMax = registerOutput<int?>('scaleRoNumMax');
    this.scaleRoNumMin = registerOutput<int?>('scaleRoNumMin');
    this.secondsUntilAutoPause = registerOutput<int>('secondsUntilAutoPause');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.securityIps = registerOutput<List<String>>('securityIps');
    this.serverlessRuleCpuEnlargeThreshold = registerOutput<int>('serverlessRuleCpuEnlargeThreshold');
    this.serverlessRuleCpuShrinkThreshold = registerOutput<int>('serverlessRuleCpuShrinkThreshold');
    this.serverlessRuleMode = registerOutput<String>('serverlessRuleMode');
    this.serverlessSteadySwitch = registerOutput<String?>('serverlessSteadySwitch');
    this.serverlessType = registerOutput<String?>('serverlessType');
    this.sourceResourceId = registerOutput<String?>('sourceResourceId');
    this.standbyAz = registerOutput<String>('standbyAz');
    this.status = registerOutput<String>('status');
    this.storagePayType = registerOutput<String>('storagePayType');
    this.storageSpace = registerOutput<int>('storageSpace');
    this.storageType = registerOutput<String>('storageType');
    this.strictConsistency = registerOutput<String>('strictConsistency');
    this.subCategory = registerOutput<String>('subCategory');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targetDbRevisionVersionCode = registerOutput<String?>('targetDbRevisionVersionCode');
    this.tdeRegion = registerOutput<String>('tdeRegion');
    this.tdeStatus = registerOutput<String?>('tdeStatus');
    this.upgradeType = registerOutput<String?>('upgradeType');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
