// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sharding_instance_config_server_list.dart';
import 'sharding_instance_mongo_list.dart';
import 'sharding_instance_parameter.dart';
import 'sharding_instance_shard_list.dart';
import 'sharding_instance_zone_info.dart';

/// Input properties used for looking up and filtering ShardingInstance resources.
class ShardingInstanceState {
  /// Password of the root account. It is a string of 6 to 32 characters and is composed of letters, numbers, and underlines.
  final pulumi.Input<String>? accountPassword;
  /// Auto renew for prepaid. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? autoRenew;
  /// The auto-renewal period. Unit: months. Valid values: `1` to `12`.
  /// > **NOTE:** If `auto_renew` is set to `true`, `auto_renew_duration` must be set.
  final pulumi.Input<int>? autoRenewDuration;
  /// The frequency at which high-frequency backups are created. Valid values: `-1`, `15`, `30`, `60`, `120`, `180`, `240`, `360`, `480`, `720`.
  final pulumi.Input<String>? backupInterval;
  /// MongoDB Instance backup period. It is required when `backup_time` was existed. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]. Default to [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]
  final pulumi.Input<List<String>>? backupPeriods;
  /// The retention period of full backups.
  final pulumi.Input<int>? backupRetentionPeriod;
  /// The backup retention policy configured for the instance. Valid values:
  final pulumi.Input<int>? backupRetentionPolicyOnClusterDeletion;
  /// Sharding Instance backup time. It is required when `backup_period` was existed. In the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. If not set, the system will return a default, like "23:00Z-24:00Z".
  final pulumi.Input<String>? backupTime;
  /// The ID of the encryption key.
  final pulumi.Input<String>? cloudDiskEncryptionKey;
  /// The ConfigServer nodes of the instance. See `config_server_list` below.
  final pulumi.Input<List<ShardingInstanceConfigServerList>>? configServerLists;
  /// Indicates whether release protection is enabled for the instance. Valid values: `true`, `false`.
  final pulumi.Input<bool>? dbInstanceReleaseProtection;
  /// Specifies whether to enable the log backup feature. Valid values:
  /// - `1 `: The log backup feature is enabled.
  final pulumi.Input<int>? enableBackupLog;
  /// Whether to enable cloud disk encryption. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? encrypted;
  /// The ID of the custom key.
  final pulumi.Input<String>? encryptionKey;
  /// The encryption method. **NOTE:** `encryptor_name` is valid only when `tde_status` is set to `enabled`.
  final pulumi.Input<String>? encryptorName;
  /// Database version. Value options can refer to the latest docs [CreateDBInstance](https://www.alibabacloud.com/help/en/doc-detail/61884.htm) `EngineVersion`. **NOTE:** From version 1.225.1, `engine_version` can be modified.
  final pulumi.Input<String>? engineVersion;
  /// Specifies whether to forcibly enable SSL encryption for connections. Valid values:
  final pulumi.Input<String>? forceEncryption;
  /// The list of Global Security Group Ids.
  final pulumi.Input<List<String>>? globalSecurityGroupLists;
  /// Configure the zone where the hidden node is located to deploy multiple zones. **NOTE:** This parameter value cannot be the same as `zone_id` and `secondary_zone_id` parameter values.
  final pulumi.Input<String>? hiddenZoneId;
  /// The billing method of the instance. Default value: `PostPaid`. Valid values: `PrePaid`, `PostPaid`. **NOTE:** It can be modified from `PostPaid` to `PrePaid` after version v1.141.0.
  final pulumi.Input<String>? instanceChargeType;
  /// (Available since v1.271.0) A list of instance keys.
  final pulumi.Input<List<String>>? keyIds;
  /// An KMS encrypts password used to a instance. If the `account_password` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;
  /// The number of days for which log backups are retained. Valid values: `7` to `730`. **NOTE:** `log_backup_retention_period` is valid only when `enable_backup_log` is set to `1`.
  final pulumi.Input<int>? logBackupRetentionPeriod;
  /// The end time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time).
  final pulumi.Input<String>? maintainEndTime;
  /// The start time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time).
  final pulumi.Input<String>? maintainStartTime;
  /// The Mongo nodes of the instance. The mongo-node count can be purchased is in range of [2, 32]. See `mongo_list` below.
  final pulumi.Input<List<ShardingInstanceMongoList>>? mongoLists;
  /// The name of DB instance. It must be 2 to 256 characters in length.
  final pulumi.Input<String>? name;
  /// The network type of the instance. Valid values:`Classic` or `VPC`.
  final pulumi.Input<String>? networkType;
  /// The type of configuration changes performed. Default value: `DOWNGRADE`. Valid values:
  /// - `UPGRADE`: The specifications are upgraded.
  /// - `DOWNGRADE`: The specifications are downgraded.
  /// **NOTE:** `order_type` is only applicable to instances when `instance_charge_type` is `PrePaid`.
  final pulumi.Input<String>? orderType;
  /// Set of parameters needs to be set after mongodb instance was launched. See `parameters` below.
  final pulumi.Input<List<ShardingInstanceParameter>>? parameters;
  /// The duration that you will buy DB instance (in month). It is valid when `instance_charge_type` is `PrePaid`. Default value: `1`. Valid values: [1~9], 12, 24, 36.
  final pulumi.Input<int>? period;
  /// The type of the access protocol. Valid values: `mongodb` or `dynamodb`.
  final pulumi.Input<String>? protocolType;
  /// The provisioned IOPS. Valid values: `0` to `50000`.
  final pulumi.Input<int>? provisionedIops;
  /// The ID of the Resource Group.
  final pulumi.Input<String>? resourceGroupId;
  /// The point in time to which you want to restore the instance. You can specify any point in time within the last seven days. The time must be in the yyyy-MM-ddTHH:mm:ssZ format and in UTC.
  /// > **NOTE:** You must specify `src_db_instance_id` and `restore_time` only when you clone an instance based on a point in time.
  final pulumi.Input<String>? restoreTime;
  /// (Available since v1.42.0) Instance data backup retention days.
  final pulumi.Input<int>? retentionPeriod;
  /// The Alibaba Cloud Resource Name (ARN) of the specified Resource Access Management (RAM) role.
  final pulumi.Input<String>? roleArn;
  /// Configure the available area where the slave node (Secondary node) is located to realize multi-available area deployment. **NOTE:** This parameter value cannot be the same as `zone_id` and `hidden_zone_id` parameter values.
  final pulumi.Input<String>? secondaryZoneId;
  /// The Security Group ID of ECS.
  final pulumi.Input<String>? securityGroupId;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]). System default to `["127.0.0.1"]`.
  final pulumi.Input<List<String>>? securityIpLists;
  /// The Shard nodes of the instance. The shard-node count can be purchased is in range of [2, 32]. See `shard_list` below.
  final pulumi.Input<List<ShardingInstanceShardList>>? shardLists;
  /// The snapshot backup type. Default value: `Standard`. Valid values:
  /// - `Standard`: Standard backup.
  /// - `Flash `: Single-digit second backup.
  final pulumi.Input<String>? snapshotBackupType;
  /// The source instance ID.
  final pulumi.Input<String>? srcDbInstanceId;
  final pulumi.Input<String>? sslAction;
  /// (Available since v1.259.0) The status of the SSL feature.
  final pulumi.Input<String>? sslStatus;
  /// The storage engine of the instance. Default value: `WiredTiger`. Valid values: `WiredTiger`, `RocksDB`.
  final pulumi.Input<String>? storageEngine;
  /// The storage type of the instance. Valid values: `cloud_essd1`, `cloud_essd2`, `cloud_essd3`, `cloud_auto`, `local_ssd`. **NOTE:** From version 1.229.0, `storage_type` can be modified. However, `storage_type` can only be modified to `cloud_auto`.
  final pulumi.Input<String>? storageType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The TDE(Transparent Data Encryption) status. It can be updated from version 1.160.0.
  final pulumi.Input<String>? tdeStatus;
  /// The ID of the VPC. > **NOTE:** `vpc_id` is valid only when `network_type` is set to `VPC`.
  final pulumi.Input<String>? vpcId;
  /// The virtual switch ID to launch DB instances in one VPC.
  final pulumi.Input<String>? vswitchId;
  /// The Zone to launch the DB instance. MongoDB Sharding Instance does not support multiple-zone.
  /// If it is a multi-zone and `vswitch_id` is specified, the vswitch must in one of them.
  final pulumi.Input<String>? zoneId;
  /// (Available since v1.271.0) The information of nodes in the zone.
  final pulumi.Input<List<ShardingInstanceZoneInfo>>? zoneInfos;

  /// Creates a new [ShardingInstanceState].
  /// [accountPassword] Password of the root account. It is a string of 6 to 32 characters and is composed of letters, numbers, and underlines.
  /// [autoRenew] Auto renew for prepaid. Default value: `false`. Valid values: `true`, `false`.
  /// [autoRenewDuration] The auto-renewal period. Unit: months. Valid values: `1` to `12`.
  /// [backupInterval] The frequency at which high-frequency backups are created. Valid values: `-1`, `15`, `30`, `60`, `120`, `180`, `240`, `360`, `480`, `720`.
  /// [backupPeriods] MongoDB Instance backup period. It is required when `backup_time` was existed. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]. Default to [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]
  /// [backupRetentionPeriod] The retention period of full backups.
  /// [backupRetentionPolicyOnClusterDeletion] The backup retention policy configured for the instance. Valid values:
  /// [backupTime] Sharding Instance backup time. It is required when `backup_period` was existed. In the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. If not set, the system will return a default, like "23:00Z-24:00Z".
  /// [cloudDiskEncryptionKey] The ID of the encryption key.
  /// [configServerLists] The ConfigServer nodes of the instance. See `config_server_list` below.
  /// [dbInstanceReleaseProtection] Indicates whether release protection is enabled for the instance. Valid values: `true`, `false`.
  /// [enableBackupLog] Specifies whether to enable the log backup feature. Valid values:
  /// [encrypted] Whether to enable cloud disk encryption. Default value: `false`. Valid values: `true`, `false`.
  /// [encryptionKey] The ID of the custom key.
  /// [encryptorName] The encryption method. **NOTE:** `encryptor_name` is valid only when `tde_status` is set to `enabled`.
  /// [engineVersion] Database version. Value options can refer to the latest docs [CreateDBInstance](https://www.alibabacloud.com/help/en/doc-detail/61884.htm) `EngineVersion`. **NOTE:** From version 1.225.1, `engine_version` can be modified.
  /// [forceEncryption] Specifies whether to forcibly enable SSL encryption for connections. Valid values:
  /// [globalSecurityGroupLists] The list of Global Security Group Ids.
  /// [hiddenZoneId] Configure the zone where the hidden node is located to deploy multiple zones. **NOTE:** This parameter value cannot be the same as `zone_id` and `secondary_zone_id` parameter values.
  /// [instanceChargeType] The billing method of the instance. Default value: `PostPaid`. Valid values: `PrePaid`, `PostPaid`. **NOTE:** It can be modified from `PostPaid` to `PrePaid` after version v1.141.0.
  /// [keyIds] (Available since v1.271.0) A list of instance keys.
  /// [kmsEncryptedPassword] An KMS encrypts password used to a instance. If the `account_password` is filled in, this field will be ignored.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  /// [logBackupRetentionPeriod] The number of days for which log backups are retained. Valid values: `7` to `730`. **NOTE:** `log_backup_retention_period` is valid only when `enable_backup_log` is set to `1`.
  /// [maintainEndTime] The end time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time).
  /// [maintainStartTime] The start time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time).
  /// [mongoLists] The Mongo nodes of the instance. The mongo-node count can be purchased is in range of [2, 32]. See `mongo_list` below.
  /// [name] The name of DB instance. It must be 2 to 256 characters in length.
  /// [networkType] The network type of the instance. Valid values:`Classic` or `VPC`.
  /// [orderType] The type of configuration changes performed. Default value: `DOWNGRADE`. Valid values:
  /// [parameters] Set of parameters needs to be set after mongodb instance was launched. See `parameters` below.
  /// [period] The duration that you will buy DB instance (in month). It is valid when `instance_charge_type` is `PrePaid`. Default value: `1`. Valid values: [1~9], 12, 24, 36.
  /// [protocolType] The type of the access protocol. Valid values: `mongodb` or `dynamodb`.
  /// [provisionedIops] The provisioned IOPS. Valid values: `0` to `50000`.
  /// [resourceGroupId] The ID of the Resource Group.
  /// [restoreTime] The point in time to which you want to restore the instance. You can specify any point in time within the last seven days. The time must be in the yyyy-MM-ddTHH:mm:ssZ format and in UTC.
  /// [retentionPeriod] (Available since v1.42.0) Instance data backup retention days.
  /// [roleArn] The Alibaba Cloud Resource Name (ARN) of the specified Resource Access Management (RAM) role.
  /// [secondaryZoneId] Configure the available area where the slave node (Secondary node) is located to realize multi-available area deployment. **NOTE:** This parameter value cannot be the same as `zone_id` and `hidden_zone_id` parameter values.
  /// [securityGroupId] The Security Group ID of ECS.
  /// [securityIpLists] List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]). System default to `["127.0.0.1"]`.
  /// [shardLists] The Shard nodes of the instance. The shard-node count can be purchased is in range of [2, 32]. See `shard_list` below.
  /// [snapshotBackupType] The snapshot backup type. Default value: `Standard`. Valid values:
  /// [srcDbInstanceId] The source instance ID.
  /// [sslAction] Optional.
  /// [sslStatus] (Available since v1.259.0) The status of the SSL feature.
  /// [storageEngine] The storage engine of the instance. Default value: `WiredTiger`. Valid values: `WiredTiger`, `RocksDB`.
  /// [storageType] The storage type of the instance. Valid values: `cloud_essd1`, `cloud_essd2`, `cloud_essd3`, `cloud_auto`, `local_ssd`. **NOTE:** From version 1.229.0, `storage_type` can be modified. However, `storage_type` can only be modified to `cloud_auto`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tdeStatus] The TDE(Transparent Data Encryption) status. It can be updated from version 1.160.0.
  /// [vpcId] The ID of the VPC. > **NOTE:** `vpc_id` is valid only when `network_type` is set to `VPC`.
  /// [vswitchId] The virtual switch ID to launch DB instances in one VPC.
  /// [zoneId] The Zone to launch the DB instance. MongoDB Sharding Instance does not support multiple-zone.
  /// [zoneInfos] (Available since v1.271.0) The information of nodes in the zone.
  ShardingInstanceState({
    pulumi.Output<String>? accountPassword,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? autoRenewDuration,
    pulumi.Output<String>? backupInterval,
    pulumi.Output<List<String>>? backupPeriods,
    pulumi.Output<int>? backupRetentionPeriod,
    pulumi.Output<int>? backupRetentionPolicyOnClusterDeletion,
    pulumi.Output<String>? backupTime,
    pulumi.Output<String>? cloudDiskEncryptionKey,
    pulumi.Output<List<ShardingInstanceConfigServerList>>? configServerLists,
    pulumi.Output<bool>? dbInstanceReleaseProtection,
    pulumi.Output<int>? enableBackupLog,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<String>? encryptionKey,
    pulumi.Output<String>? encryptorName,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? forceEncryption,
    pulumi.Output<List<String>>? globalSecurityGroupLists,
    pulumi.Output<String>? hiddenZoneId,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<List<String>>? keyIds,
    pulumi.Output<String>? kmsEncryptedPassword,
    pulumi.Output<Map<String, String>>? kmsEncryptionContext,
    pulumi.Output<int>? logBackupRetentionPeriod,
    pulumi.Output<String>? maintainEndTime,
    pulumi.Output<String>? maintainStartTime,
    pulumi.Output<List<ShardingInstanceMongoList>>? mongoLists,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? orderType,
    pulumi.Output<List<ShardingInstanceParameter>>? parameters,
    pulumi.Output<int>? period,
    pulumi.Output<String>? protocolType,
    pulumi.Output<int>? provisionedIops,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? restoreTime,
    pulumi.Output<int>? retentionPeriod,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? secondaryZoneId,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<List<String>>? securityIpLists,
    pulumi.Output<List<ShardingInstanceShardList>>? shardLists,
    pulumi.Output<String>? snapshotBackupType,
    pulumi.Output<String>? srcDbInstanceId,
    pulumi.Output<String>? sslAction,
    pulumi.Output<String>? sslStatus,
    pulumi.Output<String>? storageEngine,
    pulumi.Output<String>? storageType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tdeStatus,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
    pulumi.Output<List<ShardingInstanceZoneInfo>>? zoneInfos,
  }) :
      accountPassword = pulumi.Input.asOptionalInput<String>(accountPassword),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      autoRenewDuration = pulumi.Input.asOptionalInput<int>(autoRenewDuration),
      backupInterval = pulumi.Input.asOptionalInput<String>(backupInterval),
      backupPeriods = pulumi.Input.asOptionalInput<List<String>>(backupPeriods),
      backupRetentionPeriod = pulumi.Input.asOptionalInput<int>(backupRetentionPeriod),
      backupRetentionPolicyOnClusterDeletion = pulumi.Input.asOptionalInput<int>(backupRetentionPolicyOnClusterDeletion),
      backupTime = pulumi.Input.asOptionalInput<String>(backupTime),
      cloudDiskEncryptionKey = pulumi.Input.asOptionalInput<String>(cloudDiskEncryptionKey),
      configServerLists = pulumi.Input.asOptionalInput<List<ShardingInstanceConfigServerList>>(configServerLists),
      dbInstanceReleaseProtection = pulumi.Input.asOptionalInput<bool>(dbInstanceReleaseProtection),
      enableBackupLog = pulumi.Input.asOptionalInput<int>(enableBackupLog),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      encryptionKey = pulumi.Input.asOptionalInput<String>(encryptionKey),
      encryptorName = pulumi.Input.asOptionalInput<String>(encryptorName),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      forceEncryption = pulumi.Input.asOptionalInput<String>(forceEncryption),
      globalSecurityGroupLists = pulumi.Input.asOptionalInput<List<String>>(globalSecurityGroupLists),
      hiddenZoneId = pulumi.Input.asOptionalInput<String>(hiddenZoneId),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      keyIds = pulumi.Input.asOptionalInput<List<String>>(keyIds),
      kmsEncryptedPassword = pulumi.Input.asOptionalInput<String>(kmsEncryptedPassword),
      kmsEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(kmsEncryptionContext),
      logBackupRetentionPeriod = pulumi.Input.asOptionalInput<int>(logBackupRetentionPeriod),
      maintainEndTime = pulumi.Input.asOptionalInput<String>(maintainEndTime),
      maintainStartTime = pulumi.Input.asOptionalInput<String>(maintainStartTime),
      mongoLists = pulumi.Input.asOptionalInput<List<ShardingInstanceMongoList>>(mongoLists),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      orderType = pulumi.Input.asOptionalInput<String>(orderType),
      parameters = pulumi.Input.asOptionalInput<List<ShardingInstanceParameter>>(parameters),
      period = pulumi.Input.asOptionalInput<int>(period),
      protocolType = pulumi.Input.asOptionalInput<String>(protocolType),
      provisionedIops = pulumi.Input.asOptionalInput<int>(provisionedIops),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      restoreTime = pulumi.Input.asOptionalInput<String>(restoreTime),
      retentionPeriod = pulumi.Input.asOptionalInput<int>(retentionPeriod),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      secondaryZoneId = pulumi.Input.asOptionalInput<String>(secondaryZoneId),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      securityIpLists = pulumi.Input.asOptionalInput<List<String>>(securityIpLists),
      shardLists = pulumi.Input.asOptionalInput<List<ShardingInstanceShardList>>(shardLists),
      snapshotBackupType = pulumi.Input.asOptionalInput<String>(snapshotBackupType),
      srcDbInstanceId = pulumi.Input.asOptionalInput<String>(srcDbInstanceId),
      sslAction = pulumi.Input.asOptionalInput<String>(sslAction),
      sslStatus = pulumi.Input.asOptionalInput<String>(sslStatus),
      storageEngine = pulumi.Input.asOptionalInput<String>(storageEngine),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tdeStatus = pulumi.Input.asOptionalInput<String>(tdeStatus),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId),
      zoneInfos = pulumi.Input.asOptionalInput<List<ShardingInstanceZoneInfo>>(zoneInfos);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountPassword': ?accountPassword,
      'autoRenew': ?autoRenew,
      'autoRenewDuration': ?autoRenewDuration,
      'backupInterval': ?backupInterval,
      'backupPeriods': ?backupPeriods,
      'backupRetentionPeriod': ?backupRetentionPeriod,
      'backupRetentionPolicyOnClusterDeletion': ?backupRetentionPolicyOnClusterDeletion,
      'backupTime': ?backupTime,
      'cloudDiskEncryptionKey': ?cloudDiskEncryptionKey,
      'configServerLists': ?pulumi.Input.mapOptionalInputValue<List<ShardingInstanceConfigServerList>, List<Map<String, dynamic>>>(configServerLists, (value) => pulumi.Input.encodeList<ShardingInstanceConfigServerList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dbInstanceReleaseProtection': ?dbInstanceReleaseProtection,
      'enableBackupLog': ?enableBackupLog,
      'encrypted': ?encrypted,
      'encryptionKey': ?encryptionKey,
      'encryptorName': ?encryptorName,
      'engineVersion': ?engineVersion,
      'forceEncryption': ?forceEncryption,
      'globalSecurityGroupLists': ?globalSecurityGroupLists,
      'hiddenZoneId': ?hiddenZoneId,
      'instanceChargeType': ?instanceChargeType,
      'keyIds': ?keyIds,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'logBackupRetentionPeriod': ?logBackupRetentionPeriod,
      'maintainEndTime': ?maintainEndTime,
      'maintainStartTime': ?maintainStartTime,
      'mongoLists': ?pulumi.Input.mapOptionalInputValue<List<ShardingInstanceMongoList>, List<Map<String, dynamic>>>(mongoLists, (value) => pulumi.Input.encodeList<ShardingInstanceMongoList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'networkType': ?networkType,
      'orderType': ?orderType,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ShardingInstanceParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ShardingInstanceParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'period': ?period,
      'protocolType': ?protocolType,
      'provisionedIops': ?provisionedIops,
      'resourceGroupId': ?resourceGroupId,
      'restoreTime': ?restoreTime,
      'retentionPeriod': ?retentionPeriod,
      'roleArn': ?roleArn,
      'secondaryZoneId': ?secondaryZoneId,
      'securityGroupId': ?securityGroupId,
      'securityIpLists': ?securityIpLists,
      'shardLists': ?pulumi.Input.mapOptionalInputValue<List<ShardingInstanceShardList>, List<Map<String, dynamic>>>(shardLists, (value) => pulumi.Input.encodeList<ShardingInstanceShardList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'snapshotBackupType': ?snapshotBackupType,
      'srcDbInstanceId': ?srcDbInstanceId,
      'sslAction': ?sslAction,
      'sslStatus': ?sslStatus,
      'storageEngine': ?storageEngine,
      'storageType': ?storageType,
      'tags': ?tags,
      'tdeStatus': ?tdeStatus,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
      'zoneInfos': ?pulumi.Input.mapOptionalInputValue<List<ShardingInstanceZoneInfo>, List<Map<String, dynamic>>>(zoneInfos, (value) => pulumi.Input.encodeList<ShardingInstanceZoneInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ShardingInstanceState.fromMap(Map<String, dynamic> map) {
    return ShardingInstanceState(
      accountPassword: map['accountPassword'] == null ? null : pulumi.Output.create<String>(map['accountPassword'] as String),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      autoRenewDuration: map['autoRenewDuration'] == null ? null : pulumi.Output.create<int>(map['autoRenewDuration'] as int),
      backupInterval: map['backupInterval'] == null ? null : pulumi.Output.create<String>(map['backupInterval'] as String),
      backupPeriods: map['backupPeriods'] == null ? null : pulumi.Output.create<List<String>>((map['backupPeriods'] as List).cast<String>()),
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['backupRetentionPeriod'] as int),
      backupRetentionPolicyOnClusterDeletion: map['backupRetentionPolicyOnClusterDeletion'] == null ? null : pulumi.Output.create<int>(map['backupRetentionPolicyOnClusterDeletion'] as int),
      backupTime: map['backupTime'] == null ? null : pulumi.Output.create<String>(map['backupTime'] as String),
      cloudDiskEncryptionKey: map['cloudDiskEncryptionKey'] == null ? null : pulumi.Output.create<String>(map['cloudDiskEncryptionKey'] as String),
      configServerLists: map['configServerLists'] == null ? null : pulumi.Output.create<List<ShardingInstanceConfigServerList>>(pulumi.Input.decodeList<ShardingInstanceConfigServerList>(map['configServerLists'], (value) => ShardingInstanceConfigServerList.fromMap((value as Map).cast<String, dynamic>()))),
      dbInstanceReleaseProtection: map['dbInstanceReleaseProtection'] == null ? null : pulumi.Output.create<bool>(map['dbInstanceReleaseProtection'] as bool),
      enableBackupLog: map['enableBackupLog'] == null ? null : pulumi.Output.create<int>(map['enableBackupLog'] as int),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      encryptionKey: map['encryptionKey'] == null ? null : pulumi.Output.create<String>(map['encryptionKey'] as String),
      encryptorName: map['encryptorName'] == null ? null : pulumi.Output.create<String>(map['encryptorName'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      forceEncryption: map['forceEncryption'] == null ? null : pulumi.Output.create<String>(map['forceEncryption'] as String),
      globalSecurityGroupLists: map['globalSecurityGroupLists'] == null ? null : pulumi.Output.create<List<String>>((map['globalSecurityGroupLists'] as List).cast<String>()),
      hiddenZoneId: map['hiddenZoneId'] == null ? null : pulumi.Output.create<String>(map['hiddenZoneId'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      keyIds: map['keyIds'] == null ? null : pulumi.Output.create<List<String>>((map['keyIds'] as List).cast<String>()),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : pulumi.Output.create<String>(map['kmsEncryptedPassword'] as String),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['kmsEncryptionContext'] as Map).cast<String, String>()),
      logBackupRetentionPeriod: map['logBackupRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['logBackupRetentionPeriod'] as int),
      maintainEndTime: map['maintainEndTime'] == null ? null : pulumi.Output.create<String>(map['maintainEndTime'] as String),
      maintainStartTime: map['maintainStartTime'] == null ? null : pulumi.Output.create<String>(map['maintainStartTime'] as String),
      mongoLists: map['mongoLists'] == null ? null : pulumi.Output.create<List<ShardingInstanceMongoList>>(pulumi.Input.decodeList<ShardingInstanceMongoList>(map['mongoLists'], (value) => ShardingInstanceMongoList.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      orderType: map['orderType'] == null ? null : pulumi.Output.create<String>(map['orderType'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<ShardingInstanceParameter>>(pulumi.Input.decodeList<ShardingInstanceParameter>(map['parameters'], (value) => ShardingInstanceParameter.fromMap((value as Map).cast<String, dynamic>()))),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      protocolType: map['protocolType'] == null ? null : pulumi.Output.create<String>(map['protocolType'] as String),
      provisionedIops: map['provisionedIops'] == null ? null : pulumi.Output.create<int>(map['provisionedIops'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      restoreTime: map['restoreTime'] == null ? null : pulumi.Output.create<String>(map['restoreTime'] as String),
      retentionPeriod: map['retentionPeriod'] == null ? null : pulumi.Output.create<int>(map['retentionPeriod'] as int),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      secondaryZoneId: map['secondaryZoneId'] == null ? null : pulumi.Output.create<String>(map['secondaryZoneId'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      securityIpLists: map['securityIpLists'] == null ? null : pulumi.Output.create<List<String>>((map['securityIpLists'] as List).cast<String>()),
      shardLists: map['shardLists'] == null ? null : pulumi.Output.create<List<ShardingInstanceShardList>>(pulumi.Input.decodeList<ShardingInstanceShardList>(map['shardLists'], (value) => ShardingInstanceShardList.fromMap((value as Map).cast<String, dynamic>()))),
      snapshotBackupType: map['snapshotBackupType'] == null ? null : pulumi.Output.create<String>(map['snapshotBackupType'] as String),
      srcDbInstanceId: map['srcDbInstanceId'] == null ? null : pulumi.Output.create<String>(map['srcDbInstanceId'] as String),
      sslAction: map['sslAction'] == null ? null : pulumi.Output.create<String>(map['sslAction'] as String),
      sslStatus: map['sslStatus'] == null ? null : pulumi.Output.create<String>(map['sslStatus'] as String),
      storageEngine: map['storageEngine'] == null ? null : pulumi.Output.create<String>(map['storageEngine'] as String),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tdeStatus: map['tdeStatus'] == null ? null : pulumi.Output.create<String>(map['tdeStatus'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
      zoneInfos: map['zoneInfos'] == null ? null : pulumi.Output.create<List<ShardingInstanceZoneInfo>>(pulumi.Input.decodeList<ShardingInstanceZoneInfo>(map['zoneInfos'], (value) => ShardingInstanceZoneInfo.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

