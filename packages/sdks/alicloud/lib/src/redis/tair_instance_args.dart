// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redis_tair_instance_tair_instance_args_doc}
/// The set of arguments for TairInstance.
/// {@endtemplate}
/// {@macro pulumi_redis_tair_instance_tair_instance_args_doc}
class TairInstanceArgs {
  /// Specifies whether to enable auto-renewal for the instance. Default value: false. Valid values: true(enables auto-renewal), false(disables auto-renewal).
  final pulumi.Input<String>? autoRenew;
  /// The subscription duration that is supported by auto-renewal. Unit: months. Valid values: 1, 2, 3, 6, and 12. This parameter is required only if the AutoRenew parameter is set to true.
  final pulumi.Input<String>? autoRenewPeriod;
  /// You can set the BackupId parameter to the backup set ID of the source instance. The system uses the data stored in the backup set to create an instance. You can call the DescribeBackups operation to query backup set IDs. If the source instance is a cluster instance, set the BackupId parameter to the backup set IDs of all shards of the source instance, separated by commas (,).
  ///
  /// If your instance is a cloud-native cluster instance, we recommend that you use DescribeClusterBackupList to query the backup set ID of the cluster instance. Then, set the ClusterBackupId request parameter to the backup set ID to clone the cluster instance. This eliminates the need to specify the backup set ID of each shard.
  final pulumi.Input<String>? backupId;
  /// This parameter is supported for specific new cluster instances. You can query the backup set ID by calling the DescribeClusterBackupList operation. If this parameter is supported, you can specify the backup set ID. In this case, you do not need to specify the BackupId parameter. If this parameter is not supported, set the BackupId parameter to the IDs of backup sets in all shards of the source instance, separated by commas (,).
  final pulumi.Input<String>? clusterBackupId;
  /// The prefix of the endpoint the instance, which must consist of lowercase letters and numbers and start with a lowercase letter.
  final pulumi.Input<String>? connectionStringPrefix;
  /// The time when to change the configurations. Default value: Immediately. Valid values: Immediately (The configurations are immediately changed), MaintainTime (The configurations are changed within the maintenance window).
  final pulumi.Input<String>? effectiveTime;
  /// Database version. Default value: 1.0.
  ///
  /// Rules for transferring parameters of different tair product types:
  ///
  /// tair_rdb:  Compatible with the Redis5.0 and Redis6.0 protocols, and is transmitted to 5.0 or 6.0.
  ///
  /// tair_scm: The Tair persistent memory is compatible with the Redis6.0 protocol and is passed 1.0.
  ///
  /// tair_essd: The disk (ESSD/SSD) is compatible with the Redis4.0 and Redis6.0 protocols, and is transmitted to 1.0 and 2.0 respectively.
  final pulumi.Input<String>? engineVersion;
  /// Specifies whether to forcefully change the configurations of the instance. Default value: true. Valid values: false (The system does not forcefully change the configurations), true (The system forcefully changes the configurations).
  final pulumi.Input<bool>? forceUpgrade;
  /// The ID of a distributed (Global Distributed Cache) instance, which indicates whether to use the newly created instance as a sub-instance of a distributed instance. You can use this method to create a distributed instance.
  ///
  /// 1. Enter true if you want the new instance to be the first child instance.
  ///
  /// 2. If you want the new instance to be used as the second and third sub-instances, enter the distributed instance ID.
  ///
  /// 3. Not as a distributed instance, you do not need to enter any values.
  final pulumi.Input<String>? globalInstanceId;
  /// The instance type of the instance. For more information, see [Instance types](https://www.alibabacloud.com/help/en/apsaradb-for-redis/latest/instance-types).
  final pulumi.Input<String> instanceClass;
  /// The storage medium of the instance. Valid values: tair_rdb, tair_scm, tair_essd.
  final pulumi.Input<String> instanceType;
  /// Instance intranet bandwidth
  final pulumi.Input<int>? intranetBandwidth;
  /// The modification method when modifying the IP whitelist. The value includes Cover (default): overwrite the original whitelist; Append: Append the whitelist; Delete: Delete the whitelist.
  final pulumi.Input<String>? modifyMode;
  /// The node type. For cloud-native instances, input MASTER_SLAVE (master-replica) or STAND_ALONE (standalone). For classic instances, input double (master-replica) or single (standalone).
  final pulumi.Input<String>? nodeType;
  /// sentinel compatibility mode, applicable to non-cluster instances. For more information about parameters, see yes or no in the https://www.alibabacloud.com/help/en/redis/user-guide/use-the-sentinel-compatible-mode-to-connect-to-an-apsaradb-for-redis-instance, valid values: yes, no. The default value is no.
  final pulumi.Input<String>? paramNoLooseSentinelEnabled;
  /// Whether to allow Sentinel commands to be executed without secrets when Sentinel mode is enabled. Value: yes: enabled. After the command is enabled, you can directly run the Sentinel command in the VPC without enabling the password-free feature. no: the default value, disabled. For parameters, see https://help.aliyun.com/zh/redis/user-guide/use-the-sentinel-compatible-mode-to-connect-to-an-apsaradb-for-redis-instance
  final pulumi.Input<String>? paramNoLooseSentinelPasswordFreeAccess;
  /// After sentinel mode and the# no_loose_sentinel-password-free-access parameter are enabled, you can use this parameter to add additional secret-free command lists (empty by default). After setting, you can execute the corresponding command on any connection without secret, please operate carefully. Commands are written in lowercase letters, and multiple commands are separated by commas (,). See https://help.aliyun.com/zh/redis/user-guide/parameter-support for details
  final pulumi.Input<String>? paramNoLooseSentinelPasswordFreeCommands;
  /// The value is semisync or async. The default value is async.
  ///
  /// The default data synchronization mode is asynchronous replication. To modify the data synchronization mode, refer to https://www.alibabacloud.com/help/en/redis/user-guide/modify-the-synchronization-mode-of-a-persistent-memory-optimized-instance.
  final pulumi.Input<String>? paramReplMode;
  /// The degradation threshold time of the semi-synchronous replication mode. This parameter value is required only when semi-synchronous replication is enabled. The unit is milliseconds, and the range is 10ms to 60000ms. The default value is 500ms. Please refer to: https://www.alibabacloud.com/help/en/redis/user-guide/modify-the-synchronization-mode-of-a-persistent-memory-optimized-instance.
  final pulumi.Input<String>? paramSemisyncReplTimeout;
  /// sentinel compatibility mode, applicable to instances in the cluster architecture proxy connection mode or read/write splitting architecture. For more information about the parameters, see https://www.alibabacloud.com/help/en/redis/user-guide/use-the-sentinel-compatible-mode-to-connect-to-an-apsaradb-for-redis-instance. The value is 0 or 1. The default value is 0.
  final pulumi.Input<String>? paramSentinelCompatEnable;
  /// The password that is used to connect to the instance. The password must be 8 to 32 characters in length and contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include ! @ # $ % ^ & * ( ) _ + - =
  final pulumi.Input<String>? password;
  /// Payment type: Subscription (prepaid), PayAsYouGo (postpaid). Default Subscription.
  final pulumi.Input<String>? paymentType;
  /// The subscription duration. Unit: months. Valid values: 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24,36, and 60. This parameter is required only if you set the PaymentType parameter to Subscription.
  final pulumi.Input<int>? period;
  /// The Tair service port. The service port of the instance. Valid values: 1024 to 65535. Default value: 6379.
  final pulumi.Input<int>? port;
  /// Number of read-only nodes in the primary zone. Valid values: 0 to 5. This parameter is only applicable to the following conditions:
  ///
  /// If the instance is in the cloud disk version standard architecture, you can set this parameter to a value greater than 0 to enable the read/write splitting architecture.
  ///
  /// If the instance is a cloud disk version read/write splitting architecture instance, you can use this parameter to customize the number of read-only nodes, or set this parameter to 0 to disable the read/write splitting architecture and switch the instance to the standard architecture.
  final pulumi.Input<int>? readOnlyCount;
  /// Whether to restore the account, kernel parameters, and whitelist (config) information from the original backup set when creating an instance using a specified backup set. The default value is empty, indicating that the account, kernel parameters, and whitelist information are not restored from the original backup set. This parameter is only applicable to Cloud Native instances, and the account, kernel parameters, and whitelist information must have been saved in the original backup set.
  final pulumi.Input<String>? recoverConfigMode;
  /// The ID of the resource group to which the instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The ID of the secondary zone.This parameter is returned only if the instance is deployed in two zones.
  final pulumi.Input<String>? secondaryZoneId;
  /// Security group id
  final pulumi.Input<String>? securityGroupId;
  /// The name of the IP address whitelist. You cannot modify the whitelist that is generated by the system. If you do not specify this parameter, the default whitelist is modified by default.
  final pulumi.Input<String>? securityIpGroupName;
  /// The IP addresses in the whitelist. Up to 1,000 IP addresses can be specified in a whitelist. Separate multiple IP addresses with a comma (,). Specify an IP address in the 0.0.0.0/0, 10.23.12.24, or 10.23.12.24/24 format. In CIDR block 10.23.12.24/24, /24 specifies the length of the prefix of an IP address. The prefix length ranges from 1 to 32.
  final pulumi.Input<String>? securityIps;
  /// The number of data nodes in the instance. When 1 is passed, it means that the instance created is a standard architecture with only one data node. You can create an instance in the standard architecture that contains only a single data node. 2 to 32: You can create an instance in the cluster architecture that contains the specified number of data nodes. Only persistent memory-optimized instances can use the cluster architecture. Therefore, you can set this parameter to an integer from 2 to 32 only if you set the InstanceType parameter to tair_scm. It is not allowed to modify the number of shards by modifying this parameter after creating a master-slave architecture instance with or without passing 1.
  final pulumi.Input<int>? shardCount;
  /// Specifies the number of read-only nodes in the secondary zone when creating a multi-zone read/write splitting instance.
  ///
  /// Note: To create a multi-zone read/write splitting instance, slaveadonlycount and SecondaryZoneId must be specified at the same time.
  final pulumi.Input<int>? slaveReadOnlyCount;
  /// If you want to create an instance based on the backup set of an existing instance, set this parameter to the ID of the source instance. preceding three parameters. After you specify the SrcDBInstanceId parameter, use the BackupId, ClusterBackupId (recommended for cloud-native cluster instances), or RestoreTime parameter to specify the backup set or the specific point in time that you want to use to create an instance. The SrcDBInstanceId parameter must be used in combination with one of the preceding three parameters.
  final pulumi.Input<String>? srcDbInstanceId;
  /// Modifies SSL encryption configurations. Valid values: 1. Disable (The SSL encryption is disabled) 2. Enable (The SSL encryption is enabled)  3. Update (The SSL certificate is updated)
  final pulumi.Input<String>? sslEnabled;
  /// The storage type. Valid values: PL1, PL2, and PL3. This parameter is available only when the value of InstanceType is tair_essd, that is, when an ESSD disk instance is selected.
  ///
  /// If the ESSD instance type is 4C, 8C, or 16C, you can specify the storage type as PL1.
  ///
  /// If the type of ESSD instance you select is 8C, 16C, 32C, or 52C, you can specify the storage type as PL2.
  ///
  /// If the ESSD instance type is 16C, 32C, or 52C, you can specify the storage type as PL3.
  final pulumi.Input<String>? storagePerformanceLevel;
  /// Different specifications have different value ranges. When the instance_type value is tair_essd and the disk type is ESSD, this attribute takes effect and is required. When a Tair disk is an SSD, see-https://help.aliyun.com/zh/redis/product-overview/capacity-storage-type. The capacity field is defined as different fixed values according to different specifications, and does not need to be specified.
  final pulumi.Input<int>? storageSizeGb;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the resource.
  final pulumi.Input<String>? tairInstanceName;
  /// The VPC authentication mode. Valid values: Open (enables password authentication), Close (disables password authentication and enables [password-free access](https://www.alibabacloud.com/help/en/apsaradb-for-redis/latest/enable-password-free-access)).
  final pulumi.Input<String>? vpcAuthMode;
  /// The ID of the virtual private cloud (VPC).
  final pulumi.Input<String> vpcId;
  /// The ID of the vSwitch to which the instance is connected.
  final pulumi.Input<String> vswitchId;
  /// Zone ID
  final pulumi.Input<String> zoneId;

  /// Creates a new [TairInstanceArgs].
  /// [autoRenew] Specifies whether to enable auto-renewal for the instance. Default value: false. Valid values: true(enables auto-renewal), false(disables auto-renewal).
  /// [autoRenewPeriod] The subscription duration that is supported by auto-renewal. Unit: months. Valid values: 1, 2, 3, 6, and 12. This parameter is required only if the AutoRenew parameter is set to true.
  /// [backupId] You can set the BackupId parameter to the backup set ID of the source instance. The system uses the data stored in the backup set to create an instance. You can call the DescribeBackups operation to query backup set IDs. If the source instance is a cluster instance, set the BackupId parameter to the backup set IDs of all shards of the source instance, separated by commas (,).
  /// [clusterBackupId] This parameter is supported for specific new cluster instances. You can query the backup set ID by calling the DescribeClusterBackupList operation. If this parameter is supported, you can specify the backup set ID. In this case, you do not need to specify the BackupId parameter. If this parameter is not supported, set the BackupId parameter to the IDs of backup sets in all shards of the source instance, separated by commas (,).
  /// [connectionStringPrefix] The prefix of the endpoint the instance, which must consist of lowercase letters and numbers and start with a lowercase letter.
  /// [effectiveTime] The time when to change the configurations. Default value: Immediately. Valid values: Immediately (The configurations are immediately changed), MaintainTime (The configurations are changed within the maintenance window).
  /// [engineVersion] Database version. Default value: 1.0.
  /// [forceUpgrade] Specifies whether to forcefully change the configurations of the instance. Default value: true. Valid values: false (The system does not forcefully change the configurations), true (The system forcefully changes the configurations).
  /// [globalInstanceId] The ID of a distributed (Global Distributed Cache) instance, which indicates whether to use the newly created instance as a sub-instance of a distributed instance. You can use this method to create a distributed instance.
  /// [instanceClass] The instance type of the instance. For more information, see [Instance types](https://www.alibabacloud.com/help/en/apsaradb-for-redis/latest/instance-types).
  /// [instanceType] The storage medium of the instance. Valid values: tair_rdb, tair_scm, tair_essd.
  /// [intranetBandwidth] Instance intranet bandwidth
  /// [modifyMode] The modification method when modifying the IP whitelist. The value includes Cover (default): overwrite the original whitelist; Append: Append the whitelist; Delete: Delete the whitelist.
  /// [nodeType] The node type. For cloud-native instances, input MASTER_SLAVE (master-replica) or STAND_ALONE (standalone). For classic instances, input double (master-replica) or single (standalone).
  /// [paramNoLooseSentinelEnabled] sentinel compatibility mode, applicable to non-cluster instances. For more information about parameters, see yes or no in the https://www.alibabacloud.com/help/en/redis/user-guide/use-the-sentinel-compatible-mode-to-connect-to-an-apsaradb-for-redis-instance, valid values: yes, no. The default value is no.
  /// [paramNoLooseSentinelPasswordFreeAccess] Whether to allow Sentinel commands to be executed without secrets when Sentinel mode is enabled. Value: yes: enabled. After the command is enabled, you can directly run the Sentinel command in the VPC without enabling the password-free feature. no: the default value, disabled. For parameters, see https://help.aliyun.com/zh/redis/user-guide/use-the-sentinel-compatible-mode-to-connect-to-an-apsaradb-for-redis-instance
  /// [paramNoLooseSentinelPasswordFreeCommands] After sentinel mode and the# no_loose_sentinel-password-free-access parameter are enabled, you can use this parameter to add additional secret-free command lists (empty by default). After setting, you can execute the corresponding command on any connection without secret, please operate carefully. Commands are written in lowercase letters, and multiple commands are separated by commas (,). See https://help.aliyun.com/zh/redis/user-guide/parameter-support for details
  /// [paramReplMode] The value is semisync or async. The default value is async.
  /// [paramSemisyncReplTimeout] The degradation threshold time of the semi-synchronous replication mode. This parameter value is required only when semi-synchronous replication is enabled. The unit is milliseconds, and the range is 10ms to 60000ms. The default value is 500ms. Please refer to: https://www.alibabacloud.com/help/en/redis/user-guide/modify-the-synchronization-mode-of-a-persistent-memory-optimized-instance.
  /// [paramSentinelCompatEnable] sentinel compatibility mode, applicable to instances in the cluster architecture proxy connection mode or read/write splitting architecture. For more information about the parameters, see https://www.alibabacloud.com/help/en/redis/user-guide/use-the-sentinel-compatible-mode-to-connect-to-an-apsaradb-for-redis-instance. The value is 0 or 1. The default value is 0.
  /// [password] The password that is used to connect to the instance. The password must be 8 to 32 characters in length and contain at least three of the following character types: uppercase letters, lowercase letters, digits, and special characters. Special characters include ! @ # $ % ^ & * ( ) _ + - =
  /// [paymentType] Payment type: Subscription (prepaid), PayAsYouGo (postpaid). Default Subscription.
  /// [period] The subscription duration. Unit: months. Valid values: 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24,36, and 60. This parameter is required only if you set the PaymentType parameter to Subscription.
  /// [port] The Tair service port. The service port of the instance. Valid values: 1024 to 65535. Default value: 6379.
  /// [readOnlyCount] Number of read-only nodes in the primary zone. Valid values: 0 to 5. This parameter is only applicable to the following conditions:
  /// [recoverConfigMode] Whether to restore the account, kernel parameters, and whitelist (config) information from the original backup set when creating an instance using a specified backup set. The default value is empty, indicating that the account, kernel parameters, and whitelist information are not restored from the original backup set. This parameter is only applicable to Cloud Native instances, and the account, kernel parameters, and whitelist information must have been saved in the original backup set.
  /// [resourceGroupId] The ID of the resource group to which the instance belongs.
  /// [secondaryZoneId] The ID of the secondary zone.This parameter is returned only if the instance is deployed in two zones.
  /// [securityGroupId] Security group id
  /// [securityIpGroupName] The name of the IP address whitelist. You cannot modify the whitelist that is generated by the system. If you do not specify this parameter, the default whitelist is modified by default.
  /// [securityIps] The IP addresses in the whitelist. Up to 1,000 IP addresses can be specified in a whitelist. Separate multiple IP addresses with a comma (,). Specify an IP address in the 0.0.0.0/0, 10.23.12.24, or 10.23.12.24/24 format. In CIDR block 10.23.12.24/24, /24 specifies the length of the prefix of an IP address. The prefix length ranges from 1 to 32.
  /// [shardCount] The number of data nodes in the instance. When 1 is passed, it means that the instance created is a standard architecture with only one data node. You can create an instance in the standard architecture that contains only a single data node. 2 to 32: You can create an instance in the cluster architecture that contains the specified number of data nodes. Only persistent memory-optimized instances can use the cluster architecture. Therefore, you can set this parameter to an integer from 2 to 32 only if you set the InstanceType parameter to tair_scm. It is not allowed to modify the number of shards by modifying this parameter after creating a master-slave architecture instance with or without passing 1.
  /// [slaveReadOnlyCount] Specifies the number of read-only nodes in the secondary zone when creating a multi-zone read/write splitting instance.
  /// [srcDbInstanceId] If you want to create an instance based on the backup set of an existing instance, set this parameter to the ID of the source instance. preceding three parameters. After you specify the SrcDBInstanceId parameter, use the BackupId, ClusterBackupId (recommended for cloud-native cluster instances), or RestoreTime parameter to specify the backup set or the specific point in time that you want to use to create an instance. The SrcDBInstanceId parameter must be used in combination with one of the preceding three parameters.
  /// [sslEnabled] Modifies SSL encryption configurations. Valid values: 1. Disable (The SSL encryption is disabled) 2. Enable (The SSL encryption is enabled)  3. Update (The SSL certificate is updated)
  /// [storagePerformanceLevel] The storage type. Valid values: PL1, PL2, and PL3. This parameter is available only when the value of InstanceType is tair_essd, that is, when an ESSD disk instance is selected.
  /// [storageSizeGb] Different specifications have different value ranges. When the instance_type value is tair_essd and the disk type is ESSD, this attribute takes effect and is required. When a Tair disk is an SSD, see-https://help.aliyun.com/zh/redis/product-overview/capacity-storage-type. The capacity field is defined as different fixed values according to different specifications, and does not need to be specified.
  /// [tags] The tag of the resource
  /// [tairInstanceName] The name of the resource.
  /// [vpcAuthMode] The VPC authentication mode. Valid values: Open (enables password authentication), Close (disables password authentication and enables [password-free access](https://www.alibabacloud.com/help/en/apsaradb-for-redis/latest/enable-password-free-access)).
  /// [vpcId] The ID of the virtual private cloud (VPC).
  /// [vswitchId] The ID of the vSwitch to which the instance is connected.
  /// [zoneId] Zone ID
  TairInstanceArgs({
    this.autoRenew,
    this.autoRenewPeriod,
    this.backupId,
    this.clusterBackupId,
    this.connectionStringPrefix,
    this.effectiveTime,
    this.engineVersion,
    this.forceUpgrade,
    this.globalInstanceId,
    required this.instanceClass,
    required this.instanceType,
    this.intranetBandwidth,
    this.modifyMode,
    this.nodeType,
    this.paramNoLooseSentinelEnabled,
    this.paramNoLooseSentinelPasswordFreeAccess,
    this.paramNoLooseSentinelPasswordFreeCommands,
    this.paramReplMode,
    this.paramSemisyncReplTimeout,
    this.paramSentinelCompatEnable,
    this.password,
    this.paymentType,
    this.period,
    this.port,
    this.readOnlyCount,
    this.recoverConfigMode,
    this.resourceGroupId,
    this.secondaryZoneId,
    this.securityGroupId,
    this.securityIpGroupName,
    this.securityIps,
    this.shardCount,
    this.slaveReadOnlyCount,
    this.srcDbInstanceId,
    this.sslEnabled,
    this.storagePerformanceLevel,
    this.storageSizeGb,
    this.tags,
    this.tairInstanceName,
    this.vpcAuthMode,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'backupId': ?backupId,
      'clusterBackupId': ?clusterBackupId,
      'connectionStringPrefix': ?connectionStringPrefix,
      'effectiveTime': ?effectiveTime,
      'engineVersion': ?engineVersion,
      'forceUpgrade': ?forceUpgrade,
      'globalInstanceId': ?globalInstanceId,
      'instanceClass': instanceClass,
      'instanceType': instanceType,
      'intranetBandwidth': ?intranetBandwidth,
      'modifyMode': ?modifyMode,
      'nodeType': ?nodeType,
      'paramNoLooseSentinelEnabled': ?paramNoLooseSentinelEnabled,
      'paramNoLooseSentinelPasswordFreeAccess': ?paramNoLooseSentinelPasswordFreeAccess,
      'paramNoLooseSentinelPasswordFreeCommands': ?paramNoLooseSentinelPasswordFreeCommands,
      'paramReplMode': ?paramReplMode,
      'paramSemisyncReplTimeout': ?paramSemisyncReplTimeout,
      'paramSentinelCompatEnable': ?paramSentinelCompatEnable,
      'password': ?password,
      'paymentType': ?paymentType,
      'period': ?period,
      'port': ?port,
      'readOnlyCount': ?readOnlyCount,
      'recoverConfigMode': ?recoverConfigMode,
      'resourceGroupId': ?resourceGroupId,
      'secondaryZoneId': ?secondaryZoneId,
      'securityGroupId': ?securityGroupId,
      'securityIpGroupName': ?securityIpGroupName,
      'securityIps': ?securityIps,
      'shardCount': ?shardCount,
      'slaveReadOnlyCount': ?slaveReadOnlyCount,
      'srcDbInstanceId': ?srcDbInstanceId,
      'sslEnabled': ?sslEnabled,
      'storagePerformanceLevel': ?storagePerformanceLevel,
      'storageSizeGb': ?storageSizeGb,
      'tags': ?tags,
      'tairInstanceName': ?tairInstanceName,
      'vpcAuthMode': ?vpcAuthMode,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory TairInstanceArgs.fromMap(Map<String, dynamic> map) {
    return TairInstanceArgs(
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as String).input(),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : (map['autoRenewPeriod'] as String).input(),
      backupId: map['backupId'] == null ? null : (map['backupId'] as String).input(),
      clusterBackupId: map['clusterBackupId'] == null ? null : (map['clusterBackupId'] as String).input(),
      connectionStringPrefix: map['connectionStringPrefix'] == null ? null : (map['connectionStringPrefix'] as String).input(),
      effectiveTime: map['effectiveTime'] == null ? null : (map['effectiveTime'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      forceUpgrade: map['forceUpgrade'] == null ? null : (map['forceUpgrade'] as bool).input(),
      globalInstanceId: map['globalInstanceId'] == null ? null : (map['globalInstanceId'] as String).input(),
      instanceClass: (map['instanceClass'] as String).input(),
      instanceType: (map['instanceType'] as String).input(),
      intranetBandwidth: map['intranetBandwidth'] == null ? null : (map['intranetBandwidth'] as int).input(),
      modifyMode: map['modifyMode'] == null ? null : (map['modifyMode'] as String).input(),
      nodeType: map['nodeType'] == null ? null : (map['nodeType'] as String).input(),
      paramNoLooseSentinelEnabled: map['paramNoLooseSentinelEnabled'] == null ? null : (map['paramNoLooseSentinelEnabled'] as String).input(),
      paramNoLooseSentinelPasswordFreeAccess: map['paramNoLooseSentinelPasswordFreeAccess'] == null ? null : (map['paramNoLooseSentinelPasswordFreeAccess'] as String).input(),
      paramNoLooseSentinelPasswordFreeCommands: map['paramNoLooseSentinelPasswordFreeCommands'] == null ? null : (map['paramNoLooseSentinelPasswordFreeCommands'] as String).input(),
      paramReplMode: map['paramReplMode'] == null ? null : (map['paramReplMode'] as String).input(),
      paramSemisyncReplTimeout: map['paramSemisyncReplTimeout'] == null ? null : (map['paramSemisyncReplTimeout'] as String).input(),
      paramSentinelCompatEnable: map['paramSentinelCompatEnable'] == null ? null : (map['paramSentinelCompatEnable'] as String).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      readOnlyCount: map['readOnlyCount'] == null ? null : (map['readOnlyCount'] as int).input(),
      recoverConfigMode: map['recoverConfigMode'] == null ? null : (map['recoverConfigMode'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      secondaryZoneId: map['secondaryZoneId'] == null ? null : (map['secondaryZoneId'] as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      securityIpGroupName: map['securityIpGroupName'] == null ? null : (map['securityIpGroupName'] as String).input(),
      securityIps: map['securityIps'] == null ? null : (map['securityIps'] as String).input(),
      shardCount: map['shardCount'] == null ? null : (map['shardCount'] as int).input(),
      slaveReadOnlyCount: map['slaveReadOnlyCount'] == null ? null : (map['slaveReadOnlyCount'] as int).input(),
      srcDbInstanceId: map['srcDbInstanceId'] == null ? null : (map['srcDbInstanceId'] as String).input(),
      sslEnabled: map['sslEnabled'] == null ? null : (map['sslEnabled'] as String).input(),
      storagePerformanceLevel: map['storagePerformanceLevel'] == null ? null : (map['storagePerformanceLevel'] as String).input(),
      storageSizeGb: map['storageSizeGb'] == null ? null : (map['storageSizeGb'] as int).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tairInstanceName: map['tairInstanceName'] == null ? null : (map['tairInstanceName'] as String).input(),
      vpcAuthMode: map['vpcAuthMode'] == null ? null : (map['vpcAuthMode'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

