import 'package:pulumi/pulumi.dart' as pulumi;
import 'tair_instance_args.dart';

/// ## Import
///
/// Tair (Redis OSS-Compatible) And Memcache (KVStore) Tair Instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:redis/tairInstance:TairInstance example <id>
/// ```
class TairInstance extends pulumi.CustomResource {
  /// The architecture of the instance.  cluster, standard, rwsplit.
  late final pulumi.Output<String> architectureType;
  /// Specifies whether to enable auto-renewal for the instance. Default value: false. Valid values: true(enables auto-renewal), false(disables auto-renewal).
  late final pulumi.Output<String?> autoRenew;
  /// The subscription duration that is supported by auto-renewal. Unit: months. Valid values: 1, 2, 3, 6, and 12. This parameter is required only if the AutoRenew parameter is set to true.
  late final pulumi.Output<String?> autoRenewPeriod;
  /// You can set the BackupId parameter to the backup set ID of the source instance. The system uses the data stored in the backup set to create an instance. You can call the DescribeBackups operation to query backup set IDs. If the source instance is a cluster instance, set the BackupId parameter to the backup set IDs of all shards of the source instance, separated by commas (,).
  ///
  /// If your instance is a cloud-native cluster instance, we recommend that you use DescribeClusterBackupList to query the backup set ID of the cluster instance. Then, set the ClusterBackupId request parameter to the backup set ID to clone the cluster instance. This eliminates the need to specify the backup set ID of each shard.
  late final pulumi.Output<String?> backupId;
  /// This parameter is supported for specific new cluster instances. You can query the backup set ID by calling the DescribeClusterBackupList operation. If this parameter is supported, you can specify the backup set ID. In this case, you do not need to specify the BackupId parameter. If this parameter is not supported, set the BackupId parameter to the IDs of backup sets in all shards of the source instance, separated by commas (,).
  late final pulumi.Output<String?> clusterBackupId;
  /// The internal endpoint of the instance.
  late final pulumi.Output<String> connectionDomain;
  /// The prefix of the endpoint the instance, which must consist of lowercase letters and numbers and start with a lowercase letter.
  late final pulumi.Output<String?> connectionStringPrefix;
  /// The time when the instance was created. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time is displayed in UTC.
  late final pulumi.Output<String> createTime;
  /// The time when to change the configurations. Default value: Immediately. Valid values: Immediately (The configurations are immediately changed), MaintainTime (The configurations are changed within the maintenance window).
  late final pulumi.Output<String?> effectiveTime;
  /// Database version. Default value: 1.0.
  ///
  /// Rules for transferring parameters of different tair product types:
  ///
  /// tair_rdb:  Compatible with the Redis5.0 and Redis6.0 protocols, and is transmitted to 5.0 or 6.0.
  ///
  /// tair_scm: The Tair persistent memory is compatible with the Redis6.0 protocol and is passed 1.0.
  ///
  /// tair_essd: The disk (ESSD/SSD) is compatible with the Redis4.0 and Redis6.0 protocols, and is transmitted to 1.0 and 2.0 respectively.
  late final pulumi.Output<String> engineVersion;
  /// Specifies whether to forcefully change the configurations of the instance. Default value: true. Valid values: false (The system does not forcefully change the configurations), true (The system forcefully changes the configurations).
  late final pulumi.Output<bool?> forceUpgrade;
  /// The ID of a distributed (Global Distributed Cache) instance, which indicates whether to use the newly created instance as a sub-instance of a distributed instance. You can use this method to create a distributed instance.
  ///
  /// 1. Enter true if you want the new instance to be the first child instance.
  ///
  /// 2. If you want the new instance to be used as the second and third sub-instances, enter the distributed instance ID.
  ///
  /// 3. Not as a distributed instance, you do not need to enter any values.
  late final pulumi.Output<String?> globalInstanceId;
  /// The instance type of the instance. For more information, see [Instance types](https://www.alibabacloud.com/help/en/apsaradb-for-redis/latest/instance-types).
  late final pulumi.Output<String> instanceClass;
  /// The storage medium of the instance. Valid values: tair_rdb, tair_scm, tair_essd.
  late final pulumi.Output<String> instanceType;
  /// Instance intranet bandwidth
  late final pulumi.Output<int> intranetBandwidth;
  /// The maximum number of connections supported by the instance.
  late final pulumi.Output<int> maxConnections;
  /// The modification method when modifying the IP whitelist. The value includes Cover (default): overwrite the original whitelist; Append: Append the whitelist; Delete: Delete the whitelist.
  late final pulumi.Output<String?> modifyMode;
  /// The network type of the instance.  CLASSIC(classic network), VPC.
  late final pulumi.Output<String> networkType;
  /// The node type. For cloud-native instances, input MASTER_SLAVE (master-replica) or STAND_ALONE (standalone). For classic instances, input double (master-replica) or single (standalone).
  late final pulumi.Output<String> nodeType;
  /// sentinel compatibility mode, applicable to non-cluster instances. For more information about parameters, see yes or no in the https://www.alibabacloud.com/help/en/redis/user-guide/use-the-sentinel-compatible-mode-to-connect-to-an-apsaradb-for-redis-instance, valid values: yes, no. The default value is no.
  late final pulumi.Output<String> paramNoLooseSentinelEnabled;
  /// Whether to allow Sentinel commands to be executed without secrets when Sentinel mode is enabled. Value: yes: enabled. After the command is enabled, you can directly run the Sentinel command in the VPC without enabling the password-free feature. no: the default value, disabled. For parameters, see https://help.aliyun.com/zh/redis/user-guide/use-the-sentinel-compatible-mode-to-connect-to-an-apsaradb-for-redis-instance
  late final pulumi.Output<String> paramNoLooseSentinelPasswordFreeAccess;
  /// After sentinel mode and the# no_loose_sentinel-password-free-access parameter are enabled, you can use this parameter to add additional secret-free command lists (empty by default). After setting, you can execute the corresponding command on any connection without secret, please operate carefully. Commands are written in lowercase letters, and multiple commands are separated by commas (,). See https://help.aliyun.com/zh/redis/user-guide/parameter-support for details
  late final pulumi.Output<String> paramNoLooseSentinelPasswordFreeCommands;
  /// The value is semisync or async. The default value is async.
  ///
  /// The default data synchronization mode is asynchronous replication. To modify the data synchronization mode, refer to https://www.alibabacloud.com/help/en/redis/user-guide/modify-the-synchronization-mode-of-a-persistent-memory-optimized-instance.
  late final pulumi.Output<String> paramReplMode;
  /// The degradation threshold time of the semi-synchronous replication mode. This parameter value is required only when semi-synchronous replication is enabled. The unit is milliseconds, and the range is 10ms to 60000ms. The default value is 500ms. Please refer to: https://www.alibabacloud.com/help/en/redis/user-guide/modify-the-synchronization-mode-of-a-persistent-memory-optimized-instance.
  late final pulumi.Output<String> paramSemisyncReplTimeout;
  /// sentinel compatibility mode, applicable to instances in the cluster architecture proxy connection mode or read/write splitting architecture. For more information about the parameters, see https://www.alibabacloud.com/help/en/redis/user-guide/use-the-sentinel-compatible-mode-to-connect-to-an-apsaradb-for-redis-instance. The value is 0 or 1. The default value is 0.
  late final pulumi.Output<String> paramSentinelCompatEnable;
  /// The password that is used to connect to the instance. The password must be 8 to 32 characters in length and contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include ! @ # $ % ^ & * ( ) _ + - =
  late final pulumi.Output<String?> password;
  /// Payment type: Subscription (prepaid), PayAsYouGo (postpaid). Default Subscription.
  late final pulumi.Output<String> paymentType;
  /// The subscription duration. Unit: months. Valid values: 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24,36, and 60. This parameter is required only if you set the PaymentType parameter to Subscription.
  late final pulumi.Output<int?> period;
  /// The Tair service port. The service port of the instance. Valid values: 1024 to 65535. Default value: 6379.
  late final pulumi.Output<int> port;
  /// Number of read-only nodes in the primary zone. Valid values: 0 to 5. This parameter is only applicable to the following conditions:
  ///
  /// If the instance is in the cloud disk version standard architecture, you can set this parameter to a value greater than 0 to enable the read/write splitting architecture.
  ///
  /// If the instance is a cloud disk version read/write splitting architecture instance, you can use this parameter to customize the number of read-only nodes, or set this parameter to 0 to disable the read/write splitting architecture and switch the instance to the standard architecture.
  late final pulumi.Output<int?> readOnlyCount;
  /// Whether to restore the account, kernel parameters, and whitelist (config) information from the original backup set when creating an instance using a specified backup set. The default value is empty, indicating that the account, kernel parameters, and whitelist information are not restored from the original backup set. This parameter is only applicable to Cloud Native instances, and the account, kernel parameters, and whitelist information must have been saved in the original backup set.
  late final pulumi.Output<String?> recoverConfigMode;
  /// Region Id
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group to which the instance belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// The ID of the secondary zone.This parameter is returned only if the instance is deployed in two zones.
  late final pulumi.Output<String?> secondaryZoneId;
  /// Security group id
  late final pulumi.Output<String?> securityGroupId;
  /// The name of the IP address whitelist. You cannot modify the whitelist that is generated by the system. If you do not specify this parameter, the default whitelist is modified by default.
  late final pulumi.Output<String> securityIpGroupName;
  /// The IP addresses in the whitelist. Up to 1,000 IP addresses can be specified in a whitelist. Separate multiple IP addresses with a comma (,). Specify an IP address in the 0.0.0.0/0, 10.23.12.24, or 10.23.12.24/24 format. In CIDR block 10.23.12.24/24, /24 specifies the length of the prefix of an IP address. The prefix length ranges from 1 to 32.
  late final pulumi.Output<String> securityIps;
  /// The number of data nodes in the instance. When 1 is passed, it means that the instance created is a standard architecture with only one data node. You can create an instance in the standard architecture that contains only a single data node. 2 to 32: You can create an instance in the cluster architecture that contains the specified number of data nodes. Only persistent memory-optimized instances can use the cluster architecture. Therefore, you can set this parameter to an integer from 2 to 32 only if you set the InstanceType parameter to tair_scm. It is not allowed to modify the number of shards by modifying this parameter after creating a master-slave architecture instance with or without passing 1.
  late final pulumi.Output<int> shardCount;
  /// Specifies the number of read-only nodes in the secondary zone when creating a multi-zone read/write splitting instance.
  ///
  /// Note: To create a multi-zone read/write splitting instance, slaveadonlycount and SecondaryZoneId must be specified at the same time.
  late final pulumi.Output<int?> slaveReadOnlyCount;
  /// If you want to create an instance based on the backup set of an existing instance, set this parameter to the ID of the source instance. preceding three parameters. After you specify the SrcDBInstanceId parameter, use the BackupId, ClusterBackupId (recommended for cloud-native cluster instances), or RestoreTime parameter to specify the backup set or the specific point in time that you want to use to create an instance. The SrcDBInstanceId parameter must be used in combination with one of the preceding three parameters.
  late final pulumi.Output<String?> srcDbInstanceId;
  /// Modifies SSL encryption configurations. Valid values: 1. Disable (The SSL encryption is disabled) 2. Enable (The SSL encryption is enabled)  3. Update (The SSL certificate is updated)
  late final pulumi.Output<String> sslEnabled;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The storage type. Valid values: PL1, PL2, and PL3. This parameter is available only when the value of InstanceType is tair_essd, that is, when an ESSD disk instance is selected.
  ///
  /// If the ESSD instance type is 4C, 8C, or 16C, you can specify the storage type as PL1.
  ///
  /// If the type of ESSD instance you select is 8C, 16C, 32C, or 52C, you can specify the storage type as PL2.
  ///
  /// If the ESSD instance type is 16C, 32C, or 52C, you can specify the storage type as PL3.
  late final pulumi.Output<String?> storagePerformanceLevel;
  /// Different specifications have different value ranges. When the instance_type value is tair_essd and the disk type is ESSD, this attribute takes effect and is required. When a Tair disk is an SSD, see-https://help.aliyun.com/zh/redis/product-overview/capacity-storage-type. The capacity field is defined as different fixed values according to different specifications, and does not need to be specified.
  late final pulumi.Output<int> storageSizeGb;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the resource.
  late final pulumi.Output<String> tairInstanceId;
  /// The name of the resource.
  late final pulumi.Output<String?> tairInstanceName;
  /// The VPC authentication mode. Valid values: Open (enables password authentication), Close (disables password authentication and enables [password-free access](https://www.alibabacloud.com/help/en/apsaradb-for-redis/latest/enable-password-free-access)).
  late final pulumi.Output<String> vpcAuthMode;
  /// The ID of the virtual private cloud (VPC).
  late final pulumi.Output<String> vpcId;
  /// The ID of the vSwitch to which the instance is connected.
  late final pulumi.Output<String> vswitchId;
  /// Zone ID
  late final pulumi.Output<String> zoneId;

  /// Creates a new [TairInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TairInstance]. {@macro pulumi_redis_tair_instance_tair_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TairInstance(
    String name, {
    TairInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:redis/tairInstance:TairInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.architectureType = registerOutput<String>('architectureType');
    this.autoRenew = registerOutput<String?>('autoRenew');
    this.autoRenewPeriod = registerOutput<String?>('autoRenewPeriod');
    this.backupId = registerOutput<String?>('backupId');
    this.clusterBackupId = registerOutput<String?>('clusterBackupId');
    this.connectionDomain = registerOutput<String>('connectionDomain');
    this.connectionStringPrefix = registerOutput<String?>('connectionStringPrefix');
    this.createTime = registerOutput<String>('createTime');
    this.effectiveTime = registerOutput<String?>('effectiveTime');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.forceUpgrade = registerOutput<bool?>('forceUpgrade');
    this.globalInstanceId = registerOutput<String?>('globalInstanceId');
    this.instanceClass = registerOutput<String>('instanceClass');
    this.instanceType = registerOutput<String>('instanceType');
    this.intranetBandwidth = registerOutput<int>('intranetBandwidth');
    this.maxConnections = registerOutput<int>('maxConnections');
    this.modifyMode = registerOutput<String?>('modifyMode');
    this.networkType = registerOutput<String>('networkType');
    this.nodeType = registerOutput<String>('nodeType');
    this.paramNoLooseSentinelEnabled = registerOutput<String>('paramNoLooseSentinelEnabled');
    this.paramNoLooseSentinelPasswordFreeAccess = registerOutput<String>('paramNoLooseSentinelPasswordFreeAccess');
    this.paramNoLooseSentinelPasswordFreeCommands = registerOutput<String>('paramNoLooseSentinelPasswordFreeCommands');
    this.paramReplMode = registerOutput<String>('paramReplMode');
    this.paramSemisyncReplTimeout = registerOutput<String>('paramSemisyncReplTimeout');
    this.paramSentinelCompatEnable = registerOutput<String>('paramSentinelCompatEnable');
    this.password = registerOutput<String?>('password');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.port = registerOutput<int>('port');
    this.readOnlyCount = registerOutput<int?>('readOnlyCount');
    this.recoverConfigMode = registerOutput<String?>('recoverConfigMode');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.secondaryZoneId = registerOutput<String?>('secondaryZoneId');
    this.securityGroupId = registerOutput<String?>('securityGroupId');
    this.securityIpGroupName = registerOutput<String>('securityIpGroupName');
    this.securityIps = registerOutput<String>('securityIps');
    this.shardCount = registerOutput<int>('shardCount');
    this.slaveReadOnlyCount = registerOutput<int?>('slaveReadOnlyCount');
    this.srcDbInstanceId = registerOutput<String?>('srcDbInstanceId');
    this.sslEnabled = registerOutput<String>('sslEnabled');
    this.status = registerOutput<String>('status');
    this.storagePerformanceLevel = registerOutput<String?>('storagePerformanceLevel');
    this.storageSizeGb = registerOutput<int>('storageSizeGb');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tairInstanceId = registerOutput<String>('tairInstanceId');
    this.tairInstanceName = registerOutput<String?>('tairInstanceName');
    this.vpcAuthMode = registerOutput<String>('vpcAuthMode');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
