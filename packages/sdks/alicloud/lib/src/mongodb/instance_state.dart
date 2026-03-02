// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_parameter.dart';
import 'instance_replica_set.dart';
import 'instance_zone_info.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
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
  final pulumi.Input<String>? dbInstanceClass;
  /// Indicates whether release protection is enabled for the instance. Valid values: `true`, `false`.
  final pulumi.Input<bool>? dbInstanceReleaseProtection;
  /// User-defined DB instance storage space.Unit: GB. Value range:
  /// - Custom storage space.
  /// - 10-GB increments.
  final pulumi.Input<int>? dbInstanceStorage;
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
  final pulumi.Input<String>? engineVersion;
  /// Specifies whether to forcibly enable SSL encryption for connections. Valid values:
  final pulumi.Input<String>? forceEncryption;
  /// The list of Global Security Group Ids.
  final pulumi.Input<List<String>>? globalSecurityGroupLists;
  /// Configure the zone where the hidden node is located to deploy multiple zones. **NOTE:** This parameter value cannot be the same as `zone_id` and `secondary_zone_id` parameter values. From version 1.253.0, `hidden_zone_id` can be modified.
  final pulumi.Input<String>? hiddenZoneId;
  /// The billing method of the instance. Default value: `PostPaid`. Valid values: `PrePaid`, `PostPaid`. **NOTE:** It can be modified from `PostPaid` to `PrePaid` after version 1.63.0.
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
  /// The name of the mongo replica set.
  final pulumi.Input<String>? replicaSetName;
  /// Replica set instance information.
  final pulumi.Input<List<InstanceReplicaSet>>? replicaSets;
  /// Number of replica set nodes. Valid values: `1`, `3`, `5`, `7`.
  final pulumi.Input<int>? replicationFactor;
  /// The ID of the Resource Group.
  final pulumi.Input<String>? resourceGroupId;
  /// The point in time to which you want to restore the instance. You can specify any point in time within the last seven days. The time must be in the yyyy-MM-ddTHH:mm:ssZ format and in UTC.
  /// > **NOTE:** You must specify `src_db_instance_id` and `restore_time` only when you clone an instance based on a point in time.
  final pulumi.Input<String>? restoreTime;
  /// Instance data backup retention days. Available since v1.42.0.
  final pulumi.Input<int>? retentionPeriod;
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
  /// Status of the SSL feature.
  final pulumi.Input<String>? sslStatus;
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
  /// (Available since v1.271.0) The information of nodes in the zone.
  final pulumi.Input<List<InstanceZoneInfo>>? zoneInfos;

  /// Creates a new [InstanceState].
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
  /// [keyIds] (Available since v1.271.0) A list of instance keys.
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
  /// [replicaSetName] The name of the mongo replica set.
  /// [replicaSets] Replica set instance information.
  /// [replicationFactor] Number of replica set nodes. Valid values: `1`, `3`, `5`, `7`.
  /// [resourceGroupId] The ID of the Resource Group.
  /// [restoreTime] The point in time to which you want to restore the instance. You can specify any point in time within the last seven days. The time must be in the yyyy-MM-ddTHH:mm:ssZ format and in UTC.
  /// [retentionPeriod] Instance data backup retention days. Available since v1.42.0.
  /// [roleArn] The Alibaba Cloud Resource Name (ARN) of the specified Resource Access Management (RAM) role.
  /// [secondaryZoneId] Configure the available area where the slave node (Secondary node) is located to realize multi-available area deployment. **NOTE:** This parameter value cannot be the same as `zone_id` and `hidden_zone_id` parameter values. From version 1.253.0, `secondary_zone_id` can be modified.
  /// [securityGroupId] The Security Group ID of ECS.
  /// [securityIpLists] List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  /// [snapshotBackupType] The snapshot backup type. Default value: `Standard`. Valid values:
  /// [srcDbInstanceId] The source instance ID.
  /// [sslAction] Optional.
  /// [sslStatus] Status of the SSL feature.
  /// [storageEngine] The storage engine of the instance. Default value: `WiredTiger`. Valid values: `WiredTiger`, `RocksDB`.
  /// [storageType] The storage type of the instance. Valid values: `cloud_essd1`, `cloud_essd2`, `cloud_essd3`, `cloud_auto`, `local_ssd`. **NOTE:** From version 1.229.0, `storage_type` can be modified. However, `storage_type` can only be modified to `cloud_auto`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tdeStatus] The TDE(Transparent Data Encryption) status. Note: `tde_status` cannot be set to `disabled` after it is enabled, see [Transparent Data Encryption](https://www.alibabacloud.com/help/en/mongodb/user-guide/configure-tde-for-an-apsaradb-for-mongodb-instance) for more details.
  /// [vpcId] The ID of the VPC. > **NOTE:** `vpc_id` is valid only when `network_type` is set to `VPC`.
  /// [vswitchId] The virtual switch ID to launch DB instances in one VPC.
  /// [zoneId] The Zone to launch the DB instance. it supports multiple zone.
  /// [zoneInfos] (Available since v1.271.0) The information of nodes in the zone.
  InstanceState({
    this.accountPassword,
    this.autoRenew,
    this.autoRenewDuration,
    this.backupInterval,
    this.backupPeriods,
    this.backupRetentionPeriod,
    this.backupRetentionPolicyOnClusterDeletion,
    this.backupTime,
    this.cloudDiskEncryptionKey,
    this.dbInstanceClass,
    this.dbInstanceReleaseProtection,
    this.dbInstanceStorage,
    this.effectiveTime,
    this.enableBackupLog,
    this.encrypted,
    this.encryptionKey,
    this.encryptorName,
    this.engineVersion,
    this.forceEncryption,
    this.globalSecurityGroupLists,
    this.hiddenZoneId,
    this.instanceChargeType,
    this.keyIds,
    this.kmsEncryptedPassword,
    this.kmsEncryptionContext,
    this.logBackupRetentionPeriod,
    this.maintainEndTime,
    this.maintainStartTime,
    this.name,
    this.networkType,
    this.orderType,
    this.parameters,
    this.period,
    this.provisionedIops,
    this.readonlyReplicas,
    this.replicaSetName,
    this.replicaSets,
    this.replicationFactor,
    this.resourceGroupId,
    this.restoreTime,
    this.retentionPeriod,
    this.roleArn,
    this.secondaryZoneId,
    this.securityGroupId,
    this.securityIpLists,
    this.snapshotBackupType,
    this.srcDbInstanceId,
    this.sslAction,
    this.sslStatus,
    this.storageEngine,
    this.storageType,
    this.tags,
    this.tdeStatus,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
    this.zoneInfos,
  });

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
      'dbInstanceClass': ?dbInstanceClass,
      'dbInstanceReleaseProtection': ?dbInstanceReleaseProtection,
      'dbInstanceStorage': ?dbInstanceStorage,
      'effectiveTime': ?effectiveTime,
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
      'name': ?name,
      'networkType': ?networkType,
      'orderType': ?orderType,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<InstanceParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<InstanceParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'period': ?period,
      'provisionedIops': ?provisionedIops,
      'readonlyReplicas': ?readonlyReplicas,
      'replicaSetName': ?replicaSetName,
      'replicaSets': ?pulumi.Input.mapOptionalInputValue<List<InstanceReplicaSet>, List<Map<String, dynamic>>>(replicaSets, (value) => pulumi.Input.encodeList<InstanceReplicaSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'replicationFactor': ?replicationFactor,
      'resourceGroupId': ?resourceGroupId,
      'restoreTime': ?restoreTime,
      'retentionPeriod': ?retentionPeriod,
      'roleArn': ?roleArn,
      'secondaryZoneId': ?secondaryZoneId,
      'securityGroupId': ?securityGroupId,
      'securityIpLists': ?securityIpLists,
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
      'zoneInfos': ?pulumi.Input.mapOptionalInputValue<List<InstanceZoneInfo>, List<Map<String, dynamic>>>(zoneInfos, (value) => pulumi.Input.encodeList<InstanceZoneInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      accountPassword: map['accountPassword'] == null ? null : (map['accountPassword'] as String).input(),
      autoRenew: map['autoRenew'] == null ? null : (map['autoRenew'] as bool).input(),
      autoRenewDuration: map['autoRenewDuration'] == null ? null : (map['autoRenewDuration'] as int).input(),
      backupInterval: map['backupInterval'] == null ? null : (map['backupInterval'] as String).input(),
      backupPeriods: map['backupPeriods'] == null ? null : ((map['backupPeriods'] as List).cast<String>()).input(),
      backupRetentionPeriod: map['backupRetentionPeriod'] == null ? null : (map['backupRetentionPeriod'] as int).input(),
      backupRetentionPolicyOnClusterDeletion: map['backupRetentionPolicyOnClusterDeletion'] == null ? null : (map['backupRetentionPolicyOnClusterDeletion'] as int).input(),
      backupTime: map['backupTime'] == null ? null : (map['backupTime'] as String).input(),
      cloudDiskEncryptionKey: map['cloudDiskEncryptionKey'] == null ? null : (map['cloudDiskEncryptionKey'] as String).input(),
      dbInstanceClass: map['dbInstanceClass'] == null ? null : (map['dbInstanceClass'] as String).input(),
      dbInstanceReleaseProtection: map['dbInstanceReleaseProtection'] == null ? null : (map['dbInstanceReleaseProtection'] as bool).input(),
      dbInstanceStorage: map['dbInstanceStorage'] == null ? null : (map['dbInstanceStorage'] as int).input(),
      effectiveTime: map['effectiveTime'] == null ? null : (map['effectiveTime'] as String).input(),
      enableBackupLog: map['enableBackupLog'] == null ? null : (map['enableBackupLog'] as int).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as bool).input(),
      encryptionKey: map['encryptionKey'] == null ? null : (map['encryptionKey'] as String).input(),
      encryptorName: map['encryptorName'] == null ? null : (map['encryptorName'] as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion'] as String).input(),
      forceEncryption: map['forceEncryption'] == null ? null : (map['forceEncryption'] as String).input(),
      globalSecurityGroupLists: map['globalSecurityGroupLists'] == null ? null : ((map['globalSecurityGroupLists'] as List).cast<String>()).input(),
      hiddenZoneId: map['hiddenZoneId'] == null ? null : (map['hiddenZoneId'] as String).input(),
      instanceChargeType: map['instanceChargeType'] == null ? null : (map['instanceChargeType'] as String).input(),
      keyIds: map['keyIds'] == null ? null : ((map['keyIds'] as List).cast<String>()).input(),
      kmsEncryptedPassword: map['kmsEncryptedPassword'] == null ? null : (map['kmsEncryptedPassword'] as String).input(),
      kmsEncryptionContext: map['kmsEncryptionContext'] == null ? null : ((map['kmsEncryptionContext'] as Map).cast<String, String>()).input(),
      logBackupRetentionPeriod: map['logBackupRetentionPeriod'] == null ? null : (map['logBackupRetentionPeriod'] as int).input(),
      maintainEndTime: map['maintainEndTime'] == null ? null : (map['maintainEndTime'] as String).input(),
      maintainStartTime: map['maintainStartTime'] == null ? null : (map['maintainStartTime'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkType: map['networkType'] == null ? null : (map['networkType'] as String).input(),
      orderType: map['orderType'] == null ? null : (map['orderType'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<InstanceParameter>(map['parameters'], (value) => InstanceParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      provisionedIops: map['provisionedIops'] == null ? null : (map['provisionedIops'] as int).input(),
      readonlyReplicas: map['readonlyReplicas'] == null ? null : (map['readonlyReplicas'] as int).input(),
      replicaSetName: map['replicaSetName'] == null ? null : (map['replicaSetName'] as String).input(),
      replicaSets: map['replicaSets'] == null ? null : (pulumi.Input.decodeList<InstanceReplicaSet>(map['replicaSets'], (value) => InstanceReplicaSet.fromMap((value as Map).cast<String, dynamic>()))).input(),
      replicationFactor: map['replicationFactor'] == null ? null : (map['replicationFactor'] as int).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      restoreTime: map['restoreTime'] == null ? null : (map['restoreTime'] as String).input(),
      retentionPeriod: map['retentionPeriod'] == null ? null : (map['retentionPeriod'] as int).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
      secondaryZoneId: map['secondaryZoneId'] == null ? null : (map['secondaryZoneId'] as String).input(),
      securityGroupId: map['securityGroupId'] == null ? null : (map['securityGroupId'] as String).input(),
      securityIpLists: map['securityIpLists'] == null ? null : ((map['securityIpLists'] as List).cast<String>()).input(),
      snapshotBackupType: map['snapshotBackupType'] == null ? null : (map['snapshotBackupType'] as String).input(),
      srcDbInstanceId: map['srcDbInstanceId'] == null ? null : (map['srcDbInstanceId'] as String).input(),
      sslAction: map['sslAction'] == null ? null : (map['sslAction'] as String).input(),
      sslStatus: map['sslStatus'] == null ? null : (map['sslStatus'] as String).input(),
      storageEngine: map['storageEngine'] == null ? null : (map['storageEngine'] as String).input(),
      storageType: map['storageType'] == null ? null : (map['storageType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tdeStatus: map['tdeStatus'] == null ? null : (map['tdeStatus'] as String).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId'] as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId'] as String).input(),
      zoneInfos: map['zoneInfos'] == null ? null : (pulumi.Input.decodeList<InstanceZoneInfo>(map['zoneInfos'], (value) => InstanceZoneInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

