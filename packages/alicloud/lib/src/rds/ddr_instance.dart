import 'package:pulumi/pulumi.dart' as pulumi;
import 'ddr_instance_args.dart';
import 'ddr_instance_parameter.dart';
import 'ddr_instance_pg_hba_conf.dart';

/// ## Import
///
/// RDS ddr instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/ddrInstance:DdrInstance example rm-abc12345678
/// ```
class DdrInstance extends pulumi.CustomResource {
  /// The method that is used to verify the identities of clients. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. Valid values:
  /// - cert
  /// - perfer
  /// - verify-ca
  /// - verify-full (supported only when the instance runs PostgreSQL 12 or later)
  late final pulumi.Output<String> acl;
  /// Whether to renewal a DB instance automatically or not. It is valid when payment_type is `Subscription`. Default to `false`.
  late final pulumi.Output<bool> autoRenew;
  /// Auto-renewal period of an instance, in the unit of the month. It is valid when payment_type is `Subscription`. Valid value:[1~12], Default to 1.
  late final pulumi.Output<int> autoRenewPeriod;
  /// The upgrade method to use. Valid values:
  /// - Auto: Instances are automatically upgraded to a higher minor version.
  /// - Manual: Instances are forcibly upgraded to a higher minor version when the current version is unpublished.
  ///
  /// See more [details and limitation](https://www.alibabacloud.com/help/doc-detail/123605.htm).
  late final pulumi.Output<String> autoUpgradeMinorVersion;
  /// The ID of the backup set that is used for the restoration. You can call the DescribeCrossRegionBackups operation to query the ID of the backup set.
  late final pulumi.Output<String?> backupSetId;
  /// The type of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the SSLEnabled parameter to 1, the default value of this parameter is aliyun. Value range:
  /// - aliyun: a cloud certificate
  /// - custom: a custom certificate
  late final pulumi.Output<String> caType;
  /// The RDS edition of the instance.
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
  /// RDS database connection string.
  late final pulumi.Output<String> connectionString;
  /// The private connection string prefix. If you want to update public connection string prefix, please use resource alicloud.rds.Connection connection_prefix.
  /// > **NOTE:** The prefix must be 8 to 64 characters in length and can contain letters, digits, and hyphens (-). It cannot contain Chinese characters and special characters ~!#%^&*=+\|{};:'",<>/?
  late final pulumi.Output<String> connectionStringPrefix;
  /// The attribute of the IP address whitelist. By default, this parameter is empty.
  ///
  /// > **NOTE:** The IP address whitelists that have the hidden attribute are not displayed in the ApsaraDB RDS console. These IP address whitelists are used to access Alibaba Cloud services, such as Data Transmission Service (DTS).
  late final pulumi.Output<String?> dbInstanceIpArrayAttribute;
  /// The name of the IP address whitelist. Default value: Default.
  ///
  /// > **NOTE:** A maximum of 200 IP address whitelists can be configured for each instance.
  late final pulumi.Output<String?> dbInstanceIpArrayName;
  /// The storage type of the instance. Valid values:
  /// - local_ssd: specifies to use local SSDs. This value is recommended.
  /// - cloud_ssd: specifies to use standard SSDs.
  /// - cloud_essd: specifies to use enhanced SSDs (ESSDs).
  /// - cloud_essd2: specifies to use enhanced SSDs (ESSDs).
  /// - cloud_essd3: specifies to use enhanced SSDs (ESSDs).
  ///
  /// > **NOTE:** You can specify the time zone when you create a primary instance. You cannot specify the time zone when you create a read-only instance. Read-only instances inherit the time zone of their primary instance. If you do not specify this parameter, the system assigns the default time zone of the region where the instance resides.
  late final pulumi.Output<String> dbInstanceStorageType;
  /// The switch of delete protection. Valid values:
  /// - true: delete protect.
  /// - false: no delete protect.
  ///
  /// > **NOTE:** `deletion_protection` is valid only when attribute `payment_type` is set to `PayAsYouGo`, supported engine type: **MySQL**, **PostgreSQL**, **MariaDB**, **MSSQL**.
  late final pulumi.Output<bool> deletionProtection;
  /// The method to update the engine version and change.  Default value: Immediate. Valid values:
  /// - Immediate: The change immediately takes effect.
  /// - MaintainTime: The change takes effect during the specified maintenance window. For more information, see ModifyDBInstanceMaintainTime.
  late final pulumi.Output<String?> effectiveTime;
  /// The key id of the KMS. Used for encrypting a disk if not null. Only for PostgreSQL, MySQL and SQLServer.
  late final pulumi.Output<String?> encryptionKey;
  /// Database type. Value options: MySQL, SQLServer.
  ///
  /// > **NOTE:** When the 'EngineVersion' changes, it can be used as the target database version for the large version upgrade of RDS for MySQL instance.
  late final pulumi.Output<String> engine;
  /// Database version. Value options can refer to the latest docs [CreateDdrInstance](https://www.alibabacloud.com/help/en/apsaradb-for-rds/latest/restore-data-to-a-new-instance-across-regions) `EngineVersion`.
  late final pulumi.Output<String> engineVersion;
  /// Set it to true to make some parameter efficient when modifying them. Default to false.
  late final pulumi.Output<bool> forceRestart;
  /// The read-only instances to which you want to synchronize the IP address whitelist.
  /// * If the instance is attached with a read-only instance, you can use this parameter to synchronize the IP address whitelist to the read-only instance. If the instance is attached with multiple read-only instances, the read-only instances must be separated by commas (,).
  /// * If the instance is not attached with a read-only instance, this parameter is empty.
  late final pulumi.Output<String?> freshWhiteListReadins;
  /// The primary/secondary switchover mode of the instance. Default value: Auto. Valid values:
  /// - Auto: The system automatically switches over services from the primary to secondary instances in the event of a fault.
  /// - Manual: You must manually switch over services from the primary to secondary instances in the event of a fault.
  ///
  /// > **NOTE:** If you set this parameter to Manual, you must specify the ManualHATime parameter.
  late final pulumi.Output<String> haConfig;
  /// The name of DB instance. It a string of 2 to 256 characters.
  late final pulumi.Output<String?> instanceName;
  /// The storage capacity of the destination instance. Valid values: 5 to 2000. Unit: GB.
  ///
  /// This value must be a multiple of 5 GB. For more information, see Primary ApsaraDB RDS instance types.
  late final pulumi.Output<int> instanceStorage;
  /// DB Instance type.
  ///
  /// > **NOTE:** When `storage_auto_scale="Enable"`, do not perform `instance_storage` check. when `storage_auto_scale="Disable"`, if the instance itself `instance_storage`has changed. You need to manually revise the `instance_storage` in the template value.
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
  /// The monitoring frequency in seconds. Valid values are 5, 60, 300. Defaults to 300.
  late final pulumi.Output<int> monitoringPeriod;
  /// Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm) . See `parameters` below.
  late final pulumi.Output<List<DdrInstanceParameter>> parameters;
  /// Valid values are `Subscription`, `PayAsYouGo`, Default to `PayAsYouGo`.
  late final pulumi.Output<String> paymentType;
  /// The duration that you will buy DB instance (in month). It is valid when payment_type is `Subscription`. Valid values: [1~9], 12, 24, 36.
  /// > **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  late final pulumi.Output<int?> period;
  /// The configuration of [AD domain](https://www.alibabacloud.com/help/en/doc-detail/349288.htm) . See `pg_hba_conf` below.
  late final pulumi.Output<List<DdrInstancePgHbaConf>> pgHbaConfs;
  /// The private port of the database service. If you want to update public port, please use resource alicloud.rds.Connection port.
  late final pulumi.Output<String> port;
  /// The private IP address of the instance. The private IP address must be within the Classless Inter-Domain Routing (CIDR) block of the vSwitch that is specified by the VSwitchId parameter.
  late final pulumi.Output<String> privateIpAddress;
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
  /// The point in time to which you want to restore data. The point in time that you specify must be earlier than the current time. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  late final pulumi.Output<String?> restoreTime;
  /// The method that is used to restore data. Valid values:
  /// - BackupSet: Data is restored from a backup set. If you use this value, you must also specify the BackupSetID parameter.
  /// - BackupTime: restores data to a point in time. You must also specify the RestoreTime, SourceRegion, and SourceDBInstanceName parameters.
  late final pulumi.Output<String> restoreType;
  /// ) The list IDs to join ECS Security Group. At most supports three security groups.
  late final pulumi.Output<List<String>> securityGroupIds;
  /// Valid values are `normal`, `safety`, Default to `normal`. support `safety` switch to high security access mode.
  late final pulumi.Output<String> securityIpMode;
  /// The type of IP address in the IP address whitelist.
  late final pulumi.Output<String?> securityIpType;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  late final pulumi.Output<List<String>> securityIps;
  /// The content of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter.
  late final pulumi.Output<String> serverCert;
  /// The private key of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter.
  late final pulumi.Output<String> serverKey;
  /// The ID of the source instance if you want to restore data to a point in time.
  late final pulumi.Output<String?> sourceDbInstanceName;
  /// The region ID of the source instance if you want to restore data to a point in time.
  late final pulumi.Output<String?> sourceRegion;
  /// The sql collector keep time of the instance. Valid values are `30`, `180`, `365`, `1095`, `1825`, Default to `30`.
  late final pulumi.Output<int> sqlCollectorConfigValue;
  /// The sql collector status of the instance. Valid values are `Enabled`, `Disabled`, Default to `Disabled`.
  late final pulumi.Output<String> sqlCollectorStatus;
  /// Actions performed on SSL functions, Valid values: `Open`: turn on SSL encryption; `Close`: turn off SSL encryption; `Update`: update SSL certificate. See more [engine and engineVersion limitation](https://www.alibabacloud.com/help/zh/doc-detail/26254.htm).
  late final pulumi.Output<String> sslAction;
  /// Status of the SSL feature. `Yes`: SSL is turned on; `No`: SSL is turned off.
  late final pulumi.Output<String> sslStatus;
  /// Automatic storage space expansion switch. Valid values:
  /// - Enable
  /// - Disable
  ///
  /// > **NOTE:** This parameter only takes effect when the StorageAutoScale parameter is set to Enable.
  late final pulumi.Output<String?> storageAutoScale;
  /// The trigger threshold (percentage) for automatic storage space expansion. Valid values:
  /// - 10
  /// - 20
  /// - 30
  /// - 40
  /// - 50
  ///
  /// > **NOTE:** This parameter only takes effect when the StorageAutoScale parameter is set to Enable. The value must be greater than or equal to the total size of the current storage space of the instance.
  late final pulumi.Output<int?> storageThreshold;
  /// The upper limit of the total storage space for automatic expansion of the storage space, that is, automatic expansion will not cause the total storage space of the instance to exceed this value. Unit: GB. The value must be ≥0.
  ///
  /// > **NOTE:** Because of data backup and migration, change DB instance type and storage would cost 15~20 minutes. Please make full preparation before changing them.
  late final pulumi.Output<int?> storageUpperBound;
  /// The specific point in time when you want to perform the update. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. It is valid only when `upgrade_db_instance_kernel_version = true`. The time must be in UTC.
  ///
  /// > **NOTE:** This parameter takes effect only when you set the UpgradeTime parameter to SpecifyTime.
  late final pulumi.Output<String?> switchTime;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The minor engine version to which you want to update the instance. If you do not specify this parameter, the instance is updated to the latest minor engine version. It is valid only when `upgrade_db_instance_kernel_version = true`. You must specify the minor engine version in one of the following formats:
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
  /// The TDE(Transparent Data Encryption) status. See more [engine and engineVersion limitation](https://www.alibabacloud.com/help/zh/doc-detail/26256.htm).
  late final pulumi.Output<String?> tdeStatus;
  /// Whether to upgrade a minor version of the kernel. Valid values:
  /// - true: upgrade
  /// - false: not to upgrade
  late final pulumi.Output<bool?> upgradeDbInstanceKernelVersion;
  /// The method to update the minor engine version. Default value: Immediate. It is valid only when `upgrade_db_instance_kernel_version = true`. Valid values:
  /// - Immediate: The minor engine version is immediately updated.
  /// - MaintainTime: The minor engine version is updated during the maintenance window. For more information about how to change the maintenance window, see ModifyDBInstanceMaintainTime.
  /// - SpecifyTime: The minor engine version is updated at the point in time you specify.
  late final pulumi.Output<String?> upgradeTime;
  /// The VPC ID of the instance.
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
  /// The Zone to launch the DB instance. It supports multiple zone.
  /// If it is a multi-zone and `vswitch_id` is specified, the vswitch must in the one of them.
  /// The multiple zone ID can be retrieved by setting `multi` to "true" in the data source `alicloud.getZones`.
  late final pulumi.Output<String> zoneId;
  /// The region ID of the secondary instance if you create a secondary instance.
  late final pulumi.Output<String> zoneIdSlaveA;
  /// The region ID of the log instance if you create a log instance.
  late final pulumi.Output<String> zoneIdSlaveB;

  /// Creates a new [DdrInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DdrInstance]. {@macro pulumi_rds_ddr_instance_ddr_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DdrInstance(
    String name, {
    DdrInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/ddrInstance:DdrInstance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acl = registerOutput<String>('acl');
    this.autoRenew = registerOutput<bool>('autoRenew');
    this.autoRenewPeriod = registerOutput<int>('autoRenewPeriod');
    this.autoUpgradeMinorVersion = registerOutput<String>('autoUpgradeMinorVersion');
    this.backupSetId = registerOutput<String?>('backupSetId');
    this.caType = registerOutput<String>('caType');
    this.category = registerOutput<String>('category');
    this.clientCaCert = registerOutput<String?>('clientCaCert');
    this.clientCaEnabled = registerOutput<int?>('clientCaEnabled');
    this.clientCertRevocationList = registerOutput<String?>('clientCertRevocationList');
    this.clientCrlEnabled = registerOutput<int?>('clientCrlEnabled');
    this.connectionString = registerOutput<String>('connectionString');
    this.connectionStringPrefix = registerOutput<String>('connectionStringPrefix');
    this.dbInstanceIpArrayAttribute = registerOutput<String?>('dbInstanceIpArrayAttribute');
    this.dbInstanceIpArrayName = registerOutput<String?>('dbInstanceIpArrayName');
    this.dbInstanceStorageType = registerOutput<String>('dbInstanceStorageType');
    this.deletionProtection = registerOutput<bool>('deletionProtection');
    this.effectiveTime = registerOutput<String?>('effectiveTime');
    this.encryptionKey = registerOutput<String?>('encryptionKey');
    this.engine = registerOutput<String>('engine');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.forceRestart = registerOutput<bool>('forceRestart');
    this.freshWhiteListReadins = registerOutput<String?>('freshWhiteListReadins');
    this.haConfig = registerOutput<String>('haConfig');
    this.instanceName = registerOutput<String?>('instanceName');
    this.instanceStorage = registerOutput<int>('instanceStorage');
    this.instanceType = registerOutput<String>('instanceType');
    this.maintainTime = registerOutput<String>('maintainTime');
    this.manualHaTime = registerOutput<String?>('manualHaTime');
    this.modifyMode = registerOutput<String?>('modifyMode');
    this.monitoringPeriod = registerOutput<int>('monitoringPeriod');
    this.parameters = registerOutput<List<DdrInstanceParameter>>('parameters');
    this.paymentType = registerOutput<String>('paymentType');
    this.period = registerOutput<int?>('period');
    this.pgHbaConfs = registerOutput<List<DdrInstancePgHbaConf>>('pgHbaConfs');
    this.port = registerOutput<String>('port');
    this.privateIpAddress = registerOutput<String>('privateIpAddress');
    this.releasedKeepPolicy = registerOutput<String?>('releasedKeepPolicy');
    this.replicationAcl = registerOutput<String>('replicationAcl');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.restoreTime = registerOutput<String?>('restoreTime');
    this.restoreType = registerOutput<String>('restoreType');
    this.securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    this.securityIpMode = registerOutput<String>('securityIpMode');
    this.securityIpType = registerOutput<String?>('securityIpType');
    this.securityIps = registerOutput<List<String>>('securityIps');
    this.serverCert = registerOutput<String>('serverCert');
    this.serverKey = registerOutput<String>('serverKey');
    this.sourceDbInstanceName = registerOutput<String?>('sourceDbInstanceName');
    this.sourceRegion = registerOutput<String?>('sourceRegion');
    this.sqlCollectorConfigValue = registerOutput<int>('sqlCollectorConfigValue');
    this.sqlCollectorStatus = registerOutput<String>('sqlCollectorStatus');
    this.sslAction = registerOutput<String>('sslAction');
    this.sslStatus = registerOutput<String>('sslStatus');
    this.storageAutoScale = registerOutput<String?>('storageAutoScale');
    this.storageThreshold = registerOutput<int?>('storageThreshold');
    this.storageUpperBound = registerOutput<int?>('storageUpperBound');
    this.switchTime = registerOutput<String?>('switchTime');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.targetMinorVersion = registerOutput<String>('targetMinorVersion');
    this.tcpConnectionType = registerOutput<String>('tcpConnectionType');
    this.tdeStatus = registerOutput<String?>('tdeStatus');
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
