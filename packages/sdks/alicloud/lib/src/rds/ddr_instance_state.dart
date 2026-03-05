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
  /// &gt; **NOTE:** The prefix must be 8 to 64 characters in length and can contain letters, digits, and hyphens (-). It cannot contain Chinese characters and special characters ~!#%^&*=+\|{};:'",&lt;&gt;/?
  final pulumi.Input<String>? connectionStringPrefix;
  /// The attribute of the IP address whitelist. By default, this parameter is empty.
  ///
  /// &gt; **NOTE:** The IP address whitelists that have the hidden attribute are not displayed in the ApsaraDB RDS console. These IP address whitelists are used to access Alibaba Cloud services, such as Data Transmission Service (DTS).
  final pulumi.Input<String>? dbInstanceIpArrayAttribute;
  /// The name of the IP address whitelist. Default value: Default.
  ///
  /// &gt; **NOTE:** A maximum of 200 IP address whitelists can be configured for each instance.
  final pulumi.Input<String>? dbInstanceIpArrayName;
  /// The storage type of the instance. Valid values:
  /// - local_ssd: specifies to use local SSDs. This value is recommended.
  /// - cloud_ssd: specifies to use standard SSDs.
  /// - cloud_essd: specifies to use enhanced SSDs (ESSDs).
  /// - cloud_essd2: specifies to use enhanced SSDs (ESSDs).
  /// - cloud_essd3: specifies to use enhanced SSDs (ESSDs).
  ///
  /// &gt; **NOTE:** You can specify the time zone when you create a primary instance. You cannot specify the time zone when you create a read-only instance. Read-only instances inherit the time zone of their primary instance. If you do not specify this parameter, the system assigns the default time zone of the region where the instance resides.
  final pulumi.Input<String>? dbInstanceStorageType;
  /// The switch of delete protection. Valid values:
  /// - true: delete protect.
  /// - false: no delete protect.
  ///
  /// &gt; **NOTE:** `deletion_protection` is valid only when attribute `payment_type` is set to `PayAsYouGo`, supported engine type: **MySQL**, **PostgreSQL**, **MariaDB**, **MSSQL**.
  final pulumi.Input<bool>? deletionProtection;
  /// The method to update the engine version and change.  Default value: Immediate. Valid values:
  /// - Immediate: The change immediately takes effect.
  /// - MaintainTime: The change takes effect during the specified maintenance window. For more information, see ModifyDBInstanceMaintainTime.
  final pulumi.Input<String>? effectiveTime;
  /// The key id of the KMS. Used for encrypting a disk if not null. Only for PostgreSQL, MySQL and SQLServer.
  final pulumi.Input<String>? encryptionKey;
  /// Database type. Value options: MySQL, SQLServer.
  ///
  /// &gt; **NOTE:** When the 'EngineVersion' changes, it can be used as the target database version for the large version upgrade of RDS for MySQL instance.
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
  /// &gt; **NOTE:** If you set this parameter to Manual, you must specify the ManualHATime parameter.
  final pulumi.Input<String>? haConfig;
  /// The name of DB instance. It a string of 2 to 256 characters.
  final pulumi.Input<String>? instanceName;
  /// The storage capacity of the destination instance. Valid values: 5 to 2000. Unit: GB.
  ///
  /// This value must be a multiple of 5 GB. For more information, see Primary ApsaraDB RDS instance types.
  final pulumi.Input<int>? instanceStorage;
  /// DB Instance type.
  ///
  /// &gt; **NOTE:** When `storage_auto_scale="Enable"`, do not perform `instance_storage` check. when `storage_auto_scale="Disable"`, if the instance itself `instance_storage`has changed. You need to manually revise the `instance_storage` in the template value.
  final pulumi.Input<String>? instanceType;
  /// Maintainable time period format of the instance: HH:MMZ-HH:MMZ (UTC time)
  final pulumi.Input<String>? maintainTime;
  /// The time after when you want to enable automatic primary/secondary switchover. At most, you can set this parameter to 23:59:59 seven days later. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  ///
  /// &gt; **NOTE:** This parameter only takes effect when the HAConfig parameter is set to Manual.
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
  /// &gt; **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
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
  /// &gt; **NOTE:** This parameter is supported only when the instance runs the MySQL database engine.
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
  /// &gt; **NOTE:** This parameter only takes effect when the StorageAutoScale parameter is set to Enable.
  final pulumi.Input<String>? storageAutoScale;
  /// The trigger threshold (percentage) for automatic storage space expansion. Valid values:
  /// - 10
  /// - 20
  /// - 30
  /// - 40
  /// - 50
  ///
  /// &gt; **NOTE:** This parameter only takes effect when the StorageAutoScale parameter is set to Enable. The value must be greater than or equal to the total size of the current storage space of the instance.
  final pulumi.Input<int>? storageThreshold;
  /// The upper limit of the total storage space for automatic expansion of the storage space, that is, automatic expansion will not cause the total storage space of the instance to exceed this value. Unit: GB. The value must be ≥0.
  ///
  /// &gt; **NOTE:** Because of data backup and migration, change DB instance type and storage would cost 15~20 minutes. Please make full preparation before changing them.
  final pulumi.Input<int>? storageUpperBound;
  /// The specific point in time when you want to perform the update. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. It is valid only when `upgrade_db_instance_kernel_version = true`. The time must be in UTC.
  ///
  /// &gt; **NOTE:** This parameter takes effect only when you set the UpgradeTime parameter to SpecifyTime.
  final pulumi.Input<String>? switchTime;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  final pulumi.Input<Map<String, String>>? tags;
  /// The minor engine version to which you want to update the instance. If you do not specify this parameter, the instance is updated to the latest minor engine version. It is valid only when `upgrade_db_instance_kernel_version = true`. You must specify the minor engine version in one of the following formats:
  /// - PostgreSQL: rds_postgres_&lt;Major engine version&gt;00_&lt;Minor engine version&gt;. Example: rds_postgres_1200_20200830.
  /// - MySQL: &lt;RDS edition&gt;_&lt;Minor engine version&gt;. Examples: rds_20200229, xcluster_20200229, and xcluster80_20200229. The following RDS editions are supported:
  /// - rds: The instance runs RDS Basic or High-availability Edition.
  /// - xcluster: The instance runs MySQL 5.7 on RDS Enterprise Edition.
  /// - xcluster80: The instance runs MySQL 8.0 on RDS Enterprise Edition.
  /// - SQLServer: &lt;Minor engine version&gt;. Example: 15.0.4073.23.
  ///
  /// &gt; **NOTE:** For more information about minor engine versions, see Release notes of minor AliPG versions, Release notes of minor AliSQL versions, and Release notes of minor engine versions of ApsaraDB RDS for SQL Server.
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
  /// &gt; **NOTE:** This parameter applies only to ApsaraDB RDS for MySQL instances. For more information about Upgrade the major engine version of an ApsaraDB RDS for MySQL instance, see [Upgrade the major engine version of an RDS instance in the ApsaraDB RDS console](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/upgrade-the-major-engine-version-of-an-apsaradb-rds-for-mysql-instance-1).
  final pulumi.Input<String>? vpcId;
  /// The virtual switch ID to launch DB instances in one VPC. If there are multiple vswitches, separate them with commas.
  final pulumi.Input<String>? vswitchId;
  /// The network type of the IP address whitelist. Default value: MIX. Valid values:
  /// - Classic: classic network in enhanced whitelist mode
  /// - VPC: virtual private cloud (VPC) in enhanced whitelist mode
  /// - MIX: standard whitelist mode
  ///
  /// &gt; **NOTE:** In standard whitelist mode, IP addresses and CIDR blocks can be added only to the default IP address whitelist. In enhanced whitelist mode, IP addresses and CIDR blocks can be added to both IP address whitelists of the classic network type and those of the VPC network type.
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
    this.acl,
    this.autoRenew,
    this.autoRenewPeriod,
    this.autoUpgradeMinorVersion,
    this.backupSetId,
    this.caType,
    this.category,
    this.clientCaCert,
    this.clientCaEnabled,
    this.clientCertRevocationList,
    this.clientCrlEnabled,
    this.connectionString,
    this.connectionStringPrefix,
    this.dbInstanceIpArrayAttribute,
    this.dbInstanceIpArrayName,
    this.dbInstanceStorageType,
    this.deletionProtection,
    this.effectiveTime,
    this.encryptionKey,
    this.engine,
    this.engineVersion,
    this.forceRestart,
    this.freshWhiteListReadins,
    this.haConfig,
    this.instanceName,
    this.instanceStorage,
    this.instanceType,
    this.maintainTime,
    this.manualHaTime,
    this.modifyMode,
    this.monitoringPeriod,
    this.parameters,
    this.paymentType,
    this.period,
    this.pgHbaConfs,
    this.port,
    this.privateIpAddress,
    this.releasedKeepPolicy,
    this.replicationAcl,
    this.resourceGroupId,
    this.restoreTime,
    this.restoreType,
    this.securityGroupIds,
    this.securityIpMode,
    this.securityIpType,
    this.securityIps,
    this.serverCert,
    this.serverKey,
    this.sourceDbInstanceName,
    this.sourceRegion,
    this.sqlCollectorConfigValue,
    this.sqlCollectorStatus,
    this.sslAction,
    this.sslStatus,
    this.storageAutoScale,
    this.storageThreshold,
    this.storageUpperBound,
    this.switchTime,
    this.tags,
    this.targetMinorVersion,
    this.tcpConnectionType,
    this.tdeStatus,
    this.upgradeDbInstanceKernelVersion,
    this.upgradeTime,
    this.vpcId,
    this.vswitchId,
    this.whitelistNetworkType,
    this.zoneId,
    this.zoneIdSlaveA,
    this.zoneIdSlaveB,
  });

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
      acl: (() { final guardedValue = map['acl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenewPeriod: (() { final guardedValue = map['autoRenewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoUpgradeMinorVersion: (() { final guardedValue = map['autoUpgradeMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      backupSetId: (() { final guardedValue = map['backupSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caType: (() { final guardedValue = map['caType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCaCert: (() { final guardedValue = map['clientCaCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCaEnabled: (() { final guardedValue = map['clientCaEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clientCertRevocationList: (() { final guardedValue = map['clientCertRevocationList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCrlEnabled: (() { final guardedValue = map['clientCrlEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionStringPrefix: (() { final guardedValue = map['connectionStringPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceIpArrayAttribute: (() { final guardedValue = map['dbInstanceIpArrayAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceIpArrayName: (() { final guardedValue = map['dbInstanceIpArrayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceStorageType: (() { final guardedValue = map['dbInstanceStorageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      effectiveTime: (() { final guardedValue = map['effectiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceRestart: (() { final guardedValue = map['forceRestart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      freshWhiteListReadins: (() { final guardedValue = map['freshWhiteListReadins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      haConfig: (() { final guardedValue = map['haConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceStorage: (() { final guardedValue = map['instanceStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintainTime: (() { final guardedValue = map['maintainTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manualHaTime: (() { final guardedValue = map['manualHaTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifyMode: (() { final guardedValue = map['modifyMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringPeriod: (() { final guardedValue = map['monitoringPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DdrInstanceParameter>(guardedValue, (value) => DdrInstanceParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pgHbaConfs: (() { final guardedValue = map['pgHbaConfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DdrInstancePgHbaConf>(guardedValue, (value) => DdrInstancePgHbaConf.fromMap((value as Map).cast<String, dynamic>()))); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releasedKeepPolicy: (() { final guardedValue = map['releasedKeepPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationAcl: (() { final guardedValue = map['replicationAcl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreTime: (() { final guardedValue = map['restoreTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      restoreType: (() { final guardedValue = map['restoreType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityIpMode: (() { final guardedValue = map['securityIpMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityIpType: (() { final guardedValue = map['securityIpType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityIps: (() { final guardedValue = map['securityIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serverCert: (() { final guardedValue = map['serverCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverKey: (() { final guardedValue = map['serverKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDbInstanceName: (() { final guardedValue = map['sourceDbInstanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRegion: (() { final guardedValue = map['sourceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sqlCollectorConfigValue: (() { final guardedValue = map['sqlCollectorConfigValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sqlCollectorStatus: (() { final guardedValue = map['sqlCollectorStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslAction: (() { final guardedValue = map['sslAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslStatus: (() { final guardedValue = map['sslStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAutoScale: (() { final guardedValue = map['storageAutoScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageThreshold: (() { final guardedValue = map['storageThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageUpperBound: (() { final guardedValue = map['storageUpperBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      switchTime: (() { final guardedValue = map['switchTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetMinorVersion: (() { final guardedValue = map['targetMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tcpConnectionType: (() { final guardedValue = map['tcpConnectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tdeStatus: (() { final guardedValue = map['tdeStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      upgradeDbInstanceKernelVersion: (() { final guardedValue = map['upgradeDbInstanceKernelVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      upgradeTime: (() { final guardedValue = map['upgradeTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      whitelistNetworkType: (() { final guardedValue = map['whitelistNetworkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneIdSlaveA: (() { final guardedValue = map['zoneIdSlaveA']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneIdSlaveB: (() { final guardedValue = map['zoneIdSlaveB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

