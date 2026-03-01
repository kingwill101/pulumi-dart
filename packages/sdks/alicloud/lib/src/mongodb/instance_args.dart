// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_parameter.dart';

/// {@template pulumi_mongodb_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_mongodb_instance_instance_args_doc}
class InstanceArgs {
  /// Password of the root account. It is a string of 6 to 32 characters and is composed of letters, numbers, and underlines.
  final pulumi.Input<String>? accountPassword;
  /// Auto renew for prepaid. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? autoRenew;
  /// The auto-renewal period. Unit: months. Valid values: `1` to `12`.
  /// > **NOTE:** If `auto_renew` is set to `true`, `auto_renew_duration` must be set.
  final pulumi.Input<int>? autoRenewDuration;
  /// The frequency at which high-frequency backups are created. Valid values: `-1`, `15`, `30`, `60`, `120`, `180`, `240`, `360`, `480`, `720`.
  final pulumi.Input<String>? backupInterval;
  /// MongoDB Instance backup period. It is required when `backup_time` was existed. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]. Default to [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday].
  final pulumi.Input<List<String>>? backupPeriods;
  /// The retention period of full backups.
  final pulumi.Input<int>? backupRetentionPeriod;
  /// The backup retention policy configured for the instance. Valid values:
  final pulumi.Input<int>? backupRetentionPolicyOnClusterDeletion;
  /// MongoDB instance backup time. It is required when `backup_period` was existed. In the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. If not set, the system will return a default, like "23:00Z-24:00Z".
  final pulumi.Input<String>? backupTime;
  /// The ID of the encryption key.
  final pulumi.Input<String>? cloudDiskEncryptionKey;
  /// Instance specification. see [Instance specifications](https://www.alibabacloud.com/help/doc-detail/57141.htm).
  final pulumi.Input<String> dbInstanceClass;
  /// Indicates whether release protection is enabled for the instance. Valid values: `true`, `false`.
  final pulumi.Input<bool>? dbInstanceReleaseProtection;
  /// User-defined DB instance storage space.Unit: GB. Value range:
  /// - Custom storage space.
  /// - 10-GB increments.
  final pulumi.Input<int> dbInstanceStorage;
  /// The time when the changed configurations take effect. Valid values: `Immediately`, `MaintainTime`.
  final pulumi.Input<String>? effectiveTime;
  /// Specifies whether to enable the log backup feature. Valid values:
  final pulumi.Input<int>? enableBackupLog;
  /// Whether to enable cloud disk encryption. Default value: `false`. Valid values: `true`, `false`.
  final pulumi.Input<bool>? encrypted;
  /// The ID of the custom key.
  final pulumi.Input<String>? encryptionKey;
  /// The encryption method. **NOTE:** `encryptor_name` is valid only when `tde_status` is set to `enabled`.
  final pulumi.Input<String>? encryptorName;
  /// Database version. Value options can refer to the latest docs [CreateDBInstance](https://www.alibabacloud.com/help/doc-detail/61763.htm) `EngineVersion`. **NOTE:** From version 1.225.0, `engine_version` can be modified.
  final pulumi.Input<String> engineVersion;
  /// Specifies whether to forcibly enable SSL encryption for connections. Valid values:
  final pulumi.Input<String>? forceEncryption;
  /// The list of Global Security Group Ids.
  final pulumi.Input<List<String>>? globalSecurityGroupLists;
  /// Configure the zone where the hidden node is located to deploy multiple zones. **NOTE:** This parameter value cannot be the same as `zone_id` and `secondary_zone_id` parameter values. From version 1.253.0, `hidden_zone_id` can be modified.
  final pulumi.Input<String>? hiddenZoneId;
  /// The billing method of the instance. Default value: `PostPaid`. Valid values: `PrePaid`, `PostPaid`. **NOTE:** It can be modified from `PostPaid` to `PrePaid` after version 1.63.0.
  final pulumi.Input<String>? instanceChargeType;
  /// An KMS encrypts password used to a instance. If the `account_password` is filled in, this field will be ignored.
  final pulumi.Input<String>? kmsEncryptedPassword;
  /// An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  final pulumi.Input<Map<String, String>>? kmsEncryptionContext;
  /// The number of days for which log backups are retained. Valid values: `7` to `730`. **NOTE:** `log_backup_retention_period` is valid only when `enable_backup_log` is set to `1`.
  final pulumi.Input<int>? logBackupRetentionPeriod;
  /// The end time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time).
  /// > **NOTE:** The start time to the end time must be 1 hour. For example, the MaintainStartTime is 01:00Z, then the MaintainEndTime must be 02:00Z.
  final pulumi.Input<String>? maintainEndTime;
  /// The start time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time).
  final pulumi.Input<String>? maintainStartTime;
  /// The name of DB instance. It must be 2 to 256 characters in length.
  final pulumi.Input<String>? name;
  /// The network type of the instance. Valid values: `VPC`.
  /// > **NOTE:** From 2022.2.21, `network_type` cannot be set to `Classic`. For more information, see[Product Notification](https://www.alibabacloud.com/help/en/mongodb/product-overview/eol-notice-for-apsaradb-for-mongodb-instances-in-the-classic-network)
  final pulumi.Input<String>? networkType;
  /// The type of configuration changes performed. Default value: `DOWNGRADE`. Valid values:
  /// - `UPGRADE`: The specifications are upgraded.
  /// - `DOWNGRADE`: The specifications are downgraded.
  /// > **NOTE:** `order_type` is only applicable to instances when `instance_charge_type` is `PrePaid`.
  final pulumi.Input<String>? orderType;
  /// Set of parameters needs to be set after mongodb instance was launched. See `parameters` below.
  final pulumi.Input<List<InstanceParameter>>? parameters;
  /// The duration that you will buy DB instance (in month). It is valid when `instance_charge_type` is `PrePaid`. Default value: `1`. Valid values: [1~9], 12, 24, 36.
  final pulumi.Input<int>? period;
  /// The provisioned IOPS. Valid values: `0` to `50000`.
  final pulumi.Input<int>? provisionedIops;
  /// The number of read-only nodes in the replica set instance. Default value: 0. Valid values: 0 to 5.
  final pulumi.Input<int>? readonlyReplicas;
  /// Number of replica set nodes. Valid values: `1`, `3`, `5`, `7`.
  final pulumi.Input<int>? replicationFactor;
  /// The ID of the Resource Group.
  final pulumi.Input<String>? resourceGroupId;
  /// The point in time to which you want to restore the instance. You can specify any point in time within the last seven days. The time must be in the yyyy-MM-ddTHH:mm:ssZ format and in UTC.
  /// > **NOTE:** You must specify `src_db_instance_id` and `restore_time` only when you clone an instance based on a point in time.
  final pulumi.Input<String>? restoreTime;
  /// The Alibaba Cloud Resource Name (ARN) of the specified Resource Access Management (RAM) role.
  final pulumi.Input<String>? roleArn;
  /// Configure the available area where the slave node (Secondary node) is located to realize multi-available area deployment. **NOTE:** This parameter value cannot be the same as `zone_id` and `hidden_zone_id` parameter values. From version 1.253.0, `secondary_zone_id` can be modified.
  final pulumi.Input<String>? secondaryZoneId;
  /// The Security Group ID of ECS.
  final pulumi.Input<String>? securityGroupId;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  final pulumi.Input<List<String>>? securityIpLists;
  /// The snapshot backup type. Default value: `Standard`. Valid values:
  /// - `Standard`: standard backup.
  /// - `Flash `: single-digit second backup.
  final pulumi.Input<String>? snapshotBackupType;
  /// The source instance ID.
  final pulumi.Input<String>? srcDbInstanceId;
  final pulumi.Input<String>? sslAction;
  /// The storage engine of the instance. Default value: `WiredTiger`. Valid values: `WiredTiger`, `RocksDB`.
  final pulumi.Input<String>? storageEngine;
  /// The storage type of the instance. Valid values: `cloud_essd1`, `cloud_essd2`, `cloud_essd3`, `cloud_auto`, `local_ssd`. **NOTE:** From version 1.229.0, `storage_type` can be modified. However, `storage_type` can only be modified to `cloud_auto`.
  final pulumi.Input<String>? storageType;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The TDE(Transparent Data Encryption) status. Note: `tde_status` cannot be set to `disabled` after it is enabled, see [Transparent Data Encryption](https://www.alibabacloud.com/help/en/mongodb/user-guide/configure-tde-for-an-apsaradb-for-mongodb-instance) for more details.
  final pulumi.Input<String>? tdeStatus;
  /// The ID of the VPC. > **NOTE:** `vpc_id` is valid only when `network_type` is set to `VPC`.
  final pulumi.Input<String>? vpcId;
  /// The virtual switch ID to launch DB instances in one VPC.
  final pulumi.Input<String>? vswitchId;
  /// The Zone to launch the DB instance. it supports multiple zone.
  /// If it is a multi-zone and `vswitch_id` is specified, the vswitch must in one of them.
  /// The multiple zone ID can be retrieved by setting `multi` to "true" in the data source `alicloud.getZones`.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [InstanceArgs].
  /// [accountPassword] Password of the root account. It is a string of 6 to 32 characters and is composed of letters, numbers, and underlines.
  /// [autoRenew] Auto renew for prepaid. Default value: `false`. Valid values: `true`, `false`.
  /// [autoRenewDuration] The auto-renewal period. Unit: months. Valid values: `1` to `12`.
  /// [backupInterval] The frequency at which high-frequency backups are created. Valid values: `-1`, `15`, `30`, `60`, `120`, `180`, `240`, `360`, `480`, `720`.
  /// [backupPeriods] MongoDB Instance backup period. It is required when `backup_time` was existed. Valid values: [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]. Default to [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday].
  /// [backupRetentionPeriod] The retention period of full backups.
  /// [backupRetentionPolicyOnClusterDeletion] The backup retention policy configured for the instance. Valid values:
  /// [backupTime] MongoDB instance backup time. It is required when `backup_period` was existed. In the format of HH:mmZ- HH:mmZ. Time setting interval is one hour. If not set, the system will return a default, like "23:00Z-24:00Z".
  /// [cloudDiskEncryptionKey] The ID of the encryption key.
  /// [dbInstanceClass] Instance specification. see [Instance specifications](https://www.alibabacloud.com/help/doc-detail/57141.htm).
  /// [dbInstanceReleaseProtection] Indicates whether release protection is enabled for the instance. Valid values: `true`, `false`.
  /// [dbInstanceStorage] User-defined DB instance storage space.Unit: GB. Value range:
  /// [effectiveTime] The time when the changed configurations take effect. Valid values: `Immediately`, `MaintainTime`.
  /// [enableBackupLog] Specifies whether to enable the log backup feature. Valid values:
  /// [encrypted] Whether to enable cloud disk encryption. Default value: `false`. Valid values: `true`, `false`.
  /// [encryptionKey] The ID of the custom key.
  /// [encryptorName] The encryption method. **NOTE:** `encryptor_name` is valid only when `tde_status` is set to `enabled`.
  /// [engineVersion] Database version. Value options can refer to the latest docs [CreateDBInstance](https://www.alibabacloud.com/help/doc-detail/61763.htm) `EngineVersion`. **NOTE:** From version 1.225.0, `engine_version` can be modified.
  /// [forceEncryption] Specifies whether to forcibly enable SSL encryption for connections. Valid values:
  /// [globalSecurityGroupLists] The list of Global Security Group Ids.
  /// [hiddenZoneId] Configure the zone where the hidden node is located to deploy multiple zones. **NOTE:** This parameter value cannot be the same as `zone_id` and `secondary_zone_id` parameter values. From version 1.253.0, `hidden_zone_id` can be modified.
  /// [instanceChargeType] The billing method of the instance. Default value: `PostPaid`. Valid values: `PrePaid`, `PostPaid`. **NOTE:** It can be modified from `PostPaid` to `PrePaid` after version 1.63.0.
  /// [kmsEncryptedPassword] An KMS encrypts password used to a instance. If the `account_password` is filled in, this field will be ignored.
  /// [kmsEncryptionContext] An KMS encryption context used to decrypt `kms_encrypted_password` before creating or updating instance with `kms_encrypted_password`. See [Encryption Context](https://www.alibabacloud.com/help/doc-detail/42975.htm). It is valid when `kms_encrypted_password` is set.
  /// [logBackupRetentionPeriod] The number of days for which log backups are retained. Valid values: `7` to `730`. **NOTE:** `log_backup_retention_period` is valid only when `enable_backup_log` is set to `1`.
  /// [maintainEndTime] The end time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time).
  /// [maintainStartTime] The start time of the operation and maintenance time period of the instance, in the format of HH:mmZ (UTC time).
  /// [name] The name of DB instance. It must be 2 to 256 characters in length.
  /// [networkType] The network type of the instance. Valid values: `VPC`.
  /// [orderType] The type of configuration changes performed. Default value: `DOWNGRADE`. Valid values:
  /// [parameters] Set of parameters needs to be set after mongodb instance was launched. See `parameters` below.
  /// [period] The duration that you will buy DB instance (in month). It is valid when `instance_charge_type` is `PrePaid`. Default value: `1`. Valid values: [1~9], 12, 24, 36.
  /// [provisionedIops] The provisioned IOPS. Valid values: `0` to `50000`.
  /// [readonlyReplicas] The number of read-only nodes in the replica set instance. Default value: 0. Valid values: 0 to 5.
  /// [replicationFactor] Number of replica set nodes. Valid values: `1`, `3`, `5`, `7`.
  /// [resourceGroupId] The ID of the Resource Group.
  /// [restoreTime] The point in time to which you want to restore the instance. You can specify any point in time within the last seven days. The time must be in the yyyy-MM-ddTHH:mm:ssZ format and in UTC.
  /// [roleArn] The Alibaba Cloud Resource Name (ARN) of the specified Resource Access Management (RAM) role.
  /// [secondaryZoneId] Configure the available area where the slave node (Secondary node) is located to realize multi-available area deployment. **NOTE:** This parameter value cannot be the same as `zone_id` and `hidden_zone_id` parameter values. From version 1.253.0, `secondary_zone_id` can be modified.
  /// [securityGroupId] The Security Group ID of ECS.
  /// [securityIpLists] List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  /// [snapshotBackupType] The snapshot backup type. Default value: `Standard`. Valid values:
  /// [srcDbInstanceId] The source instance ID.
  /// [sslAction] Optional.
  /// [storageEngine] The storage engine of the instance. Default value: `WiredTiger`. Valid values: `WiredTiger`, `RocksDB`.
  /// [storageType] The storage type of the instance. Valid values: `cloud_essd1`, `cloud_essd2`, `cloud_essd3`, `cloud_auto`, `local_ssd`. **NOTE:** From version 1.229.0, `storage_type` can be modified. However, `storage_type` can only be modified to `cloud_auto`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tdeStatus] The TDE(Transparent Data Encryption) status. Note: `tde_status` cannot be set to `disabled` after it is enabled, see [Transparent Data Encryption](https://www.alibabacloud.com/help/en/mongodb/user-guide/configure-tde-for-an-apsaradb-for-mongodb-instance) for more details.
  /// [vpcId] The ID of the VPC. > **NOTE:** `vpc_id` is valid only when `network_type` is set to `VPC`.
  /// [vswitchId] The virtual switch ID to launch DB instances in one VPC.
  /// [zoneId] The Zone to launch the DB instance. it supports multiple zone.
  InstanceArgs({
    pulumi.Output<String>? accountPassword,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? autoRenewDuration,
    pulumi.Output<String>? backupInterval,
    pulumi.Output<List<String>>? backupPeriods,
    pulumi.Output<int>? backupRetentionPeriod,
    pulumi.Output<int>? backupRetentionPolicyOnClusterDeletion,
    pulumi.Output<String>? backupTime,
    pulumi.Output<String>? cloudDiskEncryptionKey,
    required pulumi.Output<String> dbInstanceClass,
    pulumi.Output<bool>? dbInstanceReleaseProtection,
    required pulumi.Output<int> dbInstanceStorage,
    pulumi.Output<String>? effectiveTime,
    pulumi.Output<int>? enableBackupLog,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<String>? encryptionKey,
    pulumi.Output<String>? encryptorName,
    required pulumi.Output<String> engineVersion,
    pulumi.Output<String>? forceEncryption,
    pulumi.Output<List<String>>? globalSecurityGroupLists,
    pulumi.Output<String>? hiddenZoneId,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? kmsEncryptedPassword,
    pulumi.Output<Map<String, String>>? kmsEncryptionContext,
    pulumi.Output<int>? logBackupRetentionPeriod,
    pulumi.Output<String>? maintainEndTime,
    pulumi.Output<String>? maintainStartTime,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? orderType,
    pulumi.Output<List<InstanceParameter>>? parameters,
    pulumi.Output<int>? period,
    pulumi.Output<int>? provisionedIops,
    pulumi.Output<int>? readonlyReplicas,
    pulumi.Output<int>? replicationFactor,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? restoreTime,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? secondaryZoneId,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<List<String>>? securityIpLists,
    pulumi.Output<String>? snapshotBackupType,
    pulumi.Output<String>? srcDbInstanceId,
    pulumi.Output<String>? sslAction,
    pulumi.Output<String>? storageEngine,
    pulumi.Output<String>? storageType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? tdeStatus,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? zoneId,
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
      dbInstanceClass = pulumi.Input.asInput<String>(dbInstanceClass),
      dbInstanceReleaseProtection = pulumi.Input.asOptionalInput<bool>(dbInstanceReleaseProtection),
      dbInstanceStorage = pulumi.Input.asInput<int>(dbInstanceStorage),
      effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
      enableBackupLog = pulumi.Input.asOptionalInput<int>(enableBackupLog),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      encryptionKey = pulumi.Input.asOptionalInput<String>(encryptionKey),
      encryptorName = pulumi.Input.asOptionalInput<String>(encryptorName),
      engineVersion = pulumi.Input.asInput<String>(engineVersion),
      forceEncryption = pulumi.Input.asOptionalInput<String>(forceEncryption),
      globalSecurityGroupLists = pulumi.Input.asOptionalInput<List<String>>(globalSecurityGroupLists),
      hiddenZoneId = pulumi.Input.asOptionalInput<String>(hiddenZoneId),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      kmsEncryptedPassword = pulumi.Input.asOptionalInput<String>(kmsEncryptedPassword),
      kmsEncryptionContext = pulumi.Input.asOptionalInput<Map<String, String>>(kmsEncryptionContext),
      logBackupRetentionPeriod = pulumi.Input.asOptionalInput<int>(logBackupRetentionPeriod),
      maintainEndTime = pulumi.Input.asOptionalInput<String>(maintainEndTime),
      maintainStartTime = pulumi.Input.asOptionalInput<String>(maintainStartTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      orderType = pulumi.Input.asOptionalInput<String>(orderType),
      parameters = pulumi.Input.asOptionalInput<List<InstanceParameter>>(parameters),
      period = pulumi.Input.asOptionalInput<int>(period),
      provisionedIops = pulumi.Input.asOptionalInput<int>(provisionedIops),
      readonlyReplicas = pulumi.Input.asOptionalInput<int>(readonlyReplicas),
      replicationFactor = pulumi.Input.asOptionalInput<int>(replicationFactor),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      restoreTime = pulumi.Input.asOptionalInput<String>(restoreTime),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      secondaryZoneId = pulumi.Input.asOptionalInput<String>(secondaryZoneId),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      securityIpLists = pulumi.Input.asOptionalInput<List<String>>(securityIpLists),
      snapshotBackupType = pulumi.Input.asOptionalInput<String>(snapshotBackupType),
      srcDbInstanceId = pulumi.Input.asOptionalInput<String>(srcDbInstanceId),
      sslAction = pulumi.Input.asOptionalInput<String>(sslAction),
      storageEngine = pulumi.Input.asOptionalInput<String>(storageEngine),
      storageType = pulumi.Input.asOptionalInput<String>(storageType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tdeStatus = pulumi.Input.asOptionalInput<String>(tdeStatus),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

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
      'dbInstanceClass': dbInstanceClass,
      'dbInstanceReleaseProtection': ?dbInstanceReleaseProtection,
      'dbInstanceStorage': dbInstanceStorage,
      'effectiveTime': ?effectiveTime,
      'enableBackupLog': ?enableBackupLog,
      'encrypted': ?encrypted,
      'encryptionKey': ?encryptionKey,
      'encryptorName': ?encryptorName,
      'engineVersion': engineVersion,
      'forceEncryption': ?forceEncryption,
      'globalSecurityGroupLists': ?globalSecurityGroupLists,
      'hiddenZoneId': ?hiddenZoneId,
      'instanceChargeType': ?instanceChargeType,
      'kmsEncryptedPassword': ?kmsEncryptedPassword,
      'kmsEncryptionContext': ?kmsEncryptionContext,
      'logBackupRetentionPeriod': ?logBackupRetentionPeriod,
      'maintainEndTime': ?maintainEndTime,
      'maintainStartTime': ?maintainStartTime,
      'name': ?name,
      'networkType': ?networkType,
      'orderType': ?orderType,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<InstanceParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<InstanceParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'period': ?period,
      'provisionedIops': ?provisionedIops,
      'readonlyReplicas': ?readonlyReplicas,
      'replicationFactor': ?replicationFactor,
      'resourceGroupId': ?resourceGroupId,
      'restoreTime': ?restoreTime,
      'roleArn': ?roleArn,
      'secondaryZoneId': ?secondaryZoneId,
      'securityGroupId': ?securityGroupId,
      'securityIpLists': ?securityIpLists,
      'snapshotBackupType': ?snapshotBackupType,
      'srcDbInstanceId': ?srcDbInstanceId,
      'sslAction': ?sslAction,
      'storageEngine': ?storageEngine,
      'storageType': ?storageType,
      'tags': ?tags,
      'tdeStatus': ?tdeStatus,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      accountPassword: map['accountPassword'] == null ? null : pulumi.Output.create<String>(map['accountPassword'] as String),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      autoRenewDuration: map['autoRenewDuration'] == null ? null : pulumi.Output.create<int>(map['autoRenewDuration'] as int),
      backupInterval: map['backupInterval'] == null ? null : pulumi.Output.create<String>(map['backupInterval'] as String),
      backupPeriods: map['backupPeriods'] == null ? null : pulumi.Output.create<List<String>>((map['backupPeriods'] as List).cast<String>()),
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['backupRetentionPeriod'] as int),
      backupRetentionPolicyOnClusterDeletion: map['backupRetentionPolicyOnClusterDeletion'] == null ? null : pulumi.Output.create<int>(map['backupRetentionPolicyOnClusterDeletion'] as int),
      backupTime: map['backupTime'] == null ? null : pulumi.Output.create<String>(map['backupTime'] as String),
      cloudDiskEncryptionKey: map['cloudDiskEncryptionKey'] == null ? null : pulumi.Output.create<String>(map['cloudDiskEncryptionKey'] as String),
      dbInstanceClass: pulumi.Output.create<String>(map['dbInstanceClass'] as String),
      dbInstanceReleaseProtection: map['dbInstanceReleaseProtection'] == null ? null : pulumi.Output.create<bool>(map['dbInstanceReleaseProtection'] as bool),
      dbInstanceStorage: pulumi.Output.create<int>(map['dbInstanceStorage'] as int),
      effectiveTime: map['effectiveTime'] == null ? null : pulumi.Output.create<String>(map['effectiveTime'] as String),
      enableBackupLog: map['enableBackupLog'] == null ? null : pulumi.Output.create<int>(map['enableBackupLog'] as int),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      encryptionKey: map['encryptionKey'] == null ? null : pulumi.Output.create<String>(map['encryptionKey'] as String),
      encryptorName: map['encryptorName'] == null ? null : pulumi.Output.create<String>(map['encryptorName'] as String),
      engineVersion: pulumi.Output.create<String>(map['engineVersion'] as String),
      forceEncryption: map['forceEncryption'] == null ? null : pulumi.Output.create<String>(map['forceEncryption'] as String),
      globalSecurityGroupLists: map['globalSecurityGroupLists'] == null ? null : pulumi.Output.create<List<String>>((map['globalSecurityGroupLists'] as List).cast<String>()),
      hiddenZoneId: map['hiddenZoneId'] == null ? null : pulumi.Output.create<String>(map['hiddenZoneId'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : pulumi.Output.create<String>(map['kmsEncryptedPassword'] as String),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : pulumi.Output.create<Map<String, String>>((map['kmsEncryptionContext'] as Map).cast<String, String>()),
      logBackupRetentionPeriod: map['logBackupRetentionPeriod'] == null ? null : pulumi.Output.create<int>(map['logBackupRetentionPeriod'] as int),
      maintainEndTime: map['maintainEndTime'] == null ? null : pulumi.Output.create<String>(map['maintainEndTime'] as String),
      maintainStartTime: map['maintainStartTime'] == null ? null : pulumi.Output.create<String>(map['maintainStartTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      orderType: map['orderType'] == null ? null : pulumi.Output.create<String>(map['orderType'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<InstanceParameter>>(pulumi.Input.decodeList<InstanceParameter>(map['parameters'], (value) => InstanceParameter.fromMap((value as Map).cast<String, dynamic>()))),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      provisionedIops: map['provisionedIops'] == null ? null : pulumi.Output.create<int>(map['provisionedIops'] as int),
      readonlyReplicas: map['readonlyReplicas'] == null ? null : pulumi.Output.create<int>(map['readonlyReplicas'] as int),
      replicationFactor: map['replicationFactor'] == null ? null : pulumi.Output.create<int>(map['replicationFactor'] as int),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      restoreTime: map['restoreTime'] == null ? null : pulumi.Output.create<String>(map['restoreTime'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      secondaryZoneId: map['secondaryZoneId'] == null ? null : pulumi.Output.create<String>(map['secondaryZoneId'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      securityIpLists: map['securityIpLists'] == null ? null : pulumi.Output.create<List<String>>((map['securityIpLists'] as List).cast<String>()),
      snapshotBackupType: map['snapshotBackupType'] == null ? null : pulumi.Output.create<String>(map['snapshotBackupType'] as String),
      srcDbInstanceId: map['srcDbInstanceId'] == null ? null : pulumi.Output.create<String>(map['srcDbInstanceId'] as String),
      sslAction: map['sslAction'] == null ? null : pulumi.Output.create<String>(map['sslAction'] as String),
      storageEngine: map['storageEngine'] == null ? null : pulumi.Output.create<String>(map['storageEngine'] as String),
      storageType: map['storageType'] == null ? null : pulumi.Output.create<String>(map['storageType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tdeStatus: map['tdeStatus'] == null ? null : pulumi.Output.create<String>(map['tdeStatus'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

