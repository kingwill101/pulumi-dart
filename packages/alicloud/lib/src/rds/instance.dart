import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_args.dart';
import 'instance_babelfish_config.dart';
import 'instance_parameter.dart';
import 'instance_pg_hba_conf.dart';
import 'instance_serverless_config.dart';

/// ## Import
///
/// RDS instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/instance:Instance example rm-abc12345678
/// ```
class Instance extends pulumi.CustomResource {
  /// The method that is used to verify the identities of clients. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. Valid values:
  /// - cert
  /// - perfer
  /// - verify-ca
  /// - verify-full (supported only when the instance runs PostgreSQL 12 or later)
  late final pulumi.Output<String> acl;
  /// Whether to renewal a DB instance automatically or not. It is valid when instance_charge_type is `PrePaid`. Default to `false`.
  late final pulumi.Output<bool?> autoRenew;
  /// Auto-renewal period of an instance, in the unit of the month. It is valid when instance_charge_type is `PrePaid`. Valid value:[1~12], Default to 1.
  late final pulumi.Output<int?> autoRenewPeriod;
  /// The upgrade method to use. Valid values:
  /// - Auto: Instances are automatically upgraded to a higher minor version.
  /// - Manual: Instances are forcibly upgraded to a higher minor version when the current version is unpublished.
  ///
  /// See more [details and limitation](https://www.alibabacloud.com/help/doc-detail/123605.htm).
  late final pulumi.Output<String> autoUpgradeMinorVersion;
  /// The configuration of an ApsaraDB RDS for PostgreSQL instance for which Babelfish is enabled. See `babelfish_config` below.
  ///
  /// > **NOTE:** This parameter takes effect only when you create an ApsaraDB RDS for PostgreSQL instance. For more information, see [Introduction to Babelfish](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/babelfish-for-pg).
  late final pulumi.Output<List<InstanceBabelfishConfig>> babelfishConfigs;
  /// The TDS port of the instance for which Babelfish is enabled.
  ///
  /// > **NOTE:** This parameter applies only to ApsaraDB RDS for PostgreSQL instances. For more information about Babelfish for ApsaraDB RDS for PostgreSQL, see [Introduction to Babelfish](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/babelfish-for-pg).
  late final pulumi.Output<String> babelfishPort;
  /// Specifies whether to enable the I/O burst feature of general
  /// ESSDs. Valid values:
  /// - true
  /// - false
  late final pulumi.Output<bool?> burstingEnabled;
  /// The type of the server certificate. This parameter is supported only when the instance runs PostgreSQL or MySQL with standard or enhanced SSDs. If you set the SSLEnabled parameter to 1, the default value of this parameter is aliyun. **NOTE:** From version 1.231.0, `ca_type` start  support `MySQL` engine. Value range:
  /// - aliyun: a cloud certificate
  /// - custom: a custom certificate
  late final pulumi.Output<String> caType;
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
  late final pulumi.Output<String> category;
  /// The public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the ClientCAEbabled parameter to 1, you must also specify this parameter.
  late final pulumi.Output<String?> clientCaCert;
  /// Specifies whether to enable the public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. Valid values:
  /// - 1: enables the public key
  /// - 0: disables the public key
  late final pulumi.Output<int?> clientCaEnabled;
  /// The CRL that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the ClientCrlEnabled parameter to 1, you must also specify this parameter.
  late final pulumi.Output<String?> clientCertRevocationList;
  /// Specifies whether to enable a certificate revocation list (CRL) that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. Valid values:
  /// - 1: enables the CRL
  /// - 0: disables the CRL
  late final pulumi.Output<int?> clientCrlEnabled;
  /// High performance cloud disk data archiving function switch.Example value:
  /// - true: Enable high-performance cloud disk data archiving function.
  /// - false: Disable high-performance cloud disk data archiving function.
  late final pulumi.Output<bool?> coldDataEnabled;
  /// RDS database connection string.
  late final pulumi.Output<String> connectionString;
  /// The private connection string prefix. If you want to update public connection string prefix, please use resource alicloud.rds.Connection connection_prefix.
  /// > **NOTE:** The prefix must be 8 to 64 characters in length and can contain letters, digits, and hyphens (-). It cannot contain Chinese characters and special characters ~!#%^&*=+\|{};:'",<>/?
  late final pulumi.Output<String> connectionStringPrefix;
  /// (Available since v1.204.1) The creation time of db instance.
  late final pulumi.Output<String> createTime;
  /// The attribute of the IP address whitelist. By default, this parameter is empty.
  ///
  /// > **NOTE:** The IP address whitelists that have the hidden attribute are not displayed in the ApsaraDB RDS console. These IP address whitelists are used to access Alibaba Cloud services, such as Data Transmission Service (DTS).
  late final pulumi.Output<String?> dbInstanceIpArrayAttribute;
  /// The name of the IP address whitelist. Default value: Default.
  ///
  /// > **NOTE:** A maximum of 200 IP address whitelists can be configured for each instance.
  late final pulumi.Output<String?> dbInstanceIpArrayName;
  /// The storage type of the instance. Serverless instance, only `cloud_essd` can be selected. Valid values:
  /// - local_ssd: specifies to use local SSDs. This value is recommended.
  /// - cloud_ssd: specifies to use standard SSDs.
  /// - cloud_essd: specifies to use enhanced SSDs (ESSDs).
  /// - cloud_essd2: specifies to use enhanced SSDs (ESSDs).
  /// - cloud_essd3: specifies to use enhanced SSDs (ESSDs).
  /// - general_essd: general essd.
  late final pulumi.Output<String> dbInstanceStorageType;
  /// (Available since v1.197.0) The type of db instance.
  late final pulumi.Output<String> dbInstanceType;
  /// Specifies whether table names on the instance are case-sensitive. Valid values: `true`, `false`.
  late final pulumi.Output<bool> dbIsIgnoreCase;
  /// Parameter template ID. Only MySQL and PostgreSQL support this parameter. If this parameter is not specified, the default parameter template is used. You can also customize a parameter template and use it here.
  late final pulumi.Output<String?> dbParamGroupId;
  /// The time zone of the instance. This parameter takes effect only when you set the `Engine` parameter to MySQL or PostgreSQL.
  /// - If you set the `Engine` parameter to MySQL.
  /// - This time zone of the instance is in UTC. Valid values: -12:59 to +13:00.
  /// - You can specify this parameter when the instance is equipped with local SSDs. For example, you can specify the time zone to Asia/Hong_Kong. For more information about time zones, see [Time zones](https://www.alibabacloud.com/help/doc-detail/297356.htm).
  /// - If you set the `Engine` parameter to PostgreSQL.
  /// - This time zone of the instance is not in UTC. For more information about time zones, see [Time zones](https://www.alibabacloud.com/help/doc-detail/297356.htm).
  /// - You can specify this parameter only when the instance is equipped with standard SSDs or ESSDs.
  ///
  /// > **NOTE:** You can specify the time zone when you create a primary instance. You cannot specify the time zone when you create a read-only instance. Read-only instances inherit the time zone of their primary instance. If you do not specify this parameter, the system assigns the default time zone of the region where the instance resides.
  late final pulumi.Output<String> dbTimeZone;
  /// The switch of delete protection. Valid values:
  /// - true: delete protect.
  /// - false: no delete protect.
  ///
  /// > **NOTE:** `deletion_protection` is valid only when attribute `instance_charge_type` is set to `Postpaid` or `Serverless`, supported engine type: `MySQL`, `PostgreSQL`, `MariaDB`, `MSSQL`.
  late final pulumi.Output<bool?> deletionProtection;
  /// The instance configuration type. Valid values: ["Up", "Down", "TempUpgrade", "Serverless"]
  late final pulumi.Output<String?> direction;
  /// The method to update the engine version and change.  Default value: Immediate. Valid values:
  /// - Immediate: The change immediately takes effect.
  /// - MaintainTime: The change takes effect during the specified maintenance window. For more information, see ModifyDBInstanceMaintainTime.
  late final pulumi.Output<String?> effectiveTime;
  /// The key id of the KMS. Used for encrypting a disk if not null. Only for PostgreSQL, MySQL and SQLServer.
  /// When the instance is PostgreSQL, this parameter can be used to enable, modify, and disable cloud disk encryption.Value range:
  /// - ServiceKey: Enable disk encryption using the service-managed key (Default Service CMK) automatically generated by Alibaba Cloud RDS.
  /// - <Key ID>: Use a custom key to enable cloud disk encryption or change the current key. For example: 494c98ce-f2b5-48ab-96ab-36c986b6****.
  /// - disabled: Turn off cloud disk encryption.
  /// > **NOTE:** This parameter is available when the instance runs MySQL.
  late final pulumi.Output<String> encryptionKey;
  /// Database type. Value options: MySQL, SQLServer, PostgreSQL, MariaDB.
  ///
  /// > **NOTE:** When the 'engine_version' changes, it can be used as the target database version for the large version upgrade of RDS for MySQL instance.
  late final pulumi.Output<String> engine;
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
  late final pulumi.Output<String> engineVersion;
  /// Specifies whether to enable forcible switching. Valid values:
  /// - Yes
  /// - No
  late final pulumi.Output<String?> force;
  /// Set it to true to make some parameter efficient when modifying them. Default to false.
  late final pulumi.Output<bool?> forceRestart;
  /// The read-only instances to which you want to synchronize the IP address whitelist.
  /// * If the instance is attached with a read-only instance, you can use this parameter to synchronize the IP address whitelist to the read-only instance. If the instance is attached with multiple read-only instances, the read-only instances must be separated by commas (,).
  /// * If the instance is not attached with a read-only instance, this parameter is empty.
  late final pulumi.Output<String?> freshWhiteListReadins;
  /// The primary/secondary switchover mode of the instance. Default value: Auto. Valid values:
  /// - Auto: The system automatically switches over services from the primary to secondary instances in the event of a fault.
  /// - Manual: You must manually switch over services from the primary to secondary instances in the event of a fault.
  late final pulumi.Output<String> haConfig;
  /// Valid values are `Prepaid`, `Postpaid`, `Serverless`, Default to `Postpaid`. Currently, the resource only supports PostPaid to PrePaid. For more information, see [Overview](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/what-is-serverless?spm=a2c63.p38356.0.0.772a28cfTAGqIv).
  late final pulumi.Output<String?> instanceChargeType;
  /// The name of DB instance. It a string of 2 to 256 characters.
  late final pulumi.Output<String?> instanceName;
  /// User-defined DB instance storage space. Value range:
  /// - [5, 2000] for MySQL/PostgreSQL HA dual node edition;
  /// - [20,1000] for MySQL 5.7 basic single node edition;
  /// - [10, 2000] for SQL Server 2008R2;
  /// - [20,2000] for SQL Server 2012 basic single node edition
  /// Increase progressively at a rate of 5 GB. For details, see [Instance type table](https://www.alibabacloud.com/help/doc-detail/26312.htm).
  /// Note: There is extra 5 GB storage for SQL Server Instance, and it is not in specified `instance_storage`.
  late final pulumi.Output<int> instanceStorage;
  /// DB Instance type. For details, see [Instance type table](https://www.alibabacloud.com/help/doc-detail/26312.htm).
  /// - To create a serverless instance, please pass the following values:
  /// - MySQL basic: mysql.n2.serverless.1c
  /// - MySQL high availability: mysql.n2.serverless.2c
  /// - SQLServer high availability: mssql.mem2.serverless.s2
  /// - PostgreSQL basic: pg.n2.serverless.1c
  ///
  /// > **NOTE:** When `storage_auto_scale="Enable"`, do not perform `instance_storage` check. when `storage_auto_scale="Disable"`, if the instance itself `instance_storage`has changed. You need to manually revise the `instance_storage` in the template value. When `payment_type="Serverless"` and when modifying, do not perform `instance_storage` check. Otherwise, check.
  late final pulumi.Output<String> instanceType;
  /// Maintainable time period format of the instance: HH:MMZ-HH:MMZ (UTC time)
  late final pulumi.Output<String> maintainTime;
  /// The time after when you want to enable automatic primary/secondary switchover. At most, you can set this parameter to 23:59:59 seven days later. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  ///
  /// > **NOTE:** This parameter only takes effect when the HAConfig parameter is set to Manual.
  late final pulumi.Output<String?> manualHaTime;
  /// The method that is used to modify the IP address whitelist. Default value: Cover. Valid values:
  /// - Cover: Use the value of the SecurityIps parameter to overwrite the existing entries in the IP address whitelist.
  /// - Append: Add the IP addresses and CIDR blocks that are specified in the SecurityIps parameter to the IP address whitelist.
  /// - Delete: Delete IP addresses and CIDR blocks that are specified in the SecurityIps parameter from the IP address whitelist. You must retain at least one IP address or CIDR block.
  late final pulumi.Output<String?> modifyMode;
  /// The monitoring frequency in seconds. Valid values are 5, 10, 60, 300. Defaults to 300.
  late final pulumi.Output<int> monitoringPeriod;
  /// The globally unique identifier (GUID) of the secondary instance. You can call the DescribeDBInstanceHAConfig operation to query the GUID of the secondary instance.
  late final pulumi.Output<String> nodeId;
  /// Write optimization function switch. supported engine type: `MySQL`. Valid values:
  /// - optimized: Enable
  /// - none: Disable
  late final pulumi.Output<String> optimizedWrites;
  /// Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm) . See `parameters` below.
  late final pulumi.Output<List<InstanceParameter>> parameters;
  /// The duration that you will buy DB instance (in month). It is valid when instance_charge_type is `PrePaid`. Valid values: [1~9], 12, 24, 36.
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  late final pulumi.Output<int?> period;
  /// Modify the PgBouncer feature of the RDS PostgreSQL instance. Valid values:
  /// - true: enable.
  /// - false: disable.
  late final pulumi.Output<bool?> pgBouncerEnabled;
  /// The configuration of [AD domain](https://www.alibabacloud.com/help/en/doc-detail/349288.htm) . See `pg_hba_conf` below.
  late final pulumi.Output<List<InstancePgHbaConf>> pgHbaConfs;
  /// The private port of the database service. If you want to update public port, please use resource alicloud.rds.Connection port.
  late final pulumi.Output<String> port;
  /// The private IP address of the instance. The private IP address must be within the Classless Inter-Domain Routing (CIDR) block of the vSwitch that is specified by the VSwitchId parameter.
  late final pulumi.Output<String> privateIpAddress;
  /// Enable the Simple Recovery Model for an RDS SQL Server Instance.The Simple Recovery Model feature is only supported by the Basic Series of RDS SQL Server instances. Once this feature is enabled, it cannot be disabled.Valid values:
  /// - simple: Enable Simple Recovery.
  /// > **NOTE:** If you set this parameter to Manual, you must specify the ManualHATime parameter.
  late final pulumi.Output<String> recoveryModel;
  /// The policy based on which ApsaraDB RDS retains archived backup files after the instance is released. Valid values:
  /// - None: No archived backup files are retained.
  /// - Lastest: Only the last archived backup file is retained.
  /// - All: All the archived backup files are retained.
  ///
  /// > **NOTE:** This parameter is supported only when the instance runs the MySQL database engine.
  late final pulumi.Output<String?> releasedKeepPolicy;
  /// The method that is used to verify the replication permission. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. Valid values:
  /// - cert
  /// - perfer
  /// - verify-ca
  /// - verify-full (supported only when the instance runs PostgreSQL 12 or later)
  late final pulumi.Output<String> replicationAcl;
  /// The ID of resource group which the DB instance belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// The Alibaba Cloud Resource Name (ARN) of the RAM role.
  ///
  /// > **NOTE:**  This parameter is not required when creating an instance running MySQL, PostgreSQL, or SQL Server.It is required only when you need to create an instance with cloud disk encryption enabled using a specified key ID.
  /// You can configure RAM authorization to require a RAM user to enable cloud disk encryption when the RAM user is used to create an instance. If cloud disk encryption is disabled during the instance creation, the creation operation fails. To complete the configuration, you can attach the following policy to the RAM user: {"Version":"1","Statement":[{"Effect":"Deny","Action":"rds:CreateDBInstance","Resource":"*","Condition":{"StringEquals":{"rds:DiskEncryptionRequired":"false"}}}]}
  late final pulumi.Output<String> roleArn;
  /// It has been deprecated from 1.69.0 and use `security_group_ids` instead.
  late final pulumi.Output<String> securityGroupId;
  /// , Available since v1.69.0) The list IDs to join ECS Security Group. At most supports three security groups.
  late final pulumi.Output<List<String>> securityGroupIds;
  /// Valid values are `normal`, `safety`, Default to `normal`. support `safety` switch to high security access mode.
  late final pulumi.Output<String?> securityIpMode;
  /// The type of IP address in the IP address whitelist.
  late final pulumi.Output<String?> securityIpType;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  late final pulumi.Output<List<String>> securityIps;
  /// The content of the server certificate. This parameter is supported only when the instance runs PostgreSQL or MySQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter. **NOTE:** From version 1.231.0, `server_cert` start  support `MySQL` engine.
  late final pulumi.Output<String> serverCert;
  /// The private key of the server certificate. This parameter is supported only when the instance runs PostgreSQL or MySQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter. **NOTE:** From version 1.231.0, `server_key` start support `MySQL` engine.
  late final pulumi.Output<String> serverKey;
  /// The settings of the serverless instance. This parameter is required when you create a serverless instance. This parameter takes effect only when you create an ApsaraDB RDS for Serverless instance. See `serverless_config` below.
  late final pulumi.Output<List<InstanceServerlessConfig>?> serverlessConfigs;
  /// The sql collector keep time of the instance. Valid values are `30`, `180`, `365`, `1095`, `1825`, Default to `30`.
  /// > **NOTE:** This parameter takes effect when sql_collector_status is set to Enabled and does not take effect when sql_collector_status is set to Disabled.
  late final pulumi.Output<int?> sqlCollectorConfigValue;
  /// The sql collector status of the instance. Valid values are `Enabled`, `Disabled`, Default to `Disabled`.
  late final pulumi.Output<String> sqlCollectorStatus;
  /// Actions performed on SSL functions. Valid values:
  /// `Open`: turn on SSL encryption;
  /// `Close`: turn off SSL encryption;
  /// `Update`: update SSL certificate.
  /// See more [engine and engineVersion limitation](https://www.alibabacloud.com/help/zh/doc-detail/26254.htm).
  ///
  /// > **NOTE:** The attribute `ssl_action` will be ignored when setting `instance_charge_type = "Serverless"` for SQLServer, PostgreSQL or MariaDB.
  late final pulumi.Output<String> sslAction;
  /// The internal or public endpoint for which the server certificate needs to be created or updated.
  late final pulumi.Output<String> sslConnectionString;
  /// Status of the SSL feature. `Yes`: SSL is turned on; `No`: SSL is turned off.
  late final pulumi.Output<String> sslStatus;
  /// (Available since v1.204.1) The status of db instance.
  late final pulumi.Output<String> status;
  /// Automatic storage space expansion switch. Valid values:
  /// - Enable
  /// - Disable
  ///
  /// > **NOTE:** This parameter only takes effect when the StorageAutoScale parameter is set to Enable.
  late final pulumi.Output<String?> storageAutoScale;
  /// The threshold in percentage based on which an automatic storage expansion is triggered. If the available storage reaches the threshold, ApsaraDB RDS increases the storage capacity of the instance.
  /// Valid values: [10, 20, 30, 40, 50].
  ///
  /// > **NOTE:** This parameter only takes effect when the StorageAutoScale parameter is set to Enable. The value must be greater than or equal to the total size of the current storage space of the instance.
  late final pulumi.Output<int?> storageThreshold;
  /// The upper limit of the total storage space for automatic expansion of the storage space, that is, automatic expansion will not cause the total storage space of the instance to exceed this value. Unit: GB. The value must be ≥0.
  ///
  /// > **NOTE:** Because of data backup and migration, change DB instance type and storage would cost 15~20 minutes. Please make full preparation before changing them.
  late final pulumi.Output<int?> storageUpperBound;
  /// The specific point in time when you want to perform the update. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. It is valid only when `target_minor_version` is changed. The time must be in UTC.
  ///
  /// > **NOTE:** This parameter takes effect only when you set the UpgradeTime parameter to SpecifyTime.
  late final pulumi.Output<String?> switchTime;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  ///
  /// Note: From 1.63.0, the tag key and value are case sensitive. Before that, they are not case sensitive.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The minor engine version to which you want to update the instance. If you do not specify this parameter, the instance is updated to the latest minor engine version. You must specify the minor engine version in one of the following formats:
  /// - PostgreSQL: rds_postgres_<Major engine version>00_<Minor engine version>. Example: rds_postgres_1200_20200830.
  /// - MySQL: <RDS edition>_<Minor engine version>. Examples: rds_20200229, xcluster_20200229, and xcluster80_20200229. The following RDS editions are supported:
  /// - rds: The instance runs RDS Basic or High-availability Edition.
  /// - xcluster: The instance runs MySQL 5.7 on RDS Enterprise Edition.
  /// - xcluster80: The instance runs MySQL 8.0 on RDS Enterprise Edition.
  /// - SQLServer: <Minor engine version>. Example: 15.0.4073.23.
  ///
  /// > **NOTE:** For more information about minor engine versions, see Release notes of minor AliPG versions, Release notes of minor AliSQL versions, and Release notes of minor engine versions of ApsaraDB RDS for SQL Server.
  late final pulumi.Output<String> targetMinorVersion;
  /// The availability check method of the instance. Valid values:
  /// - **SHORT**: Alibaba Cloud uses short-lived connections to check the availability of the instance.
  /// - **LONG**: Alibaba Cloud uses persistent connections to check the availability of the instance.
  late final pulumi.Output<String> tcpConnectionType;
  /// The ID of the custom key.
  late final pulumi.Output<String?> tdeEncryptionKey;
  /// The TDE(Transparent Data Encryption) status. After TDE is turned on, it cannot be turned off. See more [engine and engineVersion limitation](https://www.alibabacloud.com/help/zh/doc-detail/26256.htm).
  ///
  /// > **NOTE:** When creating an instance and enabling disk encryption, the value of encryption_key can only be a Key ID; it cannot be a ServiceKey. After the instance is created, you can manage the disk encryption using: ServiceKey, Key ID, or disabled.
  late final pulumi.Output<String> tdeStatus;
  /// Whitelist Template ID List.
  late final pulumi.Output<List<int>?> templateIdLists;
  /// (Computed, Available since v1.254.0) Whitelist Template Details.
  late final pulumi.Output<List<Map<String, String>>> templates;
  /// Whether to upgrade a minor version of the kernel. Valid values:
  /// - true: upgrade
  /// - false: not to upgrade
  ///
  /// > **NOTE:** Database Engine and Version: Supports only MySQL 5.7 or 8.0 instances.
  /// > **NOTE:** Storage Type: Supports only ESSD cloud disks and general-purpose cloud disks.
  /// > **NOTE:** Activation Stage: Supports only during instance creation or when enabling write optimization features for existing  (high-availability/cluster series) instances.
  late final pulumi.Output<bool?> upgradeDbInstanceKernelVersion;
  /// The method to update the minor engine version. Default value: Immediate. It is valid only when `target_minor_version` is changed. Valid values:
  /// - Immediate: The minor engine version is immediately updated.
  /// - MaintainTime: The minor engine version is updated during the maintenance window. For more information about how to change the maintenance window, see ModifyDBInstanceMaintainTime.
  /// - SpecifyTime: The minor engine version is updated at the point in time you specify.
  late final pulumi.Output<String?> upgradeTime;
  /// The VPC ID of the instance.
  ///
  ///
  /// > **NOTE:** This parameter applies only to ApsaraDB RDS for MySQL instances. For more information about Upgrade the major engine version of an ApsaraDB RDS for MySQL instance, see [Upgrade the major engine version of an RDS instance in the ApsaraDB RDS console](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/upgrade-the-major-engine-version-of-an-apsaradb-rds-for-mysql-instance-1).
  late final pulumi.Output<String> vpcId;
  /// The virtual switch ID to launch DB instances in one VPC. If there are multiple vswitches, separate them with commas.
  late final pulumi.Output<String?> vswitchId;
  /// The network type of the IP address whitelist. Default value: MIX. Valid values:
  /// - Classic: classic network in enhanced whitelist mode
  /// - VPC: virtual private cloud (VPC) in enhanced whitelist mode
  /// - MIX: standard whitelist mode
  ///
  /// > **NOTE:** In standard whitelist mode, IP addresses and CIDR blocks can be added only to the default IP address whitelist. In enhanced whitelist mode, IP addresses and CIDR blocks can be added to both IP address whitelists of the classic network type and those of the VPC network type.
  late final pulumi.Output<String?> whitelistNetworkType;
  /// The Zone to launch the DB instance. From version 1.8.1, it supports multiple zone.
  /// If it is a multi-zone and `vswitch_id` is specified, the vswitch must in the one of them.
  /// The multiple zone ID can be retrieved by setting `multi` to "true" in the data source `alicloud.getZones`.
  late final pulumi.Output<String> zoneId;
  /// The region ID of the secondary instance if you create a secondary instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  late final pulumi.Output<String> zoneIdSlaveA;
  /// RDS MySQL Cluster series instances support creating 1 to 2 secondary nodes at the same time when establishing a new instance. If you have this requirement, you can use this parameter to specify the availability zone for the second secondary node.
  late final pulumi.Output<String> zoneIdSlaveB;

  /// Creates a new [Instance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Instance]. {@macro pulumi_rds_instance_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Instance(
    String name, {
    InstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/instance:Instance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acl = registerOutput<String>('acl');
    this.autoRenew = registerOutput<bool?>('autoRenew');
    this.autoRenewPeriod = registerOutput<int?>('autoRenewPeriod');
    this.autoUpgradeMinorVersion = registerOutput<String>('autoUpgradeMinorVersion');
    this.babelfishConfigs = registerOutput<List<InstanceBabelfishConfig>>('babelfishConfigs');
    this.babelfishPort = registerOutput<String>('babelfishPort');
    this.burstingEnabled = registerOutput<bool?>('burstingEnabled');
    this.caType = registerOutput<String>('caType');
    this.category = registerOutput<String>('category');
    this.clientCaCert = registerOutput<String?>('clientCaCert');
    this.clientCaEnabled = registerOutput<int?>('clientCaEnabled');
    this.clientCertRevocationList = registerOutput<String?>('clientCertRevocationList');
    this.clientCrlEnabled = registerOutput<int?>('clientCrlEnabled');
    this.coldDataEnabled = registerOutput<bool?>('coldDataEnabled');
    this.connectionString = registerOutput<String>('connectionString');
    this.connectionStringPrefix = registerOutput<String>('connectionStringPrefix');
    this.createTime = registerOutput<String>('createTime');
    this.dbInstanceIpArrayAttribute = registerOutput<String?>('dbInstanceIpArrayAttribute');
    this.dbInstanceIpArrayName = registerOutput<String?>('dbInstanceIpArrayName');
    this.dbInstanceStorageType = registerOutput<String>('dbInstanceStorageType');
    this.dbInstanceType = registerOutput<String>('dbInstanceType');
    this.dbIsIgnoreCase = registerOutput<bool>('dbIsIgnoreCase');
    this.dbParamGroupId = registerOutput<String?>('dbParamGroupId');
    this.dbTimeZone = registerOutput<String>('dbTimeZone');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.direction = registerOutput<String?>('direction');
    this.effectiveTime = registerOutput<String?>('effectiveTime');
    this.encryptionKey = registerOutput<String>('encryptionKey');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.force = registerOutput<String?>('force');
    this.forceRestart = registerOutput<bool?>('forceRestart');
    this.freshWhiteListReadins = registerOutput<String?>('freshWhiteListReadins');
    this.haConfig = registerOutput<String>('haConfig');
    this.instanceChargeType = registerOutput<String?>('instanceChargeType');
    this.instanceName = registerOutput<String?>('instanceName');
    this.instanceStorage = registerOutput<int>('instanceStorage');
    this.instanceType = registerOutput<String>('instanceType');
    this.maintainTime = registerOutput<String>('maintainTime');
    this.manualHaTime = registerOutput<String?>('manualHaTime');
    this.modifyMode = registerOutput<String?>('modifyMode');
    this.monitoringPeriod = registerOutput<int>('monitoringPeriod');
    this.nodeId = registerOutput<String>('nodeId');
    this.optimizedWrites = registerOutput<String>('optimizedWrites');
    this.parameters = registerOutput<List<InstanceParameter>>('parameters');
    this.period = registerOutput<int?>('period');
    this.pgBouncerEnabled = registerOutput<bool?>('pgBouncerEnabled');
    this.pgHbaConfs = registerOutput<List<InstancePgHbaConf>>('pgHbaConfs');
    this.port = registerOutput<String>('port');
    this.privateIpAddress = registerOutput<String>('privateIpAddress');
    this.recoveryModel = registerOutput<String>('recoveryModel');
    this.releasedKeepPolicy = registerOutput<String?>('releasedKeepPolicy');
    this.replicationAcl = registerOutput<String>('replicationAcl');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.roleArn = registerOutput<String>('roleArn');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.securityIpMode = registerOutput<String?>('securityIpMode');
    this.securityIpType = registerOutput<String?>('securityIpType');
    this.securityIps = registerOutput<List<String>>('securityIps');
    this.serverCert = registerOutput<String>('serverCert');
    this.serverKey = registerOutput<String>('serverKey');
    this.serverlessConfigs = registerOutput<List<InstanceServerlessConfig>?>('serverlessConfigs');
    this.sqlCollectorConfigValue = registerOutput<int?>('sqlCollectorConfigValue');
    this.sqlCollectorStatus = registerOutput<String>('sqlCollectorStatus');
    this.sslAction = registerOutput<String>('sslAction');
    this.sslConnectionString = registerOutput<String>('sslConnectionString');
    this.sslStatus = registerOutput<String>('sslStatus');
    this.status = registerOutput<String>('status');
    this.storageAutoScale = registerOutput<String?>('storageAutoScale');
    this.storageThreshold = registerOutput<int?>('storageThreshold');
    this.storageUpperBound = registerOutput<int?>('storageUpperBound');
    this.switchTime = registerOutput<String?>('switchTime');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targetMinorVersion = registerOutput<String>('targetMinorVersion');
    this.tcpConnectionType = registerOutput<String>('tcpConnectionType');
    this.tdeEncryptionKey = registerOutput<String?>('tdeEncryptionKey');
    this.tdeStatus = registerOutput<String>('tdeStatus');
    this.templateIdLists = registerOutput<List<int>?>('templateIdLists');
    this.templates = registerOutput<List<Map<String, String>>>('templates');
    this.upgradeDbInstanceKernelVersion = registerOutput<bool?>('upgradeDbInstanceKernelVersion');
    this.upgradeTime = registerOutput<String?>('upgradeTime');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
    this.whitelistNetworkType = registerOutput<String?>('whitelistNetworkType');
    this.zoneId = registerOutput<String>('zoneId');
    this.zoneIdSlaveA = registerOutput<String>('zoneIdSlaveA');
    this.zoneIdSlaveB = registerOutput<String>('zoneIdSlaveB');
  }
}
