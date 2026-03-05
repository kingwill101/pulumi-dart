// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_babelfish_config.dart';
import 'instance_parameter.dart';
import 'instance_pg_hba_conf.dart';
import 'instance_serverless_config.dart';

/// {@template pulumi_rds_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_rds_instance_instance_args_doc}
class InstanceArgs {
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
  /// &gt; **NOTE:** This parameter takes effect only when you create an ApsaraDB RDS for PostgreSQL instance. For more information, see [Introduction to Babelfish](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/babelfish-for-pg).
  final pulumi.Input<List<InstanceBabelfishConfig>>? babelfishConfigs;
  /// The TDS port of the instance for which Babelfish is enabled.
  ///
  /// &gt; **NOTE:** This parameter applies only to ApsaraDB RDS for PostgreSQL instances. For more information about Babelfish for ApsaraDB RDS for PostgreSQL, see [Introduction to Babelfish](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/babelfish-for-pg).
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
  /// &gt; **NOTE:** `zone_id_slave_a` and `zone_id_slave_b` can specify slave zone ids when creating the high-availability or enterprise edition instances. Meanwhile, `vswitch_id` needs to pass in the corresponding vswitch id to the slave zone by order (If the `vswitch_id` is not specified, the classic network version will be created). For example, `zone_id` = "zone-a" and `zone_id_slave_a` = "zone-c", `zone_id_slave_b` = "zone-b", then the `vswitch_id` must be "vsw-zone-a,vsw-zone-c,vsw-zone-b". Of course, you can also choose automatic allocation , for example, `zone_id` = "zone-a" and `zone_id_slave_a` = "Auto",`zone_id_slave_b` = "Auto", then the `vswitch_id` must be "vsw-zone-a,Auto,Auto". The list contains up to 2 slave zone ids , separated by commas.
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
  /// The storage type of the instance. Serverless instance, only `cloud_essd` can be selected. Valid values:
  /// - local_ssd: specifies to use local SSDs. This value is recommended.
  /// - cloud_ssd: specifies to use standard SSDs.
  /// - cloud_essd: specifies to use enhanced SSDs (ESSDs).
  /// - cloud_essd2: specifies to use enhanced SSDs (ESSDs).
  /// - cloud_essd3: specifies to use enhanced SSDs (ESSDs).
  /// - general_essd: general essd.
  final pulumi.Input<String>? dbInstanceStorageType;
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
  /// &gt; **NOTE:** You can specify the time zone when you create a primary instance. You cannot specify the time zone when you create a read-only instance. Read-only instances inherit the time zone of their primary instance. If you do not specify this parameter, the system assigns the default time zone of the region where the instance resides.
  final pulumi.Input<String>? dbTimeZone;
  /// The switch of delete protection. Valid values:
  /// - true: delete protect.
  /// - false: no delete protect.
  ///
  /// &gt; **NOTE:** `deletion_protection` is valid only when attribute `instance_charge_type` is set to `Postpaid` or `Serverless`, supported engine type: `MySQL`, `PostgreSQL`, `MariaDB`, `MSSQL`.
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
  /// - &lt;Key ID&gt;: Use a custom key to enable cloud disk encryption or change the current key. For example: 494c98ce-f2b5-48ab-96ab-36c986b6****.
  /// - disabled: Turn off cloud disk encryption.
  /// &gt; **NOTE:** This parameter is available when the instance runs MySQL.
  final pulumi.Input<String>? encryptionKey;
  /// Database type. Value options: MySQL, SQLServer, PostgreSQL, MariaDB.
  ///
  /// &gt; **NOTE:** When the 'engine_version' changes, it can be used as the target database version for the large version upgrade of RDS for MySQL instance.
  final pulumi.Input<String> engine;
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
  final pulumi.Input<String> engineVersion;
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
  final pulumi.Input<int> instanceStorage;
  /// DB Instance type. For details, see [Instance type table](https://www.alibabacloud.com/help/doc-detail/26312.htm).
  /// - To create a serverless instance, please pass the following values:
  /// - MySQL basic: mysql.n2.serverless.1c
  /// - MySQL high availability: mysql.n2.serverless.2c
  /// - SQLServer high availability: mssql.mem2.serverless.s2
  /// - PostgreSQL basic: pg.n2.serverless.1c
  ///
  /// &gt; **NOTE:** When `storage_auto_scale="Enable"`, do not perform `instance_storage` check. when `storage_auto_scale="Disable"`, if the instance itself `instance_storage`has changed. You need to manually revise the `instance_storage` in the template value. When `payment_type="Serverless"` and when modifying, do not perform `instance_storage` check. Otherwise, check.
  final pulumi.Input<String> instanceType;
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
  /// &gt; **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
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
  /// &gt; **NOTE:** If you set this parameter to Manual, you must specify the ManualHATime parameter.
  final pulumi.Input<String>? recoveryModel;
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
  /// The Alibaba Cloud Resource Name (ARN) of the RAM role.
  ///
  /// &gt; **NOTE:**  This parameter is not required when creating an instance running MySQL, PostgreSQL, or SQL Server.It is required only when you need to create an instance with cloud disk encryption enabled using a specified key ID.
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
  /// &gt; **NOTE:** This parameter takes effect when sql_collector_status is set to Enabled and does not take effect when sql_collector_status is set to Disabled.
  final pulumi.Input<int>? sqlCollectorConfigValue;
  /// The sql collector status of the instance. Valid values are `Enabled`, `Disabled`, Default to `Disabled`.
  final pulumi.Input<String>? sqlCollectorStatus;
  /// Actions performed on SSL functions. Valid values:
  /// `Open`: turn on SSL encryption;
  /// `Close`: turn off SSL encryption;
  /// `Update`: update SSL certificate.
  /// See more [engine and engineVersion limitation](https://www.alibabacloud.com/help/zh/doc-detail/26254.htm).
  ///
  /// &gt; **NOTE:** The attribute `ssl_action` will be ignored when setting `instance_charge_type = "Serverless"` for SQLServer, PostgreSQL or MariaDB.
  final pulumi.Input<String>? sslAction;
  /// The internal or public endpoint for which the server certificate needs to be created or updated.
  final pulumi.Input<String>? sslConnectionString;
  /// Automatic storage space expansion switch. Valid values:
  /// - Enable
  /// - Disable
  ///
  /// &gt; **NOTE:** This parameter only takes effect when the StorageAutoScale parameter is set to Enable.
  final pulumi.Input<String>? storageAutoScale;
  /// The threshold in percentage based on which an automatic storage expansion is triggered. If the available storage reaches the threshold, ApsaraDB RDS increases the storage capacity of the instance.
  /// Valid values: [10, 20, 30, 40, 50].
  ///
  /// &gt; **NOTE:** This parameter only takes effect when the StorageAutoScale parameter is set to Enable. The value must be greater than or equal to the total size of the current storage space of the instance.
  final pulumi.Input<int>? storageThreshold;
  /// The upper limit of the total storage space for automatic expansion of the storage space, that is, automatic expansion will not cause the total storage space of the instance to exceed this value. Unit: GB. The value must be ≥0.
  ///
  /// &gt; **NOTE:** Because of data backup and migration, change DB instance type and storage would cost 15~20 minutes. Please make full preparation before changing them.
  final pulumi.Input<int>? storageUpperBound;
  /// The specific point in time when you want to perform the update. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. It is valid only when `target_minor_version` is changed. The time must be in UTC.
  ///
  /// &gt; **NOTE:** This parameter takes effect only when you set the UpgradeTime parameter to SpecifyTime.
  final pulumi.Input<String>? switchTime;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  ///
  /// Note: From 1.63.0, the tag key and value are case sensitive. Before that, they are not case sensitive.
  final pulumi.Input<Map<String, String>>? tags;
  /// The minor engine version to which you want to update the instance. If you do not specify this parameter, the instance is updated to the latest minor engine version. You must specify the minor engine version in one of the following formats:
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
  /// The ID of the custom key.
  final pulumi.Input<String>? tdeEncryptionKey;
  /// The TDE(Transparent Data Encryption) status. After TDE is turned on, it cannot be turned off. See more [engine and engineVersion limitation](https://www.alibabacloud.com/help/zh/doc-detail/26256.htm).
  ///
  /// &gt; **NOTE:** When creating an instance and enabling disk encryption, the value of encryption_key can only be a Key ID; it cannot be a ServiceKey. After the instance is created, you can manage the disk encryption using: ServiceKey, Key ID, or disabled.
  final pulumi.Input<String>? tdeStatus;
  /// Whitelist Template ID List.
  final pulumi.Input<List<int>>? templateIdLists;
  /// Whether to upgrade a minor version of the kernel. Valid values:
  /// - true: upgrade
  /// - false: not to upgrade
  ///
  /// &gt; **NOTE:** Database Engine and Version: Supports only MySQL 5.7 or 8.0 instances.
  /// &gt; **NOTE:** Storage Type: Supports only ESSD cloud disks and general-purpose cloud disks.
  /// &gt; **NOTE:** Activation Stage: Supports only during instance creation or when enabling write optimization features for existing  (high-availability/cluster series) instances.
  final pulumi.Input<bool>? upgradeDbInstanceKernelVersion;
  /// The method to update the minor engine version. Default value: Immediate. It is valid only when `target_minor_version` is changed. Valid values:
  /// - Immediate: The minor engine version is immediately updated.
  /// - MaintainTime: The minor engine version is updated during the maintenance window. For more information about how to change the maintenance window, see ModifyDBInstanceMaintainTime.
  /// - SpecifyTime: The minor engine version is updated at the point in time you specify.
  final pulumi.Input<String>? upgradeTime;
  /// The VPC ID of the instance.
  ///
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
  /// The Zone to launch the DB instance. From version 1.8.1, it supports multiple zone.
  /// If it is a multi-zone and `vswitch_id` is specified, the vswitch must in the one of them.
  /// The multiple zone ID can be retrieved by setting `multi` to "true" in the data source `alicloud.getZones`.
  final pulumi.Input<String>? zoneId;
  /// The region ID of the secondary instance if you create a secondary instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  final pulumi.Input<String>? zoneIdSlaveA;
  /// RDS MySQL Cluster series instances support creating 1 to 2 secondary nodes at the same time when establishing a new instance. If you have this requirement, you can use this parameter to specify the availability zone for the second secondary node.
  final pulumi.Input<String>? zoneIdSlaveB;

  /// Creates a new [InstanceArgs].
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
  /// [connectionStringPrefix] The private connection string prefix. If you want to update public connection string prefix, please use resource alicloud.rds.Connection connection_prefix.
  /// [dbInstanceIpArrayAttribute] The attribute of the IP address whitelist. By default, this parameter is empty.
  /// [dbInstanceIpArrayName] The name of the IP address whitelist. Default value: Default.
  /// [dbInstanceStorageType] The storage type of the instance. Serverless instance, only `cloud_essd` can be selected. Valid values:
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
  /// [upgradeDbInstanceKernelVersion] Whether to upgrade a minor version of the kernel. Valid values:
  /// [upgradeTime] The method to update the minor engine version. Default value: Immediate. It is valid only when `target_minor_version` is changed. Valid values:
  /// [vpcId] The VPC ID of the instance.
  /// [vswitchId] The virtual switch ID to launch DB instances in one VPC. If there are multiple vswitches, separate them with commas.
  /// [whitelistNetworkType] The network type of the IP address whitelist. Default value: MIX. Valid values:
  /// [zoneId] The Zone to launch the DB instance. From version 1.8.1, it supports multiple zone.
  /// [zoneIdSlaveA] The region ID of the secondary instance if you create a secondary instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  /// [zoneIdSlaveB] RDS MySQL Cluster series instances support creating 1 to 2 secondary nodes at the same time when establishing a new instance. If you have this requirement, you can use this parameter to specify the availability zone for the second secondary node.
  InstanceArgs({
    this.acl,
    this.autoRenew,
    this.autoRenewPeriod,
    this.autoUpgradeMinorVersion,
    this.babelfishConfigs,
    this.babelfishPort,
    this.burstingEnabled,
    this.caType,
    this.category,
    this.clientCaCert,
    this.clientCaEnabled,
    this.clientCertRevocationList,
    this.clientCrlEnabled,
    this.coldDataEnabled,
    this.connectionStringPrefix,
    this.dbInstanceIpArrayAttribute,
    this.dbInstanceIpArrayName,
    this.dbInstanceStorageType,
    this.dbIsIgnoreCase,
    this.dbParamGroupId,
    this.dbTimeZone,
    this.deletionProtection,
    this.direction,
    this.effectiveTime,
    this.encryptionKey,
    required this.engine,
    required this.engineVersion,
    this.force,
    this.forceRestart,
    this.freshWhiteListReadins,
    this.haConfig,
    this.instanceChargeType,
    this.instanceName,
    required this.instanceStorage,
    required this.instanceType,
    this.maintainTime,
    this.manualHaTime,
    this.modifyMode,
    this.monitoringPeriod,
    this.nodeId,
    this.optimizedWrites,
    this.parameters,
    this.period,
    this.pgBouncerEnabled,
    this.pgHbaConfs,
    this.port,
    this.privateIpAddress,
    this.recoveryModel,
    this.releasedKeepPolicy,
    this.replicationAcl,
    this.resourceGroupId,
    this.roleArn,
    this.securityGroupId,
    this.securityGroupIds,
    this.securityIpMode,
    this.securityIpType,
    this.securityIps,
    this.serverCert,
    this.serverKey,
    this.serverlessConfigs,
    this.sqlCollectorConfigValue,
    this.sqlCollectorStatus,
    this.sslAction,
    this.sslConnectionString,
    this.storageAutoScale,
    this.storageThreshold,
    this.storageUpperBound,
    this.switchTime,
    this.tags,
    this.targetMinorVersion,
    this.tcpConnectionType,
    this.tdeEncryptionKey,
    this.tdeStatus,
    this.templateIdLists,
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
      'connectionStringPrefix': ?connectionStringPrefix,
      'dbInstanceIpArrayAttribute': ?dbInstanceIpArrayAttribute,
      'dbInstanceIpArrayName': ?dbInstanceIpArrayName,
      'dbInstanceStorageType': ?dbInstanceStorageType,
      'dbIsIgnoreCase': ?dbIsIgnoreCase,
      'dbParamGroupId': ?dbParamGroupId,
      'dbTimeZone': ?dbTimeZone,
      'deletionProtection': ?deletionProtection,
      'direction': ?direction,
      'effectiveTime': ?effectiveTime,
      'encryptionKey': ?encryptionKey,
      'engine': engine,
      'engineVersion': engineVersion,
      'force': ?force,
      'forceRestart': ?forceRestart,
      'freshWhiteListReadins': ?freshWhiteListReadins,
      'haConfig': ?haConfig,
      'instanceChargeType': ?instanceChargeType,
      'instanceName': ?instanceName,
      'instanceStorage': instanceStorage,
      'instanceType': instanceType,
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

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      acl: (() { final guardedValue = map['acl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoRenew: (() { final guardedValue = map['autoRenew']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoRenewPeriod: (() { final guardedValue = map['autoRenewPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      autoUpgradeMinorVersion: (() { final guardedValue = map['autoUpgradeMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      babelfishConfigs: (() { final guardedValue = map['babelfishConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceBabelfishConfig>(guardedValue, (value) => InstanceBabelfishConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      babelfishPort: (() { final guardedValue = map['babelfishPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      burstingEnabled: (() { final guardedValue = map['burstingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      caType: (() { final guardedValue = map['caType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCaCert: (() { final guardedValue = map['clientCaCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCaEnabled: (() { final guardedValue = map['clientCaEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clientCertRevocationList: (() { final guardedValue = map['clientCertRevocationList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCrlEnabled: (() { final guardedValue = map['clientCrlEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      coldDataEnabled: (() { final guardedValue = map['coldDataEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectionStringPrefix: (() { final guardedValue = map['connectionStringPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceIpArrayAttribute: (() { final guardedValue = map['dbInstanceIpArrayAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceIpArrayName: (() { final guardedValue = map['dbInstanceIpArrayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceStorageType: (() { final guardedValue = map['dbInstanceStorageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbIsIgnoreCase: (() { final guardedValue = map['dbIsIgnoreCase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dbParamGroupId: (() { final guardedValue = map['dbParamGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbTimeZone: (() { final guardedValue = map['dbTimeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveTime: (() { final guardedValue = map['effectiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      force: (() { final guardedValue = map['force']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceRestart: (() { final guardedValue = map['forceRestart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      freshWhiteListReadins: (() { final guardedValue = map['freshWhiteListReadins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      haConfig: (() { final guardedValue = map['haConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceChargeType: (() { final guardedValue = map['instanceChargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceName: (() { final guardedValue = map['instanceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceStorage: pulumi.Input.fromValue(map['instanceStorage'] as int),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      maintainTime: (() { final guardedValue = map['maintainTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      manualHaTime: (() { final guardedValue = map['manualHaTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifyMode: (() { final guardedValue = map['modifyMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringPeriod: (() { final guardedValue = map['monitoringPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optimizedWrites: (() { final guardedValue = map['optimizedWrites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceParameter>(guardedValue, (value) => InstanceParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pgBouncerEnabled: (() { final guardedValue = map['pgBouncerEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pgHbaConfs: (() { final guardedValue = map['pgHbaConfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstancePgHbaConf>(guardedValue, (value) => InstancePgHbaConf.fromMap((value as Map).cast<String, dynamic>()))); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryModel: (() { final guardedValue = map['recoveryModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releasedKeepPolicy: (() { final guardedValue = map['releasedKeepPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationAcl: (() { final guardedValue = map['replicationAcl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupId: (() { final guardedValue = map['securityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      securityIpMode: (() { final guardedValue = map['securityIpMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityIpType: (() { final guardedValue = map['securityIpType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityIps: (() { final guardedValue = map['securityIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serverCert: (() { final guardedValue = map['serverCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverKey: (() { final guardedValue = map['serverKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverlessConfigs: (() { final guardedValue = map['serverlessConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceServerlessConfig>(guardedValue, (value) => InstanceServerlessConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sqlCollectorConfigValue: (() { final guardedValue = map['sqlCollectorConfigValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sqlCollectorStatus: (() { final guardedValue = map['sqlCollectorStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslAction: (() { final guardedValue = map['sslAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslConnectionString: (() { final guardedValue = map['sslConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAutoScale: (() { final guardedValue = map['storageAutoScale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageThreshold: (() { final guardedValue = map['storageThreshold']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageUpperBound: (() { final guardedValue = map['storageUpperBound']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      switchTime: (() { final guardedValue = map['switchTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetMinorVersion: (() { final guardedValue = map['targetMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tcpConnectionType: (() { final guardedValue = map['tcpConnectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tdeEncryptionKey: (() { final guardedValue = map['tdeEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tdeStatus: (() { final guardedValue = map['tdeStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateIdLists: (() { final guardedValue = map['templateIdLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
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

