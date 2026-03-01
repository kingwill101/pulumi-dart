// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_babelfish_config.dart';
import 'instance_parameter.dart';
import 'instance_pg_hba_conf.dart';
import 'instance_serverless_config.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// The method that is used to verify the identities of clients. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. Valid values:
  /// - cert
  /// - perfer
  /// - verify-ca
  /// - verify-full (supported only when the instance runs PostgreSQL 12 or later)
  final pulumi.Input<String>? acl;
  /// Whether to renewal a DB instance automatically or not. It is valid when instance_charge_type is `PrePaid`. Default to `false`.
  final pulumi.Input<bool>? autoRenew;
  /// Auto-renewal period of an instance, in the unit of the month. It is valid when instance_charge_type is `PrePaid`. Valid value:[1~12], Default to 1.
  final pulumi.Input<int>? autoRenewPeriod;
  /// The upgrade method to use. Valid values:
  /// - Auto: Instances are automatically upgraded to a higher minor version.
  /// - Manual: Instances are forcibly upgraded to a higher minor version when the current version is unpublished.
  ///
  /// See more [details and limitation](https://www.alibabacloud.com/help/doc-detail/123605.htm).
  final pulumi.Input<String>? autoUpgradeMinorVersion;
  /// The configuration of an ApsaraDB RDS for PostgreSQL instance for which Babelfish is enabled. See `babelfish_config` below.
  ///
  /// > **NOTE:** This parameter takes effect only when you create an ApsaraDB RDS for PostgreSQL instance. For more information, see [Introduction to Babelfish](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/babelfish-for-pg).
  final pulumi.Input<List<InstanceBabelfishConfig>>? babelfishConfigs;
  /// The TDS port of the instance for which Babelfish is enabled.
  ///
  /// > **NOTE:** This parameter applies only to ApsaraDB RDS for PostgreSQL instances. For more information about Babelfish for ApsaraDB RDS for PostgreSQL, see [Introduction to Babelfish](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/babelfish-for-pg).
  final pulumi.Input<String>? babelfishPort;
  /// Specifies whether to enable the I/O burst feature of general
  /// ESSDs. Valid values:
  /// - true
  /// - false
  final pulumi.Input<bool>? burstingEnabled;
  /// The type of the server certificate. This parameter is supported only when the instance runs PostgreSQL or MySQL with standard or enhanced SSDs. If you set the SSLEnabled parameter to 1, the default value of this parameter is aliyun. **NOTE:** From version 1.231.0, `ca_type` start  support `MySQL` engine. Value range:
  /// - aliyun: a cloud certificate
  /// - custom: a custom certificate
  final pulumi.Input<String>? caType;
  /// The RDS edition of the instance. If you want to create a serverless instance, you must use this value. Valid values:
  /// * **Basic**: Basic Edition.
  /// * **HighAvailability**: High-availability Edition.
  /// * **AlwaysOn**: Cluster Edition.
  /// * **Finance**: Enterprise Edition.
  /// * **cluster**: MySQL Cluster Edition. (Available since v1.202.0)
  /// * **serverless_basic**: RDS Serverless Basic Edition. This edition is available only for instances that run MySQL and PostgreSQL. (Available since v1.200.0)
  /// * **serverless_standard**: RDS Serverless Basic Edition. This edition is available only for instances that run MySQL and PostgreSQL. (Available since v1.204.0)
  /// * **serverless_ha**: RDS Serverless High-availability Edition for SQL Server. (Available since v1.204.0)
  ///
  /// > **NOTE:** `zone_id_slave_a` and `zone_id_slave_b` can specify slave zone ids when creating the high-availability or enterprise edition instances. Meanwhile, `vswitch_id` needs to pass in the corresponding vswitch id to the slave zone by order (If the `vswitch_id` is not specified, the classic network version will be created). For example, `zone_id` = "zone-a" and `zone_id_slave_a` = "zone-c", `zone_id_slave_b` = "zone-b", then the `vswitch_id` must be "vsw-zone-a,vsw-zone-c,vsw-zone-b". Of course, you can also choose automatic allocation , for example, `zone_id` = "zone-a" and `zone_id_slave_a` = "Auto",`zone_id_slave_b` = "Auto", then the `vswitch_id` must be "vsw-zone-a,Auto,Auto". The list contains up to 2 slave zone ids , separated by commas.
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
  /// High performance cloud disk data archiving function switch.Example value:
  /// - true: Enable high-performance cloud disk data archiving function.
  /// - false: Disable high-performance cloud disk data archiving function.
  final pulumi.Input<bool>? coldDataEnabled;
  /// RDS database connection string.
  final pulumi.Input<String>? connectionString;
  /// The private connection string prefix. If you want to update public connection string prefix, please use resource alicloud.rds.Connection connection_prefix.
  /// > **NOTE:** The prefix must be 8 to 64 characters in length and can contain letters, digits, and hyphens (-). It cannot contain Chinese characters and special characters ~!#%^&*=+\|{};:'",<>/?
  final pulumi.Input<String>? connectionStringPrefix;
  /// (Available since v1.204.1) The creation time of db instance.
  final pulumi.Input<String>? createTime;
  /// The attribute of the IP address whitelist. By default, this parameter is empty.
  ///
  /// > **NOTE:** The IP address whitelists that have the hidden attribute are not displayed in the ApsaraDB RDS console. These IP address whitelists are used to access Alibaba Cloud services, such as Data Transmission Service (DTS).
  final pulumi.Input<String>? dbInstanceIpArrayAttribute;
  /// The name of the IP address whitelist. Default value: Default.
  ///
  /// > **NOTE:** A maximum of 200 IP address whitelists can be configured for each instance.
  final pulumi.Input<String>? dbInstanceIpArrayName;
  /// The storage type of the instance. Serverless instance, only `cloud_essd` can be selected. Valid values:
  /// - local_ssd: specifies to use local SSDs. This value is recommended.
  /// - cloud_ssd: specifies to use standard SSDs.
  /// - cloud_essd: specifies to use enhanced SSDs (ESSDs).
  /// - cloud_essd2: specifies to use enhanced SSDs (ESSDs).
  /// - cloud_essd3: specifies to use enhanced SSDs (ESSDs).
  /// - general_essd: general essd.
  final pulumi.Input<String>? dbInstanceStorageType;
  /// (Available since v1.197.0) The type of db instance.
  final pulumi.Input<String>? dbInstanceType;
  /// Specifies whether table names on the instance are case-sensitive. Valid values: `true`, `false`.
  final pulumi.Input<bool>? dbIsIgnoreCase;
  /// Parameter template ID. Only MySQL and PostgreSQL support this parameter. If this parameter is not specified, the default parameter template is used. You can also customize a parameter template and use it here.
  final pulumi.Input<String>? dbParamGroupId;
  /// The time zone of the instance. This parameter takes effect only when you set the `Engine` parameter to MySQL or PostgreSQL.
  /// - If you set the `Engine` parameter to MySQL.
  /// - This time zone of the instance is in UTC. Valid values: -12:59 to +13:00.
  /// - You can specify this parameter when the instance is equipped with local SSDs. For example, you can specify the time zone to Asia/Hong_Kong. For more information about time zones, see [Time zones](https://www.alibabacloud.com/help/doc-detail/297356.htm).
  /// - If you set the `Engine` parameter to PostgreSQL.
  /// - This time zone of the instance is not in UTC. For more information about time zones, see [Time zones](https://www.alibabacloud.com/help/doc-detail/297356.htm).
  /// - You can specify this parameter only when the instance is equipped with standard SSDs or ESSDs.
  ///
  /// > **NOTE:** You can specify the time zone when you create a primary instance. You cannot specify the time zone when you create a read-only instance. Read-only instances inherit the time zone of their primary instance. If you do not specify this parameter, the system assigns the default time zone of the region where the instance resides.
  final pulumi.Input<String>? dbTimeZone;
  /// The switch of delete protection. Valid values:
  /// - true: delete protect.
  /// - false: no delete protect.
  ///
  /// > **NOTE:** `deletion_protection` is valid only when attribute `instance_charge_type` is set to `Postpaid` or `Serverless`, supported engine type: `MySQL`, `PostgreSQL`, `MariaDB`, `MSSQL`.
  final pulumi.Input<bool>? deletionProtection;
  /// The instance configuration type. Valid values: ["Up", "Down", "TempUpgrade", "Serverless"]
  final pulumi.Input<String>? direction;
  /// The method to update the engine version and change.  Default value: Immediate. Valid values:
  /// - Immediate: The change immediately takes effect.
  /// - MaintainTime: The change takes effect during the specified maintenance window. For more information, see ModifyDBInstanceMaintainTime.
  final pulumi.Input<String>? effectiveTime;
  /// The key id of the KMS. Used for encrypting a disk if not null. Only for PostgreSQL, MySQL and SQLServer.
  /// When the instance is PostgreSQL, this parameter can be used to enable, modify, and disable cloud disk encryption.Value range:
  /// - ServiceKey: Enable disk encryption using the service-managed key (Default Service CMK) automatically generated by Alibaba Cloud RDS.
  /// - <Key ID>: Use a custom key to enable cloud disk encryption or change the current key. For example: 494c98ce-f2b5-48ab-96ab-36c986b6****.
  /// - disabled: Turn off cloud disk encryption.
  /// > **NOTE:** This parameter is available when the instance runs MySQL.
  final pulumi.Input<String>? encryptionKey;
  /// Database type. Value options: MySQL, SQLServer, PostgreSQL, MariaDB.
  ///
  /// > **NOTE:** When the 'engine_version' changes, it can be used as the target database version for the large version upgrade of RDS for MySQL instance.
  final pulumi.Input<String>? engine;
  /// Database version. Value options can refer to the latest docs [CreateDBInstance](https://www.alibabacloud.com/help/doc-detail/26228.htm) `EngineVersion`.
  /// - MySQL: [ 5.5、5.6、5.7、8.0 ]
  /// - SQLServer: [ 2008r2、08r2_ent_ha、2012、2012_ent_ha、2012_std_ha、2012_web、2014_std_ha、2016_ent_ha、2016_std_ha、2016_web、2017_std_ha、2017_ent、2019_std_ha、2019_ent ]
  /// - PostgreSQL: [ 10.0、11.0、12.0、13.0、14.0、15.0 ]
  /// - MariaDB: [ 10.3 ]
  /// **Serverless**
  /// - MySQL: [ 5.7、8.0 ]
  /// - SQLServer: [ 2016_std_sl、2017_std_sl、2019_std_sl ]
  /// - PostgreSQL: [ 14.0 ]
  /// - MariaDB does not support creating serverless instances.
  final pulumi.Input<String>? engineVersion;
  /// Specifies whether to enable forcible switching. Valid values:
  /// - Yes
  /// - No
  final pulumi.Input<String>? force;
  /// Set it to true to make some parameter efficient when modifying them. Default to false.
  final pulumi.Input<bool>? forceRestart;
  /// The read-only instances to which you want to synchronize the IP address whitelist.
  /// * If the instance is attached with a read-only instance, you can use this parameter to synchronize the IP address whitelist to the read-only instance. If the instance is attached with multiple read-only instances, the read-only instances must be separated by commas (,).
  /// * If the instance is not attached with a read-only instance, this parameter is empty.
  final pulumi.Input<String>? freshWhiteListReadins;
  /// The primary/secondary switchover mode of the instance. Default value: Auto. Valid values:
  /// - Auto: The system automatically switches over services from the primary to secondary instances in the event of a fault.
  /// - Manual: You must manually switch over services from the primary to secondary instances in the event of a fault.
  final pulumi.Input<String>? haConfig;
  /// Valid values are `Prepaid`, `Postpaid`, `Serverless`, Default to `Postpaid`. Currently, the resource only supports PostPaid to PrePaid. For more information, see [Overview](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/what-is-serverless?spm=a2c63.p38356.0.0.772a28cfTAGqIv).
  final pulumi.Input<String>? instanceChargeType;
  /// The name of DB instance. It a string of 2 to 256 characters.
  final pulumi.Input<String>? instanceName;
  /// User-defined DB instance storage space. Value range:
  /// - [5, 2000] for MySQL/PostgreSQL HA dual node edition;
  /// - [20,1000] for MySQL 5.7 basic single node edition;
  /// - [10, 2000] for SQL Server 2008R2;
  /// - [20,2000] for SQL Server 2012 basic single node edition
  /// Increase progressively at a rate of 5 GB. For details, see [Instance type table](https://www.alibabacloud.com/help/doc-detail/26312.htm).
  /// Note: There is extra 5 GB storage for SQL Server Instance, and it is not in specified `instance_storage`.
  final pulumi.Input<int>? instanceStorage;
  /// DB Instance type. For details, see [Instance type table](https://www.alibabacloud.com/help/doc-detail/26312.htm).
  /// - To create a serverless instance, please pass the following values:
  /// - MySQL basic: mysql.n2.serverless.1c
  /// - MySQL high availability: mysql.n2.serverless.2c
  /// - SQLServer high availability: mssql.mem2.serverless.s2
  /// - PostgreSQL basic: pg.n2.serverless.1c
  ///
  /// > **NOTE:** When `storage_auto_scale="Enable"`, do not perform `instance_storage` check. when `storage_auto_scale="Disable"`, if the instance itself `instance_storage`has changed. You need to manually revise the `instance_storage` in the template value. When `payment_type="Serverless"` and when modifying, do not perform `instance_storage` check. Otherwise, check.
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
  /// The monitoring frequency in seconds. Valid values are 5, 10, 60, 300. Defaults to 300.
  final pulumi.Input<int>? monitoringPeriod;
  /// The globally unique identifier (GUID) of the secondary instance. You can call the DescribeDBInstanceHAConfig operation to query the GUID of the secondary instance.
  final pulumi.Input<String>? nodeId;
  /// Write optimization function switch. supported engine type: `MySQL`. Valid values:
  /// - optimized: Enable
  /// - none: Disable
  final pulumi.Input<String>? optimizedWrites;
  /// Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm) . See `parameters` below.
  final pulumi.Input<List<InstanceParameter>>? parameters;
  /// The duration that you will buy DB instance (in month). It is valid when instance_charge_type is `PrePaid`. Valid values: [1~9], 12, 24, 36.
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  final pulumi.Input<int>? period;
  /// Modify the PgBouncer feature of the RDS PostgreSQL instance. Valid values:
  /// - true: enable.
  /// - false: disable.
  final pulumi.Input<bool>? pgBouncerEnabled;
  /// The configuration of [AD domain](https://www.alibabacloud.com/help/en/doc-detail/349288.htm) . See `pg_hba_conf` below.
  final pulumi.Input<List<InstancePgHbaConf>>? pgHbaConfs;
  /// The private port of the database service. If you want to update public port, please use resource alicloud.rds.Connection port.
  final pulumi.Input<String>? port;
  /// The private IP address of the instance. The private IP address must be within the Classless Inter-Domain Routing (CIDR) block of the vSwitch that is specified by the VSwitchId parameter.
  final pulumi.Input<String>? privateIpAddress;
  /// Enable the Simple Recovery Model for an RDS SQL Server Instance.The Simple Recovery Model feature is only supported by the Basic Series of RDS SQL Server instances. Once this feature is enabled, it cannot be disabled.Valid values:
  /// - simple: Enable Simple Recovery.
  /// > **NOTE:** If you set this parameter to Manual, you must specify the ManualHATime parameter.
  final pulumi.Input<String>? recoveryModel;
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
  /// The Alibaba Cloud Resource Name (ARN) of the RAM role.
  ///
  /// > **NOTE:**  This parameter is not required when creating an instance running MySQL, PostgreSQL, or SQL Server.It is required only when you need to create an instance with cloud disk encryption enabled using a specified key ID.
  /// You can configure RAM authorization to require a RAM user to enable cloud disk encryption when the RAM user is used to create an instance. If cloud disk encryption is disabled during the instance creation, the creation operation fails. To complete the configuration, you can attach the following policy to the RAM user: {"Version":"1","Statement":[{"Effect":"Deny","Action":"rds:CreateDBInstance","Resource":"*","Condition":{"StringEquals":{"rds:DiskEncryptionRequired":"false"}}}]}
  final pulumi.Input<String>? roleArn;
  /// It has been deprecated from 1.69.0 and use `security_group_ids` instead.
  final pulumi.Input<String>? securityGroupId;
  /// , Available since v1.69.0) The list IDs to join ECS Security Group. At most supports three security groups.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Valid values are `normal`, `safety`, Default to `normal`. support `safety` switch to high security access mode.
  final pulumi.Input<String>? securityIpMode;
  /// The type of IP address in the IP address whitelist.
  final pulumi.Input<String>? securityIpType;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  final pulumi.Input<List<String>>? securityIps;
  /// The content of the server certificate. This parameter is supported only when the instance runs PostgreSQL or MySQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter. **NOTE:** From version 1.231.0, `server_cert` start  support `MySQL` engine.
  final pulumi.Input<String>? serverCert;
  /// The private key of the server certificate. This parameter is supported only when the instance runs PostgreSQL or MySQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter. **NOTE:** From version 1.231.0, `server_key` start support `MySQL` engine.
  final pulumi.Input<String>? serverKey;
  /// The settings of the serverless instance. This parameter is required when you create a serverless instance. This parameter takes effect only when you create an ApsaraDB RDS for Serverless instance. See `serverless_config` below.
  final pulumi.Input<List<InstanceServerlessConfig>>? serverlessConfigs;
  /// The sql collector keep time of the instance. Valid values are `30`, `180`, `365`, `1095`, `1825`, Default to `30`.
  /// > **NOTE:** This parameter takes effect when sql_collector_status is set to Enabled and does not take effect when sql_collector_status is set to Disabled.
  final pulumi.Input<int>? sqlCollectorConfigValue;
  /// The sql collector status of the instance. Valid values are `Enabled`, `Disabled`, Default to `Disabled`.
  final pulumi.Input<String>? sqlCollectorStatus;
  /// Actions performed on SSL functions. Valid values:
  /// `Open`: turn on SSL encryption;
  /// `Close`: turn off SSL encryption;
  /// `Update`: update SSL certificate.
  /// See more [engine and engineVersion limitation](https://www.alibabacloud.com/help/zh/doc-detail/26254.htm).
  ///
  /// > **NOTE:** The attribute `ssl_action` will be ignored when setting `instance_charge_type = "Serverless"` for SQLServer, PostgreSQL or MariaDB.
  final pulumi.Input<String>? sslAction;
  /// The internal or public endpoint for which the server certificate needs to be created or updated.
  final pulumi.Input<String>? sslConnectionString;
  /// Status of the SSL feature. `Yes`: SSL is turned on; `No`: SSL is turned off.
  final pulumi.Input<String>? sslStatus;
  /// (Available since v1.204.1) The status of db instance.
  final pulumi.Input<String>? status;
  /// Automatic storage space expansion switch. Valid values:
  /// - Enable
  /// - Disable
  ///
  /// > **NOTE:** This parameter only takes effect when the StorageAutoScale parameter is set to Enable.
  final pulumi.Input<String>? storageAutoScale;
  /// The threshold in percentage based on which an automatic storage expansion is triggered. If the available storage reaches the threshold, ApsaraDB RDS increases the storage capacity of the instance.
  /// Valid values: [10, 20, 30, 40, 50].
  ///
  /// > **NOTE:** This parameter only takes effect when the StorageAutoScale parameter is set to Enable. The value must be greater than or equal to the total size of the current storage space of the instance.
  final pulumi.Input<int>? storageThreshold;
  /// The upper limit of the total storage space for automatic expansion of the storage space, that is, automatic expansion will not cause the total storage space of the instance to exceed this value. Unit: GB. The value must be ≥0.
  ///
  /// > **NOTE:** Because of data backup and migration, change DB instance type and storage would cost 15~20 minutes. Please make full preparation before changing them.
  final pulumi.Input<int>? storageUpperBound;
  /// The specific point in time when you want to perform the update. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. It is valid only when `target_minor_version` is changed. The time must be in UTC.
  ///
  /// > **NOTE:** This parameter takes effect only when you set the UpgradeTime parameter to SpecifyTime.
  final pulumi.Input<String>? switchTime;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  ///
  /// Note: From 1.63.0, the tag key and value are case sensitive. Before that, they are not case sensitive.
  final pulumi.Input<Map<String, String>>? tags;
  /// The minor engine version to which you want to update the instance. If you do not specify this parameter, the instance is updated to the latest minor engine version. You must specify the minor engine version in one of the following formats:
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
  /// The ID of the custom key.
  final pulumi.Input<String>? tdeEncryptionKey;
  /// The TDE(Transparent Data Encryption) status. After TDE is turned on, it cannot be turned off. See more [engine and engineVersion limitation](https://www.alibabacloud.com/help/zh/doc-detail/26256.htm).
  ///
  /// > **NOTE:** When creating an instance and enabling disk encryption, the value of encryption_key can only be a Key ID; it cannot be a ServiceKey. After the instance is created, you can manage the disk encryption using: ServiceKey, Key ID, or disabled.
  final pulumi.Input<String>? tdeStatus;
  /// Whitelist Template ID List.
  final pulumi.Input<List<int>>? templateIdLists;
  /// (Computed, Available since v1.254.0) Whitelist Template Details.
  final pulumi.Input<List<Map<String, String>>>? templates;
  /// Whether to upgrade a minor version of the kernel. Valid values:
  /// - true: upgrade
  /// - false: not to upgrade
  ///
  /// > **NOTE:** Database Engine and Version: Supports only MySQL 5.7 or 8.0 instances.
  /// > **NOTE:** Storage Type: Supports only ESSD cloud disks and general-purpose cloud disks.
  /// > **NOTE:** Activation Stage: Supports only during instance creation or when enabling write optimization features for existing  (high-availability/cluster series) instances.
  final pulumi.Input<bool>? upgradeDbInstanceKernelVersion;
  /// The method to update the minor engine version. Default value: Immediate. It is valid only when `target_minor_version` is changed. Valid values:
  /// - Immediate: The minor engine version is immediately updated.
  /// - MaintainTime: The minor engine version is updated during the maintenance window. For more information about how to change the maintenance window, see ModifyDBInstanceMaintainTime.
  /// - SpecifyTime: The minor engine version is updated at the point in time you specify.
  final pulumi.Input<String>? upgradeTime;
  /// The VPC ID of the instance.
  ///
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
  /// The Zone to launch the DB instance. From version 1.8.1, it supports multiple zone.
  /// If it is a multi-zone and `vswitch_id` is specified, the vswitch must in the one of them.
  /// The multiple zone ID can be retrieved by setting `multi` to "true" in the data source `alicloud.getZones`.
  final pulumi.Input<String>? zoneId;
  /// The region ID of the secondary instance if you create a secondary instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  final pulumi.Input<String>? zoneIdSlaveA;
  /// RDS MySQL Cluster series instances support creating 1 to 2 secondary nodes at the same time when establishing a new instance. If you have this requirement, you can use this parameter to specify the availability zone for the second secondary node.
  final pulumi.Input<String>? zoneIdSlaveB;

  /// Creates a new [InstanceState].
  /// [acl] The method that is used to verify the identities of clients. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. Valid values:
  /// [autoRenew] Whether to renewal a DB instance automatically or not. It is valid when instance_charge_type is `PrePaid`. Default to `false`.
  /// [autoRenewPeriod] Auto-renewal period of an instance, in the unit of the month. It is valid when instance_charge_type is `PrePaid`. Valid value:[1~12], Default to 1.
  /// [autoUpgradeMinorVersion] The upgrade method to use. Valid values:
  /// [babelfishConfigs] The configuration of an ApsaraDB RDS for PostgreSQL instance for which Babelfish is enabled. See `babelfish_config` below.
  /// [babelfishPort] The TDS port of the instance for which Babelfish is enabled.
  /// [burstingEnabled] Specifies whether to enable the I/O burst feature of general
  /// [caType] The type of the server certificate. This parameter is supported only when the instance runs PostgreSQL or MySQL with standard or enhanced SSDs. If you set the SSLEnabled parameter to 1, the default value of this parameter is aliyun. **NOTE:** From version 1.231.0, `ca_type` start  support `MySQL` engine. Value range:
  /// [category] The RDS edition of the instance. If you want to create a serverless instance, you must use this value. Valid values:
  /// [clientCaCert] The public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the ClientCAEbabled parameter to 1, you must also specify this parameter.
  /// [clientCaEnabled] Specifies whether to enable the public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. Valid values:
  /// [clientCertRevocationList] The CRL that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the ClientCrlEnabled parameter to 1, you must also specify this parameter.
  /// [clientCrlEnabled] Specifies whether to enable a certificate revocation list (CRL) that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. Valid values:
  /// [coldDataEnabled] High performance cloud disk data archiving function switch.Example value:
  /// [connectionString] RDS database connection string.
  /// [connectionStringPrefix] The private connection string prefix. If you want to update public connection string prefix, please use resource alicloud.rds.Connection connection_prefix.
  /// [createTime] (Available since v1.204.1) The creation time of db instance.
  /// [dbInstanceIpArrayAttribute] The attribute of the IP address whitelist. By default, this parameter is empty.
  /// [dbInstanceIpArrayName] The name of the IP address whitelist. Default value: Default.
  /// [dbInstanceStorageType] The storage type of the instance. Serverless instance, only `cloud_essd` can be selected. Valid values:
  /// [dbInstanceType] (Available since v1.197.0) The type of db instance.
  /// [dbIsIgnoreCase] Specifies whether table names on the instance are case-sensitive. Valid values: `true`, `false`.
  /// [dbParamGroupId] Parameter template ID. Only MySQL and PostgreSQL support this parameter. If this parameter is not specified, the default parameter template is used. You can also customize a parameter template and use it here.
  /// [dbTimeZone] The time zone of the instance. This parameter takes effect only when you set the `Engine` parameter to MySQL or PostgreSQL.
  /// [deletionProtection] The switch of delete protection. Valid values:
  /// [direction] The instance configuration type. Valid values: ["Up", "Down", "TempUpgrade", "Serverless"]
  /// [effectiveTime] The method to update the engine version and change.  Default value: Immediate. Valid values:
  /// [encryptionKey] The key id of the KMS. Used for encrypting a disk if not null. Only for PostgreSQL, MySQL and SQLServer.
  /// [engine] Database type. Value options: MySQL, SQLServer, PostgreSQL, MariaDB.
  /// [engineVersion] Database version. Value options can refer to the latest docs [CreateDBInstance](https://www.alibabacloud.com/help/doc-detail/26228.htm) `EngineVersion`.
  /// [force] Specifies whether to enable forcible switching. Valid values:
  /// [forceRestart] Set it to true to make some parameter efficient when modifying them. Default to false.
  /// [freshWhiteListReadins] The read-only instances to which you want to synchronize the IP address whitelist.
  /// [haConfig] The primary/secondary switchover mode of the instance. Default value: Auto. Valid values:
  /// [instanceChargeType] Valid values are `Prepaid`, `Postpaid`, `Serverless`, Default to `Postpaid`. Currently, the resource only supports PostPaid to PrePaid. For more information, see [Overview](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/what-is-serverless?spm=a2c63.p38356.0.0.772a28cfTAGqIv).
  /// [instanceName] The name of DB instance. It a string of 2 to 256 characters.
  /// [instanceStorage] User-defined DB instance storage space. Value range:
  /// [instanceType] DB Instance type. For details, see [Instance type table](https://www.alibabacloud.com/help/doc-detail/26312.htm).
  /// [maintainTime] Maintainable time period format of the instance: HH:MMZ-HH:MMZ (UTC time)
  /// [manualHaTime] The time after when you want to enable automatic primary/secondary switchover. At most, you can set this parameter to 23:59:59 seven days later. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  /// [modifyMode] The method that is used to modify the IP address whitelist. Default value: Cover. Valid values:
  /// [monitoringPeriod] The monitoring frequency in seconds. Valid values are 5, 10, 60, 300. Defaults to 300.
  /// [nodeId] The globally unique identifier (GUID) of the secondary instance. You can call the DescribeDBInstanceHAConfig operation to query the GUID of the secondary instance.
  /// [optimizedWrites] Write optimization function switch. supported engine type: `MySQL`. Valid values:
  /// [parameters] Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm) . See `parameters` below.
  /// [period] The duration that you will buy DB instance (in month). It is valid when instance_charge_type is `PrePaid`. Valid values: [1~9], 12, 24, 36.
  /// [pgBouncerEnabled] Modify the PgBouncer feature of the RDS PostgreSQL instance. Valid values:
  /// [pgHbaConfs] The configuration of [AD domain](https://www.alibabacloud.com/help/en/doc-detail/349288.htm) . See `pg_hba_conf` below.
  /// [port] The private port of the database service. If you want to update public port, please use resource alicloud.rds.Connection port.
  /// [privateIpAddress] The private IP address of the instance. The private IP address must be within the Classless Inter-Domain Routing (CIDR) block of the vSwitch that is specified by the VSwitchId parameter.
  /// [recoveryModel] Enable the Simple Recovery Model for an RDS SQL Server Instance.The Simple Recovery Model feature is only supported by the Basic Series of RDS SQL Server instances. Once this feature is enabled, it cannot be disabled.Valid values:
  /// [releasedKeepPolicy] The policy based on which ApsaraDB RDS retains archived backup files after the instance is released. Valid values:
  /// [replicationAcl] The method that is used to verify the replication permission. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. Valid values:
  /// [resourceGroupId] The ID of resource group which the DB instance belongs.
  /// [roleArn] The Alibaba Cloud Resource Name (ARN) of the RAM role.
  /// [securityGroupId] It has been deprecated from 1.69.0 and use `security_group_ids` instead.
  /// [securityGroupIds] , Available since v1.69.0) The list IDs to join ECS Security Group. At most supports three security groups.
  /// [securityIpMode] Valid values are `normal`, `safety`, Default to `normal`. support `safety` switch to high security access mode.
  /// [securityIpType] The type of IP address in the IP address whitelist.
  /// [securityIps] List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  /// [serverCert] The content of the server certificate. This parameter is supported only when the instance runs PostgreSQL or MySQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter. **NOTE:** From version 1.231.0, `server_cert` start  support `MySQL` engine.
  /// [serverKey] The private key of the server certificate. This parameter is supported only when the instance runs PostgreSQL or MySQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter. **NOTE:** From version 1.231.0, `server_key` start support `MySQL` engine.
  /// [serverlessConfigs] The settings of the serverless instance. This parameter is required when you create a serverless instance. This parameter takes effect only when you create an ApsaraDB RDS for Serverless instance. See `serverless_config` below.
  /// [sqlCollectorConfigValue] The sql collector keep time of the instance. Valid values are `30`, `180`, `365`, `1095`, `1825`, Default to `30`.
  /// [sqlCollectorStatus] The sql collector status of the instance. Valid values are `Enabled`, `Disabled`, Default to `Disabled`.
  /// [sslAction] Actions performed on SSL functions. Valid values:
  /// [sslConnectionString] The internal or public endpoint for which the server certificate needs to be created or updated.
  /// [sslStatus] Status of the SSL feature. `Yes`: SSL is turned on; `No`: SSL is turned off.
  /// [status] (Available since v1.204.1) The status of db instance.
  /// [storageAutoScale] Automatic storage space expansion switch. Valid values:
  /// [storageThreshold] The threshold in percentage based on which an automatic storage expansion is triggered. If the available storage reaches the threshold, ApsaraDB RDS increases the storage capacity of the instance.
  /// [storageUpperBound] The upper limit of the total storage space for automatic expansion of the storage space, that is, automatic expansion will not cause the total storage space of the instance to exceed this value. Unit: GB. The value must be ≥0.
  /// [switchTime] The specific point in time when you want to perform the update. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. It is valid only when `target_minor_version` is changed. The time must be in UTC.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetMinorVersion] The minor engine version to which you want to update the instance. If you do not specify this parameter, the instance is updated to the latest minor engine version. You must specify the minor engine version in one of the following formats:
  /// [tcpConnectionType] The availability check method of the instance. Valid values:
  /// [tdeEncryptionKey] The ID of the custom key.
  /// [tdeStatus] The TDE(Transparent Data Encryption) status. After TDE is turned on, it cannot be turned off. See more [engine and engineVersion limitation](https://www.alibabacloud.com/help/zh/doc-detail/26256.htm).
  /// [templateIdLists] Whitelist Template ID List.
  /// [templates] (Computed, Available since v1.254.0) Whitelist Template Details.
  /// [upgradeDbInstanceKernelVersion] Whether to upgrade a minor version of the kernel. Valid values:
  /// [upgradeTime] The method to update the minor engine version. Default value: Immediate. It is valid only when `target_minor_version` is changed. Valid values:
  /// [vpcId] The VPC ID of the instance.
  /// [vswitchId] The virtual switch ID to launch DB instances in one VPC. If there are multiple vswitches, separate them with commas.
  /// [whitelistNetworkType] The network type of the IP address whitelist. Default value: MIX. Valid values:
  /// [zoneId] The Zone to launch the DB instance. From version 1.8.1, it supports multiple zone.
  /// [zoneIdSlaveA] The region ID of the secondary instance if you create a secondary instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  /// [zoneIdSlaveB] RDS MySQL Cluster series instances support creating 1 to 2 secondary nodes at the same time when establishing a new instance. If you have this requirement, you can use this parameter to specify the availability zone for the second secondary node.
  InstanceState({
    pulumi.Output<String>? acl,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? autoRenewPeriod,
    pulumi.Output<String>? autoUpgradeMinorVersion,
    pulumi.Output<List<InstanceBabelfishConfig>>? babelfishConfigs,
    pulumi.Output<String>? babelfishPort,
    pulumi.Output<bool>? burstingEnabled,
    pulumi.Output<String>? caType,
    pulumi.Output<String>? category,
    pulumi.Output<String>? clientCaCert,
    pulumi.Output<int>? clientCaEnabled,
    pulumi.Output<String>? clientCertRevocationList,
    pulumi.Output<int>? clientCrlEnabled,
    pulumi.Output<bool>? coldDataEnabled,
    pulumi.Output<String>? connectionString,
    pulumi.Output<String>? connectionStringPrefix,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? dbInstanceIpArrayAttribute,
    pulumi.Output<String>? dbInstanceIpArrayName,
    pulumi.Output<String>? dbInstanceStorageType,
    pulumi.Output<String>? dbInstanceType,
    pulumi.Output<bool>? dbIsIgnoreCase,
    pulumi.Output<String>? dbParamGroupId,
    pulumi.Output<String>? dbTimeZone,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? direction,
    pulumi.Output<String>? effectiveTime,
    pulumi.Output<String>? encryptionKey,
    pulumi.Output<String>? engine,
    pulumi.Output<String>? engineVersion,
    pulumi.Output<String>? force,
    pulumi.Output<bool>? forceRestart,
    pulumi.Output<String>? freshWhiteListReadins,
    pulumi.Output<String>? haConfig,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? instanceName,
    pulumi.Output<int>? instanceStorage,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? maintainTime,
    pulumi.Output<String>? manualHaTime,
    pulumi.Output<String>? modifyMode,
    pulumi.Output<int>? monitoringPeriod,
    pulumi.Output<String>? nodeId,
    pulumi.Output<String>? optimizedWrites,
    pulumi.Output<List<InstanceParameter>>? parameters,
    pulumi.Output<int>? period,
    pulumi.Output<bool>? pgBouncerEnabled,
    pulumi.Output<List<InstancePgHbaConf>>? pgHbaConfs,
    pulumi.Output<String>? port,
    pulumi.Output<String>? privateIpAddress,
    pulumi.Output<String>? recoveryModel,
    pulumi.Output<String>? releasedKeepPolicy,
    pulumi.Output<String>? replicationAcl,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? roleArn,
    pulumi.Output<String>? securityGroupId,
    pulumi.Output<List<String>>? securityGroupIds,
    pulumi.Output<String>? securityIpMode,
    pulumi.Output<String>? securityIpType,
    pulumi.Output<List<String>>? securityIps,
    pulumi.Output<String>? serverCert,
    pulumi.Output<String>? serverKey,
    pulumi.Output<List<InstanceServerlessConfig>>? serverlessConfigs,
    pulumi.Output<int>? sqlCollectorConfigValue,
    pulumi.Output<String>? sqlCollectorStatus,
    pulumi.Output<String>? sslAction,
    pulumi.Output<String>? sslConnectionString,
    pulumi.Output<String>? sslStatus,
    pulumi.Output<String>? status,
    pulumi.Output<String>? storageAutoScale,
    pulumi.Output<int>? storageThreshold,
    pulumi.Output<int>? storageUpperBound,
    pulumi.Output<String>? switchTime,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? targetMinorVersion,
    pulumi.Output<String>? tcpConnectionType,
    pulumi.Output<String>? tdeEncryptionKey,
    pulumi.Output<String>? tdeStatus,
    pulumi.Output<List<int>>? templateIdLists,
    pulumi.Output<List<Map<String, String>>>? templates,
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
      babelfishConfigs = pulumi.Input.asOptionalInput<List<InstanceBabelfishConfig>>(babelfishConfigs),
      babelfishPort = pulumi.Input.asOptionalInput<String>(babelfishPort),
      burstingEnabled = pulumi.Input.asOptionalInput<bool>(burstingEnabled),
      caType = pulumi.Input.asOptionalInput<String>(caType),
      category = pulumi.Input.asOptionalInput<String>(category),
      clientCaCert = pulumi.Input.asOptionalInput<String>(clientCaCert),
      clientCaEnabled = pulumi.Input.asOptionalInput<int>(clientCaEnabled),
      clientCertRevocationList = pulumi.Input.asOptionalInput<String>(clientCertRevocationList),
      clientCrlEnabled = pulumi.Input.asOptionalInput<int>(clientCrlEnabled),
      coldDataEnabled = pulumi.Input.asOptionalInput<bool>(coldDataEnabled),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      connectionStringPrefix = pulumi.Input.asOptionalInput<String>(connectionStringPrefix),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      dbInstanceIpArrayAttribute = pulumi.Input.asOptionalInput<String>(dbInstanceIpArrayAttribute),
      dbInstanceIpArrayName = pulumi.Input.asOptionalInput<String>(dbInstanceIpArrayName),
      dbInstanceStorageType = pulumi.Input.asOptionalInput<String>(dbInstanceStorageType),
      dbInstanceType = pulumi.Input.asOptionalInput<String>(dbInstanceType),
      dbIsIgnoreCase = pulumi.Input.asOptionalInput<bool>(dbIsIgnoreCase),
      dbParamGroupId = pulumi.Input.asOptionalInput<String>(dbParamGroupId),
      dbTimeZone = pulumi.Input.asOptionalInput<String>(dbTimeZone),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      direction = pulumi.Input.asOptionalInput<String>(direction),
      effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
      encryptionKey = pulumi.Input.asOptionalInput<String>(encryptionKey),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      engineVersion = pulumi.Input.asOptionalInput<String>(engineVersion),
      force = pulumi.Input.asOptionalInput<String>(force),
      forceRestart = pulumi.Input.asOptionalInput<bool>(forceRestart),
      freshWhiteListReadins = pulumi.Input.asOptionalInput<String>(freshWhiteListReadins),
      haConfig = pulumi.Input.asOptionalInput<String>(haConfig),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      instanceStorage = pulumi.Input.asOptionalInput<int>(instanceStorage),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      maintainTime = pulumi.Input.asOptionalInput<String>(maintainTime),
      manualHaTime = pulumi.Input.asOptionalInput<String>(manualHaTime),
      modifyMode = pulumi.Input.asOptionalInput<String>(modifyMode),
      monitoringPeriod = pulumi.Input.asOptionalInput<int>(monitoringPeriod),
      nodeId = pulumi.Input.asOptionalInput<String>(nodeId),
      optimizedWrites = pulumi.Input.asOptionalInput<String>(optimizedWrites),
      parameters = pulumi.Input.asOptionalInput<List<InstanceParameter>>(parameters),
      period = pulumi.Input.asOptionalInput<int>(period),
      pgBouncerEnabled = pulumi.Input.asOptionalInput<bool>(pgBouncerEnabled),
      pgHbaConfs = pulumi.Input.asOptionalInput<List<InstancePgHbaConf>>(pgHbaConfs),
      port = pulumi.Input.asOptionalInput<String>(port),
      privateIpAddress = pulumi.Input.asOptionalInput<String>(privateIpAddress),
      recoveryModel = pulumi.Input.asOptionalInput<String>(recoveryModel),
      releasedKeepPolicy = pulumi.Input.asOptionalInput<String>(releasedKeepPolicy),
      replicationAcl = pulumi.Input.asOptionalInput<String>(replicationAcl),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      securityGroupId = pulumi.Input.asOptionalInput<String>(securityGroupId),
      securityGroupIds = pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
      securityIpMode = pulumi.Input.asOptionalInput<String>(securityIpMode),
      securityIpType = pulumi.Input.asOptionalInput<String>(securityIpType),
      securityIps = pulumi.Input.asOptionalInput<List<String>>(securityIps),
      serverCert = pulumi.Input.asOptionalInput<String>(serverCert),
      serverKey = pulumi.Input.asOptionalInput<String>(serverKey),
      serverlessConfigs = pulumi.Input.asOptionalInput<List<InstanceServerlessConfig>>(serverlessConfigs),
      sqlCollectorConfigValue = pulumi.Input.asOptionalInput<int>(sqlCollectorConfigValue),
      sqlCollectorStatus = pulumi.Input.asOptionalInput<String>(sqlCollectorStatus),
      sslAction = pulumi.Input.asOptionalInput<String>(sslAction),
      sslConnectionString = pulumi.Input.asOptionalInput<String>(sslConnectionString),
      sslStatus = pulumi.Input.asOptionalInput<String>(sslStatus),
      status = pulumi.Input.asOptionalInput<String>(status),
      storageAutoScale = pulumi.Input.asOptionalInput<String>(storageAutoScale),
      storageThreshold = pulumi.Input.asOptionalInput<int>(storageThreshold),
      storageUpperBound = pulumi.Input.asOptionalInput<int>(storageUpperBound),
      switchTime = pulumi.Input.asOptionalInput<String>(switchTime),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetMinorVersion = pulumi.Input.asOptionalInput<String>(targetMinorVersion),
      tcpConnectionType = pulumi.Input.asOptionalInput<String>(tcpConnectionType),
      tdeEncryptionKey = pulumi.Input.asOptionalInput<String>(tdeEncryptionKey),
      tdeStatus = pulumi.Input.asOptionalInput<String>(tdeStatus),
      templateIdLists = pulumi.Input.asOptionalInput<List<int>>(templateIdLists),
      templates = pulumi.Input.asOptionalInput<List<Map<String, String>>>(templates),
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
      'babelfishConfigs': ?pulumi.Input.mapOptionalInputValue<List<InstanceBabelfishConfig>, List<Map<String, dynamic>>>(babelfishConfigs, (value) => pulumi.Input.encodeList<InstanceBabelfishConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'babelfishPort': ?babelfishPort,
      'burstingEnabled': ?burstingEnabled,
      'caType': ?caType,
      'category': ?category,
      'clientCaCert': ?clientCaCert,
      'clientCaEnabled': ?clientCaEnabled,
      'clientCertRevocationList': ?clientCertRevocationList,
      'clientCrlEnabled': ?clientCrlEnabled,
      'coldDataEnabled': ?coldDataEnabled,
      'connectionString': ?connectionString,
      'connectionStringPrefix': ?connectionStringPrefix,
      'createTime': ?createTime,
      'dbInstanceIpArrayAttribute': ?dbInstanceIpArrayAttribute,
      'dbInstanceIpArrayName': ?dbInstanceIpArrayName,
      'dbInstanceStorageType': ?dbInstanceStorageType,
      'dbInstanceType': ?dbInstanceType,
      'dbIsIgnoreCase': ?dbIsIgnoreCase,
      'dbParamGroupId': ?dbParamGroupId,
      'dbTimeZone': ?dbTimeZone,
      'deletionProtection': ?deletionProtection,
      'direction': ?direction,
      'effectiveTime': ?effectiveTime,
      'encryptionKey': ?encryptionKey,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'force': ?force,
      'forceRestart': ?forceRestart,
      'freshWhiteListReadins': ?freshWhiteListReadins,
      'haConfig': ?haConfig,
      'instanceChargeType': ?instanceChargeType,
      'instanceName': ?instanceName,
      'instanceStorage': ?instanceStorage,
      'instanceType': ?instanceType,
      'maintainTime': ?maintainTime,
      'manualHaTime': ?manualHaTime,
      'modifyMode': ?modifyMode,
      'monitoringPeriod': ?monitoringPeriod,
      'nodeId': ?nodeId,
      'optimizedWrites': ?optimizedWrites,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<InstanceParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<InstanceParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'period': ?period,
      'pgBouncerEnabled': ?pgBouncerEnabled,
      'pgHbaConfs': ?pulumi.Input.mapOptionalInputValue<List<InstancePgHbaConf>, List<Map<String, dynamic>>>(pgHbaConfs, (value) => pulumi.Input.encodeList<InstancePgHbaConf, Map<String, dynamic>>(value, (value) => value.toMap())),
      'port': ?port,
      'privateIpAddress': ?privateIpAddress,
      'recoveryModel': ?recoveryModel,
      'releasedKeepPolicy': ?releasedKeepPolicy,
      'replicationAcl': ?replicationAcl,
      'resourceGroupId': ?resourceGroupId,
      'roleArn': ?roleArn,
      'securityGroupId': ?securityGroupId,
      'securityGroupIds': ?securityGroupIds,
      'securityIpMode': ?securityIpMode,
      'securityIpType': ?securityIpType,
      'securityIps': ?securityIps,
      'serverCert': ?serverCert,
      'serverKey': ?serverKey,
      'serverlessConfigs': ?pulumi.Input.mapOptionalInputValue<List<InstanceServerlessConfig>, List<Map<String, dynamic>>>(serverlessConfigs, (value) => pulumi.Input.encodeList<InstanceServerlessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sqlCollectorConfigValue': ?sqlCollectorConfigValue,
      'sqlCollectorStatus': ?sqlCollectorStatus,
      'sslAction': ?sslAction,
      'sslConnectionString': ?sslConnectionString,
      'sslStatus': ?sslStatus,
      'status': ?status,
      'storageAutoScale': ?storageAutoScale,
      'storageThreshold': ?storageThreshold,
      'storageUpperBound': ?storageUpperBound,
      'switchTime': ?switchTime,
      'tags': ?tags,
      'targetMinorVersion': ?targetMinorVersion,
      'tcpConnectionType': ?tcpConnectionType,
      'tdeEncryptionKey': ?tdeEncryptionKey,
      'tdeStatus': ?tdeStatus,
      'templateIdLists': ?templateIdLists,
      'templates': ?templates,
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

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      acl: map['acl'] == null ? null : pulumi.Output.create<String>(map['acl'] as String),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : pulumi.Output.create<int>(map['autoRenewPeriod'] as int),
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : pulumi.Output.create<String>(map['autoUpgradeMinorVersion'] as String),
      babelfishConfigs: map['babelfishConfigs'] == null ? null : pulumi.Output.create<List<InstanceBabelfishConfig>>(pulumi.Input.decodeList<InstanceBabelfishConfig>(map['babelfishConfigs'], (value) => InstanceBabelfishConfig.fromMap((value as Map).cast<String, dynamic>()))),
      babelfishPort: map['babelfishPort'] == null ? null : pulumi.Output.create<String>(map['babelfishPort'] as String),
      burstingEnabled: map['burstingEnabled'] == null ? null : pulumi.Output.create<bool>(map['burstingEnabled'] as bool),
      caType: map['caType'] == null ? null : pulumi.Output.create<String>(map['caType'] as String),
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      clientCaCert: map['clientCaCert'] == null ? null : pulumi.Output.create<String>(map['clientCaCert'] as String),
      clientCaEnabled: map['clientCaEnabled'] == null ? null : pulumi.Output.create<int>(map['clientCaEnabled'] as int),
      clientCertRevocationList: map['clientCertRevocationList'] == null ? null : pulumi.Output.create<String>(map['clientCertRevocationList'] as String),
      clientCrlEnabled: map['clientCrlEnabled'] == null ? null : pulumi.Output.create<int>(map['clientCrlEnabled'] as int),
      coldDataEnabled: map['coldDataEnabled'] == null ? null : pulumi.Output.create<bool>(map['coldDataEnabled'] as bool),
      connectionString: map['connectionString'] == null ? null : pulumi.Output.create<String>(map['connectionString'] as String),
      connectionStringPrefix: map['connectionStringPrefix'] == null ? null : pulumi.Output.create<String>(map['connectionStringPrefix'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      dbInstanceIpArrayAttribute: map['dbInstanceIpArrayAttribute'] == null ? null : pulumi.Output.create<String>(map['dbInstanceIpArrayAttribute'] as String),
      dbInstanceIpArrayName: map['dbInstanceIpArrayName'] == null ? null : pulumi.Output.create<String>(map['dbInstanceIpArrayName'] as String),
      dbInstanceStorageType: map['dbInstanceStorageType'] == null ? null : pulumi.Output.create<String>(map['dbInstanceStorageType'] as String),
      dbInstanceType: map['dbInstanceType'] == null ? null : pulumi.Output.create<String>(map['dbInstanceType'] as String),
      dbIsIgnoreCase: map['dbIsIgnoreCase'] == null ? null : pulumi.Output.create<bool>(map['dbIsIgnoreCase'] as bool),
      dbParamGroupId: map['dbParamGroupId'] == null ? null : pulumi.Output.create<String>(map['dbParamGroupId'] as String),
      dbTimeZone: map['dbTimeZone'] == null ? null : pulumi.Output.create<String>(map['dbTimeZone'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      effectiveTime: map['effectiveTime'] == null ? null : pulumi.Output.create<String>(map['effectiveTime'] as String),
      encryptionKey: map['encryptionKey'] == null ? null : pulumi.Output.create<String>(map['encryptionKey'] as String),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      engineVersion: map['engineVersion'] == null ? null : pulumi.Output.create<String>(map['engineVersion'] as String),
      force: map['force'] == null ? null : pulumi.Output.create<String>(map['force'] as String),
      forceRestart: map['forceRestart'] == null ? null : pulumi.Output.create<bool>(map['forceRestart'] as bool),
      freshWhiteListReadins: map['freshWhiteListReadins'] == null ? null : pulumi.Output.create<String>(map['freshWhiteListReadins'] as String),
      haConfig: map['haConfig'] == null ? null : pulumi.Output.create<String>(map['haConfig'] as String),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      instanceStorage: map['instanceStorage'] == null ? null : pulumi.Output.create<int>(map['instanceStorage'] as int),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      maintainTime: map['maintainTime'] == null ? null : pulumi.Output.create<String>(map['maintainTime'] as String),
      manualHaTime: map['manualHaTime'] == null ? null : pulumi.Output.create<String>(map['manualHaTime'] as String),
      modifyMode: map['modifyMode'] == null ? null : pulumi.Output.create<String>(map['modifyMode'] as String),
      monitoringPeriod: map['monitoringPeriod'] == null ? null : pulumi.Output.create<int>(map['monitoringPeriod'] as int),
      nodeId: map['nodeId'] == null ? null : pulumi.Output.create<String>(map['nodeId'] as String),
      optimizedWrites: map['optimizedWrites'] == null ? null : pulumi.Output.create<String>(map['optimizedWrites'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<InstanceParameter>>(pulumi.Input.decodeList<InstanceParameter>(map['parameters'], (value) => InstanceParameter.fromMap((value as Map).cast<String, dynamic>()))),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      pgBouncerEnabled: map['pgBouncerEnabled'] == null ? null : pulumi.Output.create<bool>(map['pgBouncerEnabled'] as bool),
      pgHbaConfs: map['pgHbaConfs'] == null ? null : pulumi.Output.create<List<InstancePgHbaConf>>(pulumi.Input.decodeList<InstancePgHbaConf>(map['pgHbaConfs'], (value) => InstancePgHbaConf.fromMap((value as Map).cast<String, dynamic>()))),
      port: map['port'] == null ? null : pulumi.Output.create<String>(map['port'] as String),
      privateIpAddress: map['privateIpAddress'] == null ? null : pulumi.Output.create<String>(map['privateIpAddress'] as String),
      recoveryModel: map['recoveryModel'] == null ? null : pulumi.Output.create<String>(map['recoveryModel'] as String),
      releasedKeepPolicy: map['releasedKeepPolicy'] == null ? null : pulumi.Output.create<String>(map['releasedKeepPolicy'] as String),
      replicationAcl: map['replicationAcl'] == null ? null : pulumi.Output.create<String>(map['replicationAcl'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      securityGroupId: map['securityGroupId'] == null ? null : pulumi.Output.create<String>(map['securityGroupId'] as String),
      securityGroupIds: map['securityGroupIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroupIds'] as List).cast<String>()),
      securityIpMode: map['securityIpMode'] == null ? null : pulumi.Output.create<String>(map['securityIpMode'] as String),
      securityIpType: map['securityIpType'] == null ? null : pulumi.Output.create<String>(map['securityIpType'] as String),
      securityIps: map['securityIps'] == null ? null : pulumi.Output.create<List<String>>((map['securityIps'] as List).cast<String>()),
      serverCert: map['serverCert'] == null ? null : pulumi.Output.create<String>(map['serverCert'] as String),
      serverKey: map['serverKey'] == null ? null : pulumi.Output.create<String>(map['serverKey'] as String),
      serverlessConfigs: map['serverlessConfigs'] == null ? null : pulumi.Output.create<List<InstanceServerlessConfig>>(pulumi.Input.decodeList<InstanceServerlessConfig>(map['serverlessConfigs'], (value) => InstanceServerlessConfig.fromMap((value as Map).cast<String, dynamic>()))),
      sqlCollectorConfigValue: map['sqlCollectorConfigValue'] == null ? null : pulumi.Output.create<int>(map['sqlCollectorConfigValue'] as int),
      sqlCollectorStatus: map['sqlCollectorStatus'] == null ? null : pulumi.Output.create<String>(map['sqlCollectorStatus'] as String),
      sslAction: map['sslAction'] == null ? null : pulumi.Output.create<String>(map['sslAction'] as String),
      sslConnectionString: map['sslConnectionString'] == null ? null : pulumi.Output.create<String>(map['sslConnectionString'] as String),
      sslStatus: map['sslStatus'] == null ? null : pulumi.Output.create<String>(map['sslStatus'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      storageAutoScale: map['storageAutoScale'] == null ? null : pulumi.Output.create<String>(map['storageAutoScale'] as String),
      storageThreshold: map['storageThreshold'] == null ? null : pulumi.Output.create<int>(map['storageThreshold'] as int),
      storageUpperBound: map['storageUpperBound'] == null ? null : pulumi.Output.create<int>(map['storageUpperBound'] as int),
      switchTime: map['switchTime'] == null ? null : pulumi.Output.create<String>(map['switchTime'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetMinorVersion: map['targetMinorVersion'] == null ? null : pulumi.Output.create<String>(map['targetMinorVersion'] as String),
      tcpConnectionType: map['tcpConnectionType'] == null ? null : pulumi.Output.create<String>(map['tcpConnectionType'] as String),
      tdeEncryptionKey: map['tdeEncryptionKey'] == null ? null : pulumi.Output.create<String>(map['tdeEncryptionKey'] as String),
      tdeStatus: map['tdeStatus'] == null ? null : pulumi.Output.create<String>(map['tdeStatus'] as String),
      templateIdLists: map['templateIdLists'] == null ? null : pulumi.Output.create<List<int>>((map['templateIdLists'] as List).cast<int>()),
      templates: map['templates'] == null ? null : pulumi.Output.create<List<Map<String, String>>>((map['templates'] as List).cast<Map<String, String>>()),
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

