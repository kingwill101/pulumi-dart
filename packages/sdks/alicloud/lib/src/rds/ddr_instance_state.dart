// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddr_instance_parameter.dart';
import 'ddr_instance_pg_hba_conf.dart';

/// Input properties used for looking up and filtering DdrInstance resources.
class DdrInstanceState {
  /// The method that is used to verify the identities of clients. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. Valid values:
  /// - cert
  /// - perfer
  /// - verify-ca
  /// - verify-full (supported only when the instance runs PostgreSQL 12 or later)
  final pulumi.Input<String>? acl;
  /// Whether to renewal a DB instance automatically or not. It is valid when payment_type is `Subscription`. Default to `false`.
  final pulumi.Input<bool>? autoRenew;
  /// Auto-renewal period of an instance, in the unit of the month. It is valid when payment_type is `Subscription`. Valid value:[1~12], Default to 1.
  final pulumi.Input<int>? autoRenewPeriod;
  /// The upgrade method to use. Valid values:
  /// - Auto: Instances are automatically upgraded to a higher minor version.
  /// - Manual: Instances are forcibly upgraded to a higher minor version when the current version is unpublished.
  ///
  /// See more [details and limitation](https://www.alibabacloud.com/help/doc-detail/123605.htm).
  final pulumi.Input<String>? autoUpgradeMinorVersion;
  /// The ID of the backup set that is used for the restoration. You can call the DescribeCrossRegionBackups operation to query the ID of the backup set.
  final pulumi.Input<String>? backupSetId;
  /// The type of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the SSLEnabled parameter to 1, the default value of this parameter is aliyun. Value range:
  /// - aliyun: a cloud certificate
  /// - custom: a custom certificate
  final pulumi.Input<String>? caType;
  /// The RDS edition of the instance.
  final pulumi.Input<String>? category;
  /// The public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the ClientCAEbabled parameter to 1, you must also specify this parameter.
  final pulumi.Input<String>? clientCaCert;
  /// Specifies whether to enable the public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. Valid values:
  /// - 1: enables the public key
  /// - 0: disables the public key
  final pulumi.Input<int>? clientCaEnabled;
  /// The CRL that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the ClientCrlEnabled parameter to 1, you must also specify this parameter.
  final pulumi.Input<String>? clientCertRevocationList;
  /// Specifies whether to enable a certificate revocation list (CRL) that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. Valid values:
  /// - 1: enables the CRL
  /// - 0: disables the CRL
  final pulumi.Input<int>? clientCrlEnabled;
  /// RDS database connection string.
  final pulumi.Input<String>? connectionString;
  /// The private connection string prefix. If you want to update public connection string prefix, please use resource alicloud.rds.Connection connection_prefix.
  /// > **NOTE:** The prefix must be 8 to 64 characters in length and can contain letters, digits, and hyphens (-). It cannot contain Chinese characters and special characters ~!#%^&*=+\|{};:'",<>/?
  final pulumi.Input<String>? connectionStringPrefix;
  /// The attribute of the IP address whitelist. By default, this parameter is empty.
  ///
  /// > **NOTE:** The IP address whitelists that have the hidden attribute are not displayed in the ApsaraDB RDS console. These IP address whitelists are used to access Alibaba Cloud services, such as Data Transmission Service (DTS).
  final pulumi.Input<String>? dbInstanceIpArrayAttribute;
  /// The name of the IP address whitelist. Default value: Default.
  ///
  /// > **NOTE:** A maximum of 200 IP address whitelists can be configured for each instance.
  final pulumi.Input<String>? dbInstanceIpArrayName;
  /// The storage type of the instance. Valid values:
  /// - local_ssd: specifies to use local SSDs. This value is recommended.
  /// - cloud_ssd: specifies to use standard SSDs.
  /// - cloud_essd: specifies to use enhanced SSDs (ESSDs).
  /// - cloud_essd2: specifies to use enhanced SSDs (ESSDs).
  /// - cloud_essd3: specifies to use enhanced SSDs (ESSDs).
  ///
  /// > **NOTE:** You can specify the time zone when you create a primary instance. You cannot specify the time zone when you create a read-only instance. Read-only instances inherit the time zone of their primary instance. If you do not specify this parameter, the system assigns the default time zone of the region where the instance resides.
  final pulumi.Input<String>? dbInstanceStorageType;
  /// The switch of delete protection. Valid values:
  /// - true: delete protect.
  /// - false: no delete protect.
  ///
  /// > **NOTE:** `deletion_protection` is valid only when attribute `payment_type` is set to `PayAsYouGo`, supported engine type: **MySQL**, **PostgreSQL**, **MariaDB**, **MSSQL**.
  final pulumi.Input<bool>? deletionProtection;
  /// The method to update the engine version and change.  Default value: Immediate. Valid values:
  /// - Immediate: The change immediately takes effect.
  /// - MaintainTime: The change takes effect during the specified maintenance window. For more information, see ModifyDBInstanceMaintainTime.
  final pulumi.Input<String>? effectiveTime;
  /// The key id of the KMS. Used for encrypting a disk if not null. Only for PostgreSQL, MySQL and SQLServer.
  final pulumi.Input<String>? encryptionKey;
  /// Database type. Value options: MySQL, SQLServer.
  ///
  /// > **NOTE:** When the 'EngineVersion' changes, it can be used as the target database version for the large version upgrade of RDS for MySQL instance.
  final pulumi.Input<String>? engine;
  /// Database version. Value options can refer to the latest docs [CreateDdrInstance](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/restore-data-to-a-new-instance-across-regions) `EngineVersion`.
  final pulumi.Input<String>? engineVersion;
  /// Set it to true to make some parameter efficient when modifying them. Default to false.
  final pulumi.Input<bool>? forceRestart;
  /// The read-only instances to which you want to synchronize the IP address whitelist.
  /// * If the instance is attached with a read-only instance, you can use this parameter to synchronize the IP address whitelist to the read-only instance. If the instance is attached with multiple read-only instances, the read-only instances must be separated by commas (,).
  /// * If the instance is not attached with a read-only instance, this parameter is empty.
  final pulumi.Input<String>? freshWhiteListReadins;
  /// The primary/secondary switchover mode of the instance. Default value: Auto. Valid values:
  /// - Auto: The system automatically switches over services from the primary to secondary instances in the event of a fault.
  /// - Manual: You must manually switch over services from the primary to secondary instances in the event of a fault.
  ///
  /// > **NOTE:** If you set this parameter to Manual, you must specify the ManualHATime parameter.
  final pulumi.Input<String>? haConfig;
  /// The name of DB instance. It a string of 2 to 256 characters.
  final pulumi.Input<String>? instanceName;
  /// The storage capacity of the destination instance. Valid values: 5 to 2000. Unit: GB.
  ///
  /// This value must be a multiple of 5 GB. For more information, see Primary ApsaraDB RDS instance types.
  final pulumi.Input<int>? instanceStorage;
  /// DB Instance type.
  ///
  /// > **NOTE:** When `storage_auto_scale="Enable"`, do not perform `instance_storage` check. when `storage_auto_scale="Disable"`, if the instance itself `instance_storage`has changed. You need to manually revise the `instance_storage` in the template value.
  final pulumi.Input<String>? instanceType;
  /// Maintainable time period format of the instance: HH:MMZ-HH:MMZ (UTC time)
  final pulumi.Input<String>? maintainTime;
  /// The time after when you want to enable automatic primary/secondary switchover. At most, you can set this parameter to 23:59:59 seven days later. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  ///
  /// > **NOTE:** This parameter only takes effect when the HAConfig parameter is set to Manual.
  final pulumi.Input<String>? manualHaTime;
  /// The method that is used to modify the IP address whitelist. Default value: Cover. Valid values:
  /// - Cover: Use the value of the SecurityIps parameter to overwrite the existing entries in the IP address whitelist.
  /// - Append: Add the IP addresses and CIDR blocks that are specified in the SecurityIps parameter to the IP address whitelist.
  /// - Delete: Delete IP addresses and CIDR blocks that are specified in the SecurityIps parameter from the IP address whitelist. You must retain at least one IP address or CIDR block.
  final pulumi.Input<String>? modifyMode;
  /// The monitoring frequency in seconds. Valid values are 5, 60, 300. Defaults to 300.
  final pulumi.Input<int>? monitoringPeriod;
  /// Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm) . See `parameters` below.
  final pulumi.Input<List<DdrInstanceParameter>>? parameters;
  /// Valid values are `Subscription`, `PayAsYouGo`, Default to `PayAsYouGo`.
  final pulumi.Input<String>? paymentType;
  /// The duration that you will buy DB instance (in month). It is valid when payment_type is `Subscription`. Valid values: [1~9], 12, 24, 36.
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  final pulumi.Input<int>? period;
  /// The configuration of [AD domain](https://www.alibabacloud.com/help/en/doc-detail/349288.htm) . See `pg_hba_conf` below.
  final pulumi.Input<List<DdrInstancePgHbaConf>>? pgHbaConfs;
  /// The private port of the database service. If you want to update public port, please use resource alicloud.rds.Connection port.
  final pulumi.Input<String>? port;
  /// The private IP address of the instance. The private IP address must be within the Classless Inter-Domain Routing (CIDR) block of the vSwitch that is specified by the VSwitchId parameter.
  final pulumi.Input<String>? privateIpAddress;
  /// The policy based on which ApsaraDB RDS retains archived backup files after the instance is released. Valid values:
  /// - None: No archived backup files are retained.
  /// - Lastest: Only the last archived backup file is retained.
  /// - All: All the archived backup files are retained.
  ///
  /// > **NOTE:** This parameter is supported only when the instance runs the MySQL database engine.
  final pulumi.Input<String>? releasedKeepPolicy;
  /// The method that is used to verify the replication permission. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. Valid values:
  /// - cert
  /// - perfer
  /// - verify-ca
  /// - verify-full (supported only when the instance runs PostgreSQL 12 or later)
  final pulumi.Input<String>? replicationAcl;
  /// The ID of resource group which the DB instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The point in time to which you want to restore data. The point in time that you specify must be earlier than the current time. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  final pulumi.Input<String>? restoreTime;
  /// The method that is used to restore data. Valid values:
  /// - BackupSet: Data is restored from a backup set. If you use this value, you must also specify the BackupSetID parameter.
  /// - BackupTime: restores data to a point in time. You must also specify the RestoreTime, SourceRegion, and SourceDBInstanceName parameters.
  final pulumi.Input<String>? restoreType;
  /// ) The list IDs to join ECS Security Group. At most supports three security groups.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Valid values are `normal`, `safety`, Default to `normal`. support `safety` switch to high security access mode.
  final pulumi.Input<String>? securityIpMode;
  /// The type of IP address in the IP address whitelist.
  final pulumi.Input<String>? securityIpType;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  final pulumi.Input<List<String>>? securityIps;
  /// The content of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter.
  final pulumi.Input<String>? serverCert;
  /// The private key of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter.
  final pulumi.Input<String>? serverKey;
  /// The ID of the source instance if you want to restore data to a point in time.
  final pulumi.Input<String>? sourceDbInstanceName;
  /// The region ID of the source instance if you want to restore data to a point in time.
  final pulumi.Input<String>? sourceRegion;
  /// The sql collector keep time of the instance. Valid values are `30`, `180`, `365`, `1095`, `1825`, Default to `30`.
  final pulumi.Input<int>? sqlCollectorConfigValue;
  /// The sql collector status of the instance. Valid values are `Enabled`, `Disabled`, Default to `Disabled`.
  final pulumi.Input<String>? sqlCollectorStatus;
  /// Actions performed on SSL functions, Valid values: `Open`: turn on SSL encryption; `Close`: turn off SSL encryption; `Update`: update SSL certificate. See more [engine and engineVersion limitation](https://www.alibabacloud.com/help/zh/doc-detail/26254.htm).
  final pulumi.Input<String>? sslAction;
  /// Status of the SSL feature. `Yes`: SSL is turned on; `No`: SSL is turned off.
  final pulumi.Input<String>? sslStatus;
  /// Automatic storage space expansion switch. Valid values:
  /// - Enable
  /// - Disable
  ///
  /// > **NOTE:** This parameter only takes effect when the StorageAutoScale parameter is set to Enable.
  final pulumi.Input<String>? storageAutoScale;
  /// The trigger threshold (percentage) for automatic storage space expansion. Valid values:
  /// - 10
  /// - 20
  /// - 30
  /// - 40
  /// - 50
  ///
  /// > **NOTE:** This parameter only takes effect when the StorageAutoScale parameter is set to Enable. The value must be greater than or equal to the total size of the current storage space of the instance.
  final pulumi.Input<int>? storageThreshold;
  /// The upper limit of the total storage space for automatic expansion of the storage space, that is, automatic expansion will not cause the total storage space of the instance to exceed this value. Unit: GB. The value must be ≥0.
  ///
  /// > **NOTE:** Because of data backup and migration, change DB instance type and storage would cost 15~20 minutes. Please make full preparation before changing them.
  final pulumi.Input<int>? storageUpperBound;
  /// The specific point in time when you want to perform the update. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. It is valid only when `upgrade_db_instance_kernel_version = true`. The time must be in UTC.
  ///
  /// > **NOTE:** This parameter takes effect only when you set the UpgradeTime parameter to SpecifyTime.
  final pulumi.Input<String>? switchTime;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;
  /// The minor engine version to which you want to update the instance. If you do not specify this parameter, the instance is updated to the latest minor engine version. It is valid only when `upgrade_db_instance_kernel_version = true`. You must specify the minor engine version in one of the following formats:
  /// - PostgreSQL: rds_postgres_<Major engine version>00_<Minor engine version>. Example: rds_postgres_1200_20200830.
  /// - MySQL: <RDS edition>_<Minor engine version>. Examples: rds_20200229, xcluster_20200229, and xcluster80_20200229. The following RDS editions are supported:
  /// - rds: The instance runs RDS Basic or High-availability Edition.
  /// - xcluster: The instance runs MySQL 5.7 on RDS Enterprise Edition.
  /// - xcluster80: The instance runs MySQL 8.0 on RDS Enterprise Edition.
  /// - SQLServer: <Minor engine version>. Example: 15.0.4073.23.
  ///
  /// > **NOTE:** For more information about minor engine versions, see Release notes of minor AliPG versions, Release notes of minor AliSQL versions, and Release notes of minor engine versions of ApsaraDB RDS for SQL Server.
  final pulumi.Input<String>? targetMinorVersion;
  /// The availability check method of the instance. Valid values:
  /// - **SHORT**: Alibaba Cloud uses short-lived connections to check the availability of the instance.
  /// - **LONG**: Alibaba Cloud uses persistent connections to check the availability of the instance.
  final pulumi.Input<String>? tcpConnectionType;
  /// The TDE(Transparent Data Encryption) status. See more [engine and engineVersion limitation](https://www.alibabacloud.com/help/zh/doc-detail/26256.htm).
  final pulumi.Input<String>? tdeStatus;
  /// Whether to upgrade a minor version of the kernel. Valid values:
  /// - true: upgrade
  /// - false: not to upgrade
  final pulumi.Input<bool>? upgradeDbInstanceKernelVersion;
  /// The method to update the minor engine version. Default value: Immediate. It is valid only when `upgrade_db_instance_kernel_version = true`. Valid values:
  /// - Immediate: The minor engine version is immediately updated.
  /// - MaintainTime: The minor engine version is updated during the maintenance window. For more information about how to change the maintenance window, see ModifyDBInstanceMaintainTime.
  /// - SpecifyTime: The minor engine version is updated at the point in time you specify.
  final pulumi.Input<String>? upgradeTime;
  /// The VPC ID of the instance.
  ///
  /// > **NOTE:** This parameter applies only to ApsaraDB RDS for MySQL instances. For more information about Upgrade the major engine version of an ApsaraDB RDS for MySQL instance, see [Upgrade the major engine version of an RDS instance in the ApsaraDB RDS console](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/upgrade-the-major-engine-version-of-an-apsaradb-rds-for-mysql-instance-1).
  final pulumi.Input<String>? vpcId;
  /// The virtual switch ID to launch DB instances in one VPC. If there are multiple vswitches, separate them with commas.
  final pulumi.Input<String>? vswitchId;
  /// The network type of the IP address whitelist. Default value: MIX. Valid values:
  /// - Classic: classic network in enhanced whitelist mode
  /// - VPC: virtual private cloud (VPC) in enhanced whitelist mode
  /// - MIX: standard whitelist mode
  ///
  /// > **NOTE:** In standard whitelist mode, IP addresses and CIDR blocks can be added only to the default IP address whitelist. In enhanced whitelist mode, IP addresses and CIDR blocks can be added to both IP address whitelists of the classic network type and those of the VPC network type.
  final pulumi.Input<String>? whitelistNetworkType;
  /// The Zone to launch the DB instance. It supports multiple zone.
  /// If it is a multi-zone and `vswitch_id` is specified, the vswitch must in the one of them.
  /// The multiple zone ID can be retrieved by setting `multi` to "true" in the data source `alicloud.getZones`.
  final pulumi.Input<String>? zoneId;
  /// The region ID of the secondary instance if you create a secondary instance.
  final pulumi.Input<String>? zoneIdSlaveA;
  /// The region ID of the log instance if you create a log instance.
  final pulumi.Input<String>? zoneIdSlaveB;

  /// Creates a new [DdrInstanceState].
  /// [acl] The method that is used to verify the identities of clients. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. Valid values:
  /// [autoRenew] Whether to renewal a DB instance automatically or not. It is valid when payment_type is `Subscription`. Default to `false`.
  /// [autoRenewPeriod] Auto-renewal period of an instance, in the unit of the month. It is valid when payment_type is `Subscription`. Valid value:[1~12], Default to 1.
  /// [autoUpgradeMinorVersion] The upgrade method to use. Valid values:
  /// [backupSetId] The ID of the backup set that is used for the restoration. You can call the DescribeCrossRegionBackups operation to query the ID of the backup set.
  /// [caType] The type of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the SSLEnabled parameter to 1, the default value of this parameter is aliyun. Value range:
  /// [category] The RDS edition of the instance.
  /// [clientCaCert] The public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the ClientCAEbabled parameter to 1, you must also specify this parameter.
  /// [clientCaEnabled] Specifies whether to enable the public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. Valid values:
  /// [clientCertRevocationList] The CRL that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the ClientCrlEnabled parameter to 1, you must also specify this parameter.
  /// [clientCrlEnabled] Specifies whether to enable a certificate revocation list (CRL) that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. Valid values:
  /// [connectionString] RDS database connection string.
  /// [connectionStringPrefix] The private connection string prefix. If you want to update public connection string prefix, please use resource alicloud.rds.Connection connection_prefix.
  /// [dbInstanceIpArrayAttribute] The attribute of the IP address whitelist. By default, this parameter is empty.
  /// [dbInstanceIpArrayName] The name of the IP address whitelist. Default value: Default.
  /// [dbInstanceStorageType] The storage type of the instance. Valid values:
  /// [deletionProtection] The switch of delete protection. Valid values:
  /// [effectiveTime] The method to update the engine version and change.  Default value: Immediate. Valid values:
  /// [encryptionKey] The key id of the KMS. Used for encrypting a disk if not null. Only for PostgreSQL, MySQL and SQLServer.
  /// [engine] Database type. Value options: MySQL, SQLServer.
  /// [engineVersion] Database version. Value options can refer to the latest docs [CreateDdrInstance](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/restore-data-to-a-new-instance-across-regions) `EngineVersion`.
  /// [forceRestart] Set it to true to make some parameter efficient when modifying them. Default to false.
  /// [freshWhiteListReadins] The read-only instances to which you want to synchronize the IP address whitelist.
  /// [haConfig] The primary/secondary switchover mode of the instance. Default value: Auto. Valid values:
  /// [instanceName] The name of DB instance. It a string of 2 to 256 characters.
  /// [instanceStorage] The storage capacity of the destination instance. Valid values: 5 to 2000. Unit: GB.
  /// [instanceType] DB Instance type.
  /// [maintainTime] Maintainable time period format of the instance: HH:MMZ-HH:MMZ (UTC time)
  /// [manualHaTime] The time after when you want to enable automatic primary/secondary switchover. At most, you can set this parameter to 23:59:59 seven days later. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  /// [modifyMode] The method that is used to modify the IP address whitelist. Default value: Cover. Valid values:
  /// [monitoringPeriod] The monitoring frequency in seconds. Valid values are 5, 60, 300. Defaults to 300.
  /// [parameters] Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm) . See `parameters` below.
  /// [paymentType] Valid values are `Subscription`, `PayAsYouGo`, Default to `PayAsYouGo`.
  /// [period] The duration that you will buy DB instance (in month). It is valid when payment_type is `Subscription`. Valid values: [1~9], 12, 24, 36.
  /// [pgHbaConfs] The configuration of [AD domain](https://www.alibabacloud.com/help/en/doc-detail/349288.htm) . See `pg_hba_conf` below.
  /// [port] The private port of the database service. If you want to update public port, please use resource alicloud.rds.Connection port.
  /// [privateIpAddress] The private IP address of the instance. The private IP address must be within the Classless Inter-Domain Routing (CIDR) block of the vSwitch that is specified by the VSwitchId parameter.
  /// [releasedKeepPolicy] The policy based on which ApsaraDB RDS retains archived backup files after the instance is released. Valid values:
  /// [replicationAcl] The method that is used to verify the replication permission. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. Valid values:
  /// [resourceGroupId] The ID of resource group which the DB instance belongs.
  /// [restoreTime] The point in time to which you want to restore data. The point in time that you specify must be earlier than the current time. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  /// [restoreType] The method that is used to restore data. Valid values:
  /// [securityGroupIds] ) The list IDs to join ECS Security Group. At most supports three security groups.
  /// [securityIpMode] Valid values are `normal`, `safety`, Default to `normal`. support `safety` switch to high security access mode.
  /// [securityIpType] The type of IP address in the IP address whitelist.
  /// [securityIps] List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  /// [serverCert] The content of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter.
  /// [serverKey] The private key of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter.
  /// [sourceDbInstanceName] The ID of the source instance if you want to restore data to a point in time.
  /// [sourceRegion] The region ID of the source instance if you want to restore data to a point in time.
  /// [sqlCollectorConfigValue] The sql collector keep time of the instance. Valid values are `30`, `180`, `365`, `1095`, `1825`, Default to `30`.
  /// [sqlCollectorStatus] The sql collector status of the instance. Valid values are `Enabled`, `Disabled`, Default to `Disabled`.
  /// [sslAction] Actions performed on SSL functions, Valid values: `Open`: turn on SSL encryption; `Close`: turn off SSL encryption; `Update`: update SSL certificate. See more [engine and engineVersion limitation](https://www.alibabacloud.com/help/zh/doc-detail/26254.htm).
  /// [sslStatus] Status of the SSL feature. `Yes`: SSL is turned on; `No`: SSL is turned off.
  /// [storageAutoScale] Automatic storage space expansion switch. Valid values:
  /// [storageThreshold] The trigger threshold (percentage) for automatic storage space expansion. Valid values:
  /// [storageUpperBound] The upper limit of the total storage space for automatic expansion of the storage space, that is, automatic expansion will not cause the total storage space of the instance to exceed this value. Unit: GB. The value must be ≥0.
  /// [switchTime] The specific point in time when you want to perform the update. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. It is valid only when `upgrade_db_instance_kernel_version = true`. The time must be in UTC.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetMinorVersion] The minor engine version to which you want to update the instance. If you do not specify this parameter, the instance is updated to the latest minor engine version. It is valid only when `upgrade_db_instance_kernel_version = true`. You must specify the minor engine version in one of the following formats:
  /// [tcpConnectionType] The availability check method of the instance. Valid values:
  /// [tdeStatus] The TDE(Transparent Data Encryption) status. See more [engine and engineVersion limitation](https://www.alibabacloud.com/help/zh/doc-detail/26256.htm).
  /// [upgradeDbInstanceKernelVersion] Whether to upgrade a minor version of the kernel. Valid values:
  /// [upgradeTime] The method to update the minor engine version. Default value: Immediate. It is valid only when `upgrade_db_instance_kernel_version = true`. Valid values:
  /// [vpcId] The VPC ID of the instance.
  /// [vswitchId] The virtual switch ID to launch DB instances in one VPC. If there are multiple vswitches, separate them with commas.
  /// [whitelistNetworkType] The network type of the IP address whitelist. Default value: MIX. Valid values:
  /// [zoneId] The Zone to launch the DB instance. It supports multiple zone.
  /// [zoneIdSlaveA] The region ID of the secondary instance if you create a secondary instance.
  /// [zoneIdSlaveB] The region ID of the log instance if you create a log instance.
  DdrInstanceState({
    pulumi.Output<String>? acl,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? autoRenewPeriod,
    pulumi.Output<String>? autoUpgradeMinorVersion,
    pulumi.Output<String>? backupSetId,
    pulumi.Output<String>? caType,
    pulumi.Output<String>? category,
    pulumi.Output<String>? clientCaCert,
    pulumi.Output<int>? clientCaEnabled,
    pulumi.Output<String>? clientCertRevocationList,
    pulumi.Output<int>? clientCrlEnabled,
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? connectionStringPrefix,
    pulumi.Output<String>? dbInstanceIpArrayAttribute,
    pulumi.Output<String>? dbInstanceIpArrayName,
    pulumi.Output<String>? dbInstanceStorageType,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? effectiveTime,
    pulumi.Output<String>? encryptionKey,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<bool>? forceRestart,
    pulumi.Output<String>? freshWhiteListReadins,
    pulumi.Output<String>? haConfig,
    pulumi.Output<String>? instanceName,
    pulumi.Output<int>? instanceStorage,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? maintainTime,
    pulumi.Output<String>? manualHaTime,
    pulumi.Output<String>? modifyMode,
    pulumi.Output<int>? monitoringPeriod,
    pulumi.Output<List<DdrInstanceParameter>>? parameters,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<List<DdrInstancePgHbaConf>>? pgHbaConfs,
    pulumi.Output<String>? port,
    pulumi.Output<String>? privateIpAddress,
    pulumi.Output<String>? releasedKeepPolicy,
    pulumi.Output<String>? replicationAcl,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? restoreTime,
    pulumi.Output<String>? restoreType,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<String>? securityIpMode,
    pulumi.Output<String>? securityIpType,
    pulumi.Output<List<String>>? securityIps,
    pulumi.Output<String>? serverCert,
    pulumi.Output<String>? serverKey,
    pulumi.Output<String>? sourceDbInstanceName,
    pulumi.Output<String>? sourceRegion,
    pulumi.Output<int>? sqlCollectorConfigValue,
    pulumi.Output<String>? sqlCollectorStatus,
    pulumi.Output<String>? sslAction,
    pulumi.Output<String>? sslStatus,
    pulumi.Output<String>? storageAutoScale,
    pulumi.Output<int>? storageThreshold,
    pulumi.Output<int>? storageUpperBound,
    pulumi.Output<String>? switchTime,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? targetMinorVersion,
    pulumi.Output<String>? tcpConnectionType,
    pulumi.Output<String>? tdeStatus,
    pulumi.Output<bool>? upgradeDbInstanceKernelVersion,
    pulumi.Output<String>? upgradeTime,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? whitelistNetworkType,
    pulumi.Output<String>? zoneId,
    pulumi.Output<String>? zoneIdSlaveA,
    pulumi.Output<String>? zoneIdSlaveB,
  }) :
      acl = pulumi.Input.asOptionalInput<String>(acl),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      autoRenewPeriod = pulumi.Input.asOptionalInput<int>(autoRenewPeriod),
      autoUpgradeMinorVersion = pulumi.Input.asOptionalInput<String>(autoUpgradeMinorVersion),
      backupSetId = pulumi.Input.asOptionalInput<String>(backupSetId),
      caType = pulumi.Input.asOptionalInput<String>(caType),
      category = pulumi.Input.asOptionalInput<String>(category),
      clientCaCert = pulumi.Input.asOptionalInput<String>(clientCaCert),
      clientCaEnabled = pulumi.Input.asOptionalInput<int>(clientCaEnabled),
      clientCertRevocationList = pulumi.Input.asOptionalInput<String>(clientCertRevocationList),
      clientCrlEnabled = pulumi.Input.asOptionalInput<int>(clientCrlEnabled),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      connectionStringPrefix = pulumi.Input.asOptionalInput<String>(connectionStringPrefix),
      dbInstanceIpArrayAttribute = pulumi.Input.asOptionalInput<String>(dbInstanceIpArrayAttribute),
      dbInstanceIpArrayName = pulumi.Input.asOptionalInput<String>(dbInstanceIpArrayName),
      dbInstanceStorageType = pulumi.Input.asOptionalInput<String>(dbInstanceStorageType),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
      encryptionKey = pulumi.Input.asOptionalInput<String>(encryptionKey),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      forceRestart = pulumi.Input.asOptionalInput<bool>(forceRestart),
      freshWhiteListReadins = pulumi.Input.asOptionalInput<String>(freshWhiteListReadins),
      haConfig = pulumi.Input.asOptionalInput<String>(haConfig),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      instanceStorage = pulumi.Input.asOptionalInput<int>(instanceStorage),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      maintainTime = pulumi.Input.asOptionalInput<String>(maintainTime),
      manualHaTime = pulumi.Input.asOptionalInput<String>(manualHaTime),
      modifyMode = pulumi.Input.asOptionalInput<String>(modifyMode),
      monitoringPeriod = pulumi.Input.asOptionalInput<int>(monitoringPeriod),
      parameters = pulumi.Input.asOptionalInput<List<DdrInstanceParameter>>(parameters),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      pgHbaConfs = pulumi.Input.asOptionalInput<List<DdrInstancePgHbaConf>>(pgHbaConfs),
      port = pulumi.Input.asOptionalInput<String>(port),
      privateIpAddress = pulumi.Input.asOptionalInput<String>(privateIpAddress),
      releasedKeepPolicy = pulumi.Input.asOptionalInput<String>(releasedKeepPolicy),
      replicationAcl = pulumi.Input.asOptionalInput<String>(replicationAcl),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      restoreTime = pulumi.Input.asOptionalInput<String>(restoreTime),
      restoreType = pulumi.Input.asOptionalInput<String>(restoreType),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      securityIpMode = pulumi.Input.asOptionalInput<String>(securityIpMode),
      securityIpType = pulumi.Input.asOptionalInput<String>(securityIpType),
      securityIps = pulumi.Input.asOptionalInput<List<String>>(securityIps),
      serverCert = pulumi.Input.asOptionalInput<String>(serverCert),
      serverKey = pulumi.Input.asOptionalInput<String>(serverKey),
      sourceDbInstanceName = pulumi.Input.asOptionalInput<String>(sourceDbInstanceName),
      sourceRegion = pulumi.Input.asOptionalInput<String>(sourceRegion),
      sqlCollectorConfigValue = pulumi.Input.asOptionalInput<int>(sqlCollectorConfigValue),
      sqlCollectorStatus = pulumi.Input.asOptionalInput<String>(sqlCollectorStatus),
      sslAction = pulumi.Input.asOptionalInput<String>(sslAction),
      sslStatus = pulumi.Input.asOptionalInput<String>(sslStatus),
      storageAutoScale = pulumi.Input.asOptionalInput<String>(storageAutoScale),
      storageThreshold = pulumi.Input.asOptionalInput<int>(storageThreshold),
      storageUpperBound = pulumi.Input.asOptionalInput<int>(storageUpperBound),
      switchTime = pulumi.Input.asOptionalInput<String>(switchTime),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetMinorVersion = pulumi.Input.asOptionalInput<String>(targetMinorVersion),
      tcpConnectionType = pulumi.Input.asOptionalInput<String>(tcpConnectionType),
      tdeStatus = pulumi.Input.asOptionalInput<String>(tdeStatus),
      upgradeDbInstanceKernelVersion = pulumi.Input.asOptionalInput<bool>(upgradeDbInstanceKernelVersion),
      upgradeTime = pulumi.Input.asOptionalInput<String>(upgradeTime),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      whitelistNetworkType = pulumi.Input.asOptionalInput<String>(whitelistNetworkType),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId),
      zoneIdSlaveA = pulumi.Input.asOptionalInput<String>(zoneIdSlaveA),
      zoneIdSlaveB = pulumi.Input.asOptionalInput<String>(zoneIdSlaveB);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'backupSetId': ?backupSetId,
      'caType': ?caType,
      'category': ?category,
      'clientCaCert': ?clientCaCert,
      'clientCaEnabled': ?clientCaEnabled,
      'clientCertRevocationList': ?clientCertRevocationList,
      'clientCrlEnabled': ?clientCrlEnabled,
      'connectionString': ?connectionString,
      'connectionStringPrefix': ?connectionStringPrefix,
      'dbInstanceIpArrayAttribute': ?dbInstanceIpArrayAttribute,
      'dbInstanceIpArrayName': ?dbInstanceIpArrayName,
      'dbInstanceStorageType': ?dbInstanceStorageType,
      'deletionProtection': ?deletionProtection,
      'effectiveTime': ?effectiveTime,
      'encryptionKey': ?encryptionKey,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'forceRestart': ?forceRestart,
      'freshWhiteListReadins': ?freshWhiteListReadins,
      'haConfig': ?haConfig,
      'instanceName': ?instanceName,
      'instanceStorage': ?instanceStorage,
      'instanceType': ?instanceType,
      'maintainTime': ?maintainTime,
      'manualHaTime': ?manualHaTime,
      'modifyMode': ?modifyMode,
      'monitoringPeriod': ?monitoringPeriod,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<DdrInstanceParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<DdrInstanceParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'paymentType': ?paymentType,
      'period': ?period,
      'pgHbaConfs': ?pulumi.Input.mapOptionalInputValue<List<DdrInstancePgHbaConf>, List<Map<String, dynamic>>>(pgHbaConfs, (value) => pulumi.Input.encodeList<DdrInstancePgHbaConf, Map<String, dynamic>>(value, (value) => value.toMap())),
      'port': ?port,
      'privateIpAddress': ?privateIpAddress,
      'releasedKeepPolicy': ?releasedKeepPolicy,
      'replicationAcl': ?replicationAcl,
      'resourceGroupId': ?resourceGroupId,
      'restoreTime': ?restoreTime,
      'restoreType': ?restoreType,
      'securityGroupIds': ?securityGroupIds,
      'securityIpMode': ?securityIpMode,
      'securityIpType': ?securityIpType,
      'securityIps': ?securityIps,
      'serverCert': ?serverCert,
      'serverKey': ?serverKey,
      'sourceDbInstanceName': ?sourceDbInstanceName,
      'sourceRegion': ?sourceRegion,
      'sqlCollectorConfigValue': ?sqlCollectorConfigValue,
      'sqlCollectorStatus': ?sqlCollectorStatus,
      'sslAction': ?sslAction,
      'sslStatus': ?sslStatus,
      'storageAutoScale': ?storageAutoScale,
      'storageThreshold': ?storageThreshold,
      'storageUpperBound': ?storageUpperBound,
      'switchTime': ?switchTime,
      'tags': ?tags,
      'targetMinorVersion': ?targetMinorVersion,
      'tcpConnectionType': ?tcpConnectionType,
      'tdeStatus': ?tdeStatus,
      'upgradeDbInstanceKernelVersion': ?upgradeDbInstanceKernelVersion,
      'upgradeTime': ?upgradeTime,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'whitelistNetworkType': ?whitelistNetworkType,
      'zoneId': ?zoneId,
      'zoneIdSlaveA': ?zoneIdSlaveA,
      'zoneIdSlaveB': ?zoneIdSlaveB,
    };
  }

  factory DdrInstanceState.fromMap(Map<String, dynamic> map) {
    return DdrInstanceState(
      acl: map['acl'] == null ? null : pulumi.Output.create<String>(map['acl'] as String),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : pulumi.Output.create<int>(map['autoRenewPeriod'] as int),
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : pulumi.Output.create<String>(map['autoUpgradeMinorVersion'] as String),
      backupSetId: map['backupSetId'] == null ? null : pulumi.Output.create<String>(map['backupSetId'] as String),
      caType: map['caType'] == null ? null : pulumi.Output.create<String>(map['caType'] as String),
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      clientCaCert: map['clientCaCert'] == null ? null : pulumi.Output.create<String>(map['clientCaCert'] as String),
      clientCaEnabled: map['clientCaEnabled'] == null ? null : pulumi.Output.create<int>(map['clientCaEnabled'] as int),
      clientCertRevocationList: map['clientCertRevocationList'] == null ? null : pulumi.Output.create<String>(map['clientCertRevocationList'] as String),
      clientCrlEnabled: map['clientCrlEnabled'] == null ? null : pulumi.Output.create<int>(map['clientCrlEnabled'] as int),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      connectionStringPrefix: map['connectionStringPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionStringPrefix'] as String),
      dbInstanceIpArrayAttribute: map['dbInstanceIpArrayAttribute'] == null ? null : pulumi.Output.create<String>(map['dbInstanceIpArrayAttribute'] as String),
      dbInstanceIpArrayName: map['dbInstanceIpArrayName'] == null ? null : pulumi.Output.create<String>(map['dbInstanceIpArrayName'] as String),
      dbInstanceStorageType: map['dbInstanceStorageType'] == null ? null : pulumi.Output.create<String>(map['dbInstanceStorageType'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      effectiveTime: map['effectiveTime'] == null ? null : pulumi.Output.create<String>(map['effectiveTime'] as String),
      encryptionKey: map['encryptionKey'] == null ? null : pulumi.Output.create<String>(map['encryptionKey'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      forceRestart: map['forceRestart'] == null ? null : pulumi.Output.create<bool>(map['forceRestart'] as bool),
      freshWhiteListReadins: map['freshWhiteListReadins'] == null ? null : pulumi.Output.create<String>(map['freshWhiteListReadins'] as String),
      haConfig: map['haConfig'] == null ? null : pulumi.Output.create<String>(map['haConfig'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      instanceStorage: map['instanceStorage'] == null ? null : pulumi.Output.create<int>(map['instanceStorage'] as int),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      maintainTime: map['maintainTime'] == null ? null : pulumi.Output.create<String>(map['maintainTime'] as String),
      manualHaTime: map['manualHaTime'] == null ? null : pulumi.Output.create<String>(map['manualHaTime'] as String),
      modifyMode: map['modifyMode'] == null ? null : pulumi.Output.create<String>(map['modifyMode'] as String),
      monitoringPeriod: map['monitoringPeriod'] == null ? null : pulumi.Output.create<int>(map['monitoringPeriod'] as int),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<DdrInstanceParameter>>(pulumi.Input.decodeList<DdrInstanceParameter>(map['parameters'], (value) => DdrInstanceParameter.fromMap((value as Map).cast<String, dynamic>()))),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      pgHbaConfs: map['pgHbaConfs'] == null ? null : pulumi.Output.create<List<DdrInstancePgHbaConf>>(pulumi.Input.decodeList<DdrInstancePgHbaConf>(map['pgHbaConfs'], (value) => DdrInstancePgHbaConf.fromMap((value as Map).cast<String, dynamic>()))),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
      privateIpAddress: map['privateIpAddress'] == null ? null : pulumi.Output.create<String>(map['privateIpAddress'] as String),
      releasedKeepPolicy: map['releasedKeepPolicy'] == null ? null : pulumi.Output.create<String>(map['releasedKeepPolicy'] as String),
      replicationAcl: map['replicationAcl'] == null ? null : pulumi.Output.create<String>(map['replicationAcl'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      restoreTime: map['restoreTime'] == null ? null : pulumi.Output.create<String>(map['restoreTime'] as String),
      restoreType: map['restoreType'] == null ? null : pulumi.Output.create<String>(map['restoreType'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      securityIpMode: map['securityIpMode'] == null ? null : pulumi.Output.create<String>(map['securityIpMode'] as String),
      securityIpType: map['securityIpType'] == null ? null : pulumi.Output.create<String>(map['securityIpType'] as String),
      securityIps: map['securityIps'] == null ? null : pulumi.Output.create<List<String>>((map['securityIps'] as List).cast<String>()),
      serverCert: map['serverCert'] == null ? null : pulumi.Output.create<String>(map['serverCert'] as String),
      serverKey: map['serverKey'] == null ? null : pulumi.Output.create<String>(map['serverKey'] as String),
      sourceDbInstanceName: map['sourceDbInstanceName'] == null ? null : pulumi.Output.create<String>(map['sourceDbInstanceName'] as String),
      sourceRegion: map['sourceRegion'] == null ? null : pulumi.Output.create<String>(map['sourceRegion'] as String),
      sqlCollectorConfigValue: map['sqlCollectorConfigValue'] == null ? null : pulumi.Output.create<int>(map['sqlCollectorConfigValue'] as int),
      sqlCollectorStatus: map['sqlCollectorStatus'] == null ? null : pulumi.Output.create<String>(map['sqlCollectorStatus'] as String),
      sslAction: map['sslAction'] == null ? null : pulumi.Output.create<String>(map['sslAction'] as String),
      sslStatus: map['sslStatus'] == null ? null : pulumi.Output.create<String>(map['sslStatus'] as String),
      storageAutoScale: map['storageAutoScale'] == null ? null : pulumi.Output.create<String>(map['storageAutoScale'] as String),
      storageThreshold: map['storageThreshold'] == null ? null : pulumi.Output.create<int>(map['storageThreshold'] as int),
      storageUpperBound: map['storageUpperBound'] == null ? null : pulumi.Output.create<int>(map['storageUpperBound'] as int),
      switchTime: map['switchTime'] == null ? null : pulumi.Output.create<String>(map['switchTime'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetMinorVersion: map['targetMinorVersion'] == null ? null : pulumi.Output.create<String>(map['targetMinorVersion'] as String),
      tcpConnectionType: map['tcpConnectionType'] == null ? null : pulumi.Output.create<String>(map['tcpConnectionType'] as String),
      tdeStatus: map['tdeStatus'] == null ? null : pulumi.Output.create<String>(map['tdeStatus'] as String),
      upgradeDbInstanceKernelVersion: map['upgradeDbInstanceKernelVersion'] == null ? null : pulumi.Output.create<bool>(map['upgradeDbInstanceKernelVersion'] as bool),
      upgradeTime: map['upgradeTime'] == null ? null : pulumi.Output.create<String>(map['upgradeTime'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      whitelistNetworkType: map['whitelistNetworkType'] == null ? null : pulumi.Output.create<String>(map['whitelistNetworkType'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
      zoneIdSlaveA: map['zoneIdSlaveA'] == null ? null : pulumi.Output.create<String>(map['zoneIdSlaveA'] as String),
      zoneIdSlaveB: map['zoneIdSlaveB'] == null ? null : pulumi.Output.create<String>(map['zoneIdSlaveB'] as String),
    );
  }
}

