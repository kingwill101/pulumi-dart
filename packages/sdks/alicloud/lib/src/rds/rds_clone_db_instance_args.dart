// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_clone_db_instance_parameter.dart';
import 'rds_clone_db_instance_pg_hba_conf.dart';
import 'rds_clone_db_instance_serverless_config.dart';

/// {@template pulumi_rds_rds_clone_db_instance_rds_clone_db_instance_args_doc}
/// The set of arguments for RdsCloneDbInstance.
/// {@endtemplate}
/// {@macro pulumi_rds_rds_clone_db_instance_rds_clone_db_instance_args_doc}
class RdsCloneDbInstanceArgs {
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. This parameter indicates the authentication method. It is allowed only when the public key of the client certificate authority is enabled. Valid values: `cert` and `perfer` and `verify-ca` and `verify-full (supported by RDS PostgreSQL above 12)`.
  final pulumi.Input<String>? acl;
  /// How to upgrade the minor version of the instance. Valid values:
  /// * **Auto**: automatically upgrade the minor version.
  /// * **Manual**: It is not automatically upgraded. It is only mandatory when the current version is offline.
  final pulumi.Input<String>? autoUpgradeMinorVersion;
  /// The ID of the data backup file you want to use. You can call the DescribeBackups operation to query the most recent data backup file list.
  ///
  /// > **NOTE:** You must specify at least one of the BackupId and RestoreTime parameters. When `payment_type="Serverless"` and when modifying, do not perform `instance_storage` check. Otherwise, check.
  final pulumi.Input<String>? backupId;
  /// The type of backup that is used to restore the data of the original instance. Valid values:
  /// * **FullBackup**: full backup
  /// * **IncrementalBackup**: incremental backup
  final pulumi.Input<String>? backupType;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the certificate type. When the value of ssl_action is Open, the default value of this parameter is aliyun. Value range:
  /// * **aliyun**: using cloud certificates
  /// * **custom**: use a custom certificate. Valid values: `aliyun`, `custom`.
  final pulumi.Input<String>? caType;
  /// Instance series. Valid values:
  /// * **Basic**: Basic Edition
  /// * **HighAvailability**: High availability
  /// * **AlwaysOn**: Cluster Edition
  /// * **Finance**: Three-node Enterprise Edition.
  /// * **serverless_basic**: Serverless Basic Edition. (Available since v1.200.0)
  /// * **serverless_standard**: MySQL Serverless High Availability Edition. (Available since v1.207.0)
  /// * **serverless_ha**: SQLServer Serverless High Availability Edition. (Available since v1.207.0)
  /// * **cluster**: MySQL Cluster Edition. (Available since v1.207.0)
  final pulumi.Input<String>? category;
  /// The file that contains the certificate used for TDE.
  final pulumi.Input<String>? certificate;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the public key of the client certification authority. If the value of client_ca_enabled is 1, this parameter must be configured.
  final pulumi.Input<String>? clientCaCert;
  /// The client ca enabled.
  final pulumi.Input<int>? clientCaEnabled;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version, which indicates that the client revokes the certificate file. If the value of client_crl_enabled is 1, this parameter must be configured.
  final pulumi.Input<String>? clientCertRevocationList;
  /// The client crl enabled.
  final pulumi.Input<int>? clientCrlEnabled;
  /// The connection string prefix.
  final pulumi.Input<String>? connectionStringPrefix;
  /// The instance type of the new instance. For information, see [Primary ApsaraDB RDS instance types](https://www.alibabacloud.com/help/en/rds/product-overview/primary-apsaradb-rds-instance-types).
  final pulumi.Input<String>? dbInstanceClass;
  /// The db instance description.
  final pulumi.Input<String>? dbInstanceDescription;
  /// The storage capacity of the new instance. Unit: GB. The storage capacity increases in increments of 5 GB. For more information, see [Primary ApsaraDB RDS instance types](https://www.alibabacloud.com/help/en/rds/product-overview/primary-apsaradb-rds-instance-types).
  ///
  /// > **NOTE:** The default value of this parameter is the storage capacity of the original instance.
  final pulumi.Input<int>? dbInstanceStorage;
  /// The type of storage media that is used for the new instance. Valid values:
  /// * **local_ssd**: local SSDs
  /// * **cloud_ssd**: standard SSDs
  /// * **cloud_essd**: enhanced SSDs (ESSDs) of performance level 1 (PL1)
  /// * **cloud_essd2**: ESSDs of PL2
  /// * **cloud_essd3**: ESSDs of PL3
  /// * **general_essd**: general ESSDS Available since v1.258.0
  final pulumi.Input<String> dbInstanceStorageType;
  /// The name of the database for which you want to enable TDE. Up to 50 names can be entered in a single request. If you specify multiple names, separate these names with commas (,).
  ///
  /// > **NOTE:** This parameter is available and must be specified only when the instance runs SQL Server 2019 SE or an Enterprise Edition of SQL Server.
  final pulumi.Input<String>? dbName;
  /// The names of the databases that you want to create on the new instance.
  final pulumi.Input<String>? dbNames;
  /// The ID of the dedicated cluster to which the new instance belongs. This parameter takes effect only when you create the new instance in a dedicated cluster.
  final pulumi.Input<String>? dedicatedHostGroupId;
  /// The switch of delete protection. Valid values:
  /// - true: delete protect.
  /// - false: no delete protect.
  ///
  /// > **NOTE:** `deletion_protection` is valid only when attribute `payment_type` is set to `PayAsYouGo`, supported engine type: **MySQL**, **PostgreSQL**, **MariaDB**, **MSSQL**.
  final pulumi.Input<bool>? deletionProtection;
  /// The direction. Valid values: `Auto`, `Down`, `TempUpgrade`, `Up`.
  final pulumi.Input<String>? direction;
  /// The effective time.
  final pulumi.Input<String>? effectiveTime;
  /// The ID of the private key.
  ///
  /// > **NOTE:** This parameter is available only when the instance runs MySQL.
  final pulumi.Input<String>? encryptionKey;
  /// Database type. Value options: MySQL, SQLServer, PostgreSQL, MariaDB.
  final pulumi.Input<String>? engine;
  /// Database version. Value:
  /// * MySQL:**5.5/5.6/5.7/8.0**
  /// * SQL Server:**2008r2/08r2_ent_ha/2012/2012_ent_ha/2012_std_ha/2012_web/2014_std_ha/2016_ent_ha/2016_std_ha/2016_web/2017_std_ha/2017_ent/2019_std_ha/2019_ent**
  /// * PostgreSQL:**9.4/10.0/11.0/12.0/13.0**
  /// * MariaDB:**10.3**.
  final pulumi.Input<String>? engineVersion;
  /// Set it to true to make some parameter efficient when modifying them. Default to false.
  final pulumi.Input<bool>? forceRestart;
  /// The high availability mode. Valid values:
  /// * **RPO**: Data persistence is preferred. The instance preferentially ensures data reliability to minimize data loss. Use this mode if you have higher requirements on data consistency.
  /// * **RTO**: Instance availability is preferred. The instance restores services as soon as possible to ensure availability. Use this mode if you have higher requirements on service availability.
  final pulumi.Input<String>? haMode;
  /// The network type of the instance. Valid values:
  /// * **Classic**: Classic Network
  /// * **VPC**: VPC.
  final pulumi.Input<String>? instanceNetworkType;
  /// The maintainable time period of the instance. Format: <I> HH:mm</I> Z-<I> HH:mm</I> Z(UTC time).
  final pulumi.Input<String>? maintainTime;
  /// Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm).See `parameters` below.
  final pulumi.Input<List<RdsCloneDbInstanceParameter>>? parameters;
  /// The password of the certificate.
  ///
  /// > **NOTE:** This parameter is available only when the instance runs SQL Server 2019 SE or an Enterprise Edition of SQL Server.
  final pulumi.Input<String>? password;
  /// The billing method of the new instance. Valid values: `PayAsYouGo` and `Subscription` and `Serverless`.
  final pulumi.Input<String> paymentType;
  /// The period. Valid values: `Month`, `Year`.
  ///
  /// > **NOTE:** If you set the payment_type parameter to Subscription, you must specify the period parameter.
  final pulumi.Input<String>? period;
  /// The details of the AD domain.See `pg_hba_conf` below.
  final pulumi.Input<List<RdsCloneDbInstancePgHbaConf>>? pgHbaConfs;
  /// The port.
  final pulumi.Input<String>? port;
  /// The intranet IP address of the new instance must be within the specified vSwitch IP address range. By default, the system automatically allocates by using **VPCId** and **VSwitchId**.
  final pulumi.Input<String>? privateIpAddress;
  /// The file that contains the private key used for TDE.
  final pulumi.Input<String>? privateKey;
  /// The released keep policy.
  final pulumi.Input<String>? releasedKeepPolicy;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version, indicating the authentication method of the replication permission. It is only allowed when the public key of the client certificate authority is enabled. Valid values: `cert` and `perfer` and `verify-ca` and `verify-full (supported by RDS PostgreSQL above 12)`.
  final pulumi.Input<String>? replicationAcl;
  /// The resource group id.
  final pulumi.Input<String>? resourceGroupId;
  /// Specifies whether to restore only the databases and tables that you specify. The value 1 specifies to restore only the specified databases and tables. If you do not want to restore only the specified databases or tables, you can choose not to specify this parameter.
  final pulumi.Input<String>? restoreTable;
  /// The point in time to which you want to restore the data of the original instance. The point in time must fall within the specified log backup retention period. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  final pulumi.Input<String>? restoreTime;
  /// The Alibaba Cloud Resource Name (ARN) of a RAM role. A RAM role is a virtual RAM identity that you can create within your Alibaba Cloud account.
  ///
  /// > **NOTE:** This parameter is available only when the instance runs MySQL.
  final pulumi.Input<String>? roleArn;
  /// The IP address whitelist of the instance. Separate multiple IP addresses with commas (,) and cannot be repeated. The following two formats are supported:
  /// * IP address form, for example: 10.23.12.24.
  /// * CIDR format, for example, 10.23.12.0/24 (no Inter-Domain Routing, 24 indicates the length of the prefix in the address, ranging from 1 to 32).
  ///
  /// > **NOTE:** each instance can add up to 1000 IP addresses or IP segments, that is, the total number of IP addresses or IP segments in all IP whitelist groups cannot exceed 1000. When there are more IP addresses, it is recommended to merge them into IP segments, for example, 10.23.12.0/24.
  final pulumi.Input<List<String>>? securityIps;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the content of the server certificate. If the CAType value is custom, this parameter must be configured.
  final pulumi.Input<String>? serverCert;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the private key of the server certificate. If the value of CAType is custom, this parameter must be configured.
  final pulumi.Input<String>? serverKey;
  /// The settings of the serverless instance. This parameter is required when you create a serverless instance. This parameter takes effect only when you create an ApsaraDB RDS for MySQL instance.See `serverless_config` below.
  final pulumi.Input<List<RdsCloneDbInstanceServerlessConfig>>? serverlessConfigs;
  /// The source biz.
  final pulumi.Input<String>? sourceBiz;
  /// The source db instance id.
  final pulumi.Input<String> sourceDbInstanceId;
  /// Enable or disable SSL. Valid values: `0` and `1`.
  final pulumi.Input<int>? sslEnabled;
  /// The time at which you want to apply the specification changes. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  final pulumi.Input<String>? switchTime;
  /// [The data replication mode](https://www.alibabacloud.com/help/doc-detail/96055.htm). Valid values:
  /// * **Sync**: strong synchronization
  /// * **Semi-sync**: Semi-synchronous
  /// * **Async**: asynchronous
  ///
  /// > **NOTE:** SQL Server 2017 cluster version is currently not supported.
  final pulumi.Input<String>? syncMode;
  /// The information about the databases and tables that you want to restore. Format:
  /// [{"type":"db","name":"The original name of Database 1","newname":"The new name of Database 1","tables":[{"type":"table","name":"The original name of Table 1 in Database 1","newname":"The new name of Table 1 in Database 1"},{"type":"table","name":"The original name of Table 2 in Database 1","newname":"The new name of Table 2 in Database 1"}]},{"type":"db","name":"The original name of Database 2","newname":"The new name of Database 2","tables":[{"type":"table","name":"The original name of Table 1 in Database 2","newname":"The new name of Table 1 in Database 2"},{"type":"table","name":"The original name of Table 2 in Database 2","newname":"The new name of Table 2 in Database 2"}]}]
  final pulumi.Input<String>? tableMeta;
  /// The availability check method of the instance. Valid values:
  /// - **SHORT**: Alibaba Cloud uses short-lived connections to check the availability of the instance.
  /// - **LONG**: Alibaba Cloud uses persistent connections to check the availability of the instance.
  final pulumi.Input<String>? tcpConnectionType;
  /// Specifies whether to enable TDE. Valid values:
  /// * Enabled
  /// * Disabled
  final pulumi.Input<String>? tdeStatus;
  /// The subscription period of the new instance. This parameter takes effect only when you select the subscription billing method for the new instance. Valid values:
  /// * If you set the `Period` parameter to Year, the value of the UsedTime parameter ranges from 1 to 3.
  /// * If you set the `Period` parameter to Month, the value of the UsedTime parameter ranges from 1 to 9.
  ///
  /// > **NOTE:** If you set the payment_type parameter to Subscription, you must specify the used_time parameter.
  final pulumi.Input<int>? usedTime;
  /// The ID of the VPC to which the new instance belongs.
  ///
  /// > **NOTE:** Make sure that the VPC resides in the specified region.
  final pulumi.Input<String>? vpcId;
  /// The ID of the vSwitch associated with the specified VPC. If there are multiple vswitches, separate them with commas. The first vswitch is a primary zone switch and the query only returns that vswitch. If there are multiple vswitches, do not perform `vswitch_id` check.
  ///
  /// > **NOTE:** Make sure that the vSwitch belongs to the specified VPC and region.
  final pulumi.Input<String>? vswitchId;
  /// The ID of the zone to which the new instance belongs. You can call the [DescribeRegions](https://www.alibabacloud.com/help/en/rds/developer-reference/api-rds-2014-08-15-describeregions) operation to query the most recent region list.
  final pulumi.Input<String>? zoneId;
  /// The region ID of the secondary instance if you create a secondary instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  final pulumi.Input<String>? zoneIdSlaveA;
  /// The region ID of the log instance if you create a log instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  ///
  /// > **NOTE:** The default value of this parameter is the ID of the zone to which the original instance belongs.
  final pulumi.Input<String>? zoneIdSlaveB;

  /// Creates a new [RdsCloneDbInstanceArgs].
  /// [acl] This parameter is only supported by the RDS PostgreSQL cloud disk version. This parameter indicates the authentication method. It is allowed only when the public key of the client certificate authority is enabled. Valid values: `cert` and `perfer` and `verify-ca` and `verify-full (supported by RDS PostgreSQL above 12)`.
  /// [autoUpgradeMinorVersion] How to upgrade the minor version of the instance. Valid values:
  /// [backupId] The ID of the data backup file you want to use. You can call the DescribeBackups operation to query the most recent data backup file list.
  /// [backupType] The type of backup that is used to restore the data of the original instance. Valid values:
  /// [caType] This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the certificate type. When the value of ssl_action is Open, the default value of this parameter is aliyun. Value range:
  /// [category] Instance series. Valid values:
  /// [certificate] The file that contains the certificate used for TDE.
  /// [clientCaCert] This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the public key of the client certification authority. If the value of client_ca_enabled is 1, this parameter must be configured.
  /// [clientCaEnabled] The client ca enabled.
  /// [clientCertRevocationList] This parameter is only supported by the RDS PostgreSQL cloud disk version, which indicates that the client revokes the certificate file. If the value of client_crl_enabled is 1, this parameter must be configured.
  /// [clientCrlEnabled] The client crl enabled.
  /// [connectionStringPrefix] The connection string prefix.
  /// [dbInstanceClass] The instance type of the new instance. For information, see [Primary ApsaraDB RDS instance types](https://www.alibabacloud.com/help/en/rds/product-overview/primary-apsaradb-rds-instance-types).
  /// [dbInstanceDescription] The db instance description.
  /// [dbInstanceStorage] The storage capacity of the new instance. Unit: GB. The storage capacity increases in increments of 5 GB. For more information, see [Primary ApsaraDB RDS instance types](https://www.alibabacloud.com/help/en/rds/product-overview/primary-apsaradb-rds-instance-types).
  /// [dbInstanceStorageType] The type of storage media that is used for the new instance. Valid values:
  /// [dbName] The name of the database for which you want to enable TDE. Up to 50 names can be entered in a single request. If you specify multiple names, separate these names with commas (,).
  /// [dbNames] The names of the databases that you want to create on the new instance.
  /// [dedicatedHostGroupId] The ID of the dedicated cluster to which the new instance belongs. This parameter takes effect only when you create the new instance in a dedicated cluster.
  /// [deletionProtection] The switch of delete protection. Valid values:
  /// [direction] The direction. Valid values: `Auto`, `Down`, `TempUpgrade`, `Up`.
  /// [effectiveTime] The effective time.
  /// [encryptionKey] The ID of the private key.
  /// [engine] Database type. Value options: MySQL, SQLServer, PostgreSQL, MariaDB.
  /// [engineVersion] Database version. Value:
  /// [forceRestart] Set it to true to make some parameter efficient when modifying them. Default to false.
  /// [haMode] The high availability mode. Valid values:
  /// [instanceNetworkType] The network type of the instance. Valid values:
  /// [maintainTime] The maintainable time period of the instance. Format: <I> HH:mm</I> Z-<I> HH:mm</I> Z(UTC time).
  /// [parameters] Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm).See `parameters` below.
  /// [password] The password of the certificate.
  /// [paymentType] The billing method of the new instance. Valid values: `PayAsYouGo` and `Subscription` and `Serverless`.
  /// [period] The period. Valid values: `Month`, `Year`.
  /// [pgHbaConfs] The details of the AD domain.See `pg_hba_conf` below.
  /// [port] The port.
  /// [privateIpAddress] The intranet IP address of the new instance must be within the specified vSwitch IP address range. By default, the system automatically allocates by using **VPCId** and **VSwitchId**.
  /// [privateKey] The file that contains the private key used for TDE.
  /// [releasedKeepPolicy] The released keep policy.
  /// [replicationAcl] This parameter is only supported by the RDS PostgreSQL cloud disk version, indicating the authentication method of the replication permission. It is only allowed when the public key of the client certificate authority is enabled. Valid values: `cert` and `perfer` and `verify-ca` and `verify-full (supported by RDS PostgreSQL above 12)`.
  /// [resourceGroupId] The resource group id.
  /// [restoreTable] Specifies whether to restore only the databases and tables that you specify. The value 1 specifies to restore only the specified databases and tables. If you do not want to restore only the specified databases or tables, you can choose not to specify this parameter.
  /// [restoreTime] The point in time to which you want to restore the data of the original instance. The point in time must fall within the specified log backup retention period. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  /// [roleArn] The Alibaba Cloud Resource Name (ARN) of a RAM role. A RAM role is a virtual RAM identity that you can create within your Alibaba Cloud account.
  /// [securityIps] The IP address whitelist of the instance. Separate multiple IP addresses with commas (,) and cannot be repeated. The following two formats are supported:
  /// [serverCert] This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the content of the server certificate. If the CAType value is custom, this parameter must be configured.
  /// [serverKey] This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the private key of the server certificate. If the value of CAType is custom, this parameter must be configured.
  /// [serverlessConfigs] The settings of the serverless instance. This parameter is required when you create a serverless instance. This parameter takes effect only when you create an ApsaraDB RDS for MySQL instance.See `serverless_config` below.
  /// [sourceBiz] The source biz.
  /// [sourceDbInstanceId] The source db instance id.
  /// [sslEnabled] Enable or disable SSL. Valid values: `0` and `1`.
  /// [switchTime] The time at which you want to apply the specification changes. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  /// [syncMode] [The data replication mode](https://www.alibabacloud.com/help/doc-detail/96055.htm). Valid values:
  /// [tableMeta] The information about the databases and tables that you want to restore. Format:
  /// [tcpConnectionType] The availability check method of the instance. Valid values:
  /// [tdeStatus] Specifies whether to enable TDE. Valid values:
  /// [usedTime] The subscription period of the new instance. This parameter takes effect only when you select the subscription billing method for the new instance. Valid values:
  /// [vpcId] The ID of the VPC to which the new instance belongs.
  /// [vswitchId] The ID of the vSwitch associated with the specified VPC. If there are multiple vswitches, separate them with commas. The first vswitch is a primary zone switch and the query only returns that vswitch. If there are multiple vswitches, do not perform `vswitch_id` check.
  /// [zoneId] The ID of the zone to which the new instance belongs. You can call the [DescribeRegions](https://www.alibabacloud.com/help/en/rds/developer-reference/api-rds-2014-08-15-describeregions) operation to query the most recent region list.
  /// [zoneIdSlaveA] The region ID of the secondary instance if you create a secondary instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  /// [zoneIdSlaveB] The region ID of the log instance if you create a log instance. If you set this parameter to the same value as the ZoneId parameter, the instance is deployed in a single zone. Otherwise, the instance is deployed in multiple zones.
  RdsCloneDbInstanceArgs({
    this.acl,
    this.autoUpgradeMinorVersion,
    this.backupId,
    this.backupType,
    this.caType,
    this.category,
    this.certificate,
    this.clientCaCert,
    this.clientCaEnabled,
    this.clientCertRevocationList,
    this.clientCrlEnabled,
    this.connectionStringPrefix,
    this.dbInstanceClass,
    this.dbInstanceDescription,
    this.dbInstanceStorage,
    required this.dbInstanceStorageType,
    this.dbName,
    this.dbNames,
    this.dedicatedHostGroupId,
    this.deletionProtection,
    this.direction,
    this.effectiveTime,
    this.encryptionKey,
    this.engine,
    this.engineVersion,
    this.forceRestart,
    this.haMode,
    this.instanceNetworkType,
    this.maintainTime,
    this.parameters,
    this.password,
    required this.paymentType,
    this.period,
    this.pgHbaConfs,
    this.port,
    this.privateIpAddress,
    this.privateKey,
    this.releasedKeepPolicy,
    this.replicationAcl,
    this.resourceGroupId,
    this.restoreTable,
    this.restoreTime,
    this.roleArn,
    this.securityIps,
    this.serverCert,
    this.serverKey,
    this.serverlessConfigs,
    this.sourceBiz,
    required this.sourceDbInstanceId,
    this.sslEnabled,
    this.switchTime,
    this.syncMode,
    this.tableMeta,
    this.tcpConnectionType,
    this.tdeStatus,
    this.usedTime,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
    this.zoneIdSlaveA,
    this.zoneIdSlaveB,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'backupId': ?backupId,
      'backupType': ?backupType,
      'caType': ?caType,
      'category': ?category,
      'certificate': ?certificate,
      'clientCaCert': ?clientCaCert,
      'clientCaEnabled': ?clientCaEnabled,
      'clientCertRevocationList': ?clientCertRevocationList,
      'clientCrlEnabled': ?clientCrlEnabled,
      'connectionStringPrefix': ?connectionStringPrefix,
      'dbInstanceClass': ?dbInstanceClass,
      'dbInstanceDescription': ?dbInstanceDescription,
      'dbInstanceStorage': ?dbInstanceStorage,
      'dbInstanceStorageType': dbInstanceStorageType,
      'dbName': ?dbName,
      'dbNames': ?dbNames,
      'dedicatedHostGroupId': ?dedicatedHostGroupId,
      'deletionProtection': ?deletionProtection,
      'direction': ?direction,
      'effectiveTime': ?effectiveTime,
      'encryptionKey': ?encryptionKey,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'forceRestart': ?forceRestart,
      'haMode': ?haMode,
      'instanceNetworkType': ?instanceNetworkType,
      'maintainTime': ?maintainTime,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<RdsCloneDbInstanceParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<RdsCloneDbInstanceParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'paymentType': paymentType,
      'period': ?period,
      'pgHbaConfs': ?pulumi.Input.mapOptionalInputValue<List<RdsCloneDbInstancePgHbaConf>, List<Map<String, dynamic>>>(pgHbaConfs, (value) => pulumi.Input.encodeList<RdsCloneDbInstancePgHbaConf, Map<String, dynamic>>(value, (value) => value.toMap())),
      'port': ?port,
      'privateIpAddress': ?privateIpAddress,
      'privateKey': ?privateKey,
      'releasedKeepPolicy': ?releasedKeepPolicy,
      'replicationAcl': ?replicationAcl,
      'resourceGroupId': ?resourceGroupId,
      'restoreTable': ?restoreTable,
      'restoreTime': ?restoreTime,
      'roleArn': ?roleArn,
      'securityIps': ?securityIps,
      'serverCert': ?serverCert,
      'serverKey': ?serverKey,
      'serverlessConfigs': ?pulumi.Input.mapOptionalInputValue<List<RdsCloneDbInstanceServerlessConfig>, List<Map<String, dynamic>>>(serverlessConfigs, (value) => pulumi.Input.encodeList<RdsCloneDbInstanceServerlessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourceBiz': ?sourceBiz,
      'sourceDbInstanceId': sourceDbInstanceId,
      'sslEnabled': ?sslEnabled,
      'switchTime': ?switchTime,
      'syncMode': ?syncMode,
      'tableMeta': ?tableMeta,
      'tcpConnectionType': ?tcpConnectionType,
      'tdeStatus': ?tdeStatus,
      'usedTime': ?usedTime,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
      'zoneIdSlaveA': ?zoneIdSlaveA,
      'zoneIdSlaveB': ?zoneIdSlaveB,
    };
  }

  factory RdsCloneDbInstanceArgs.fromMap(Map<String, dynamic> map) {
    return RdsCloneDbInstanceArgs(
      acl: map['acl'] == null ? null : (map['acl']! as String).input(),
      autoUpgradeMinorVersion: map['autoUpgradeMinorVersion'] == null ? null : (map['autoUpgradeMinorVersion']! as String).input(),
      backupId: map['backupId'] == null ? null : (map['backupId']! as String).input(),
      backupType: map['backupType'] == null ? null : (map['backupType']! as String).input(),
      caType: map['caType'] == null ? null : (map['caType']! as String).input(),
      category: map['category'] == null ? null : (map['category']! as String).input(),
      certificate: map['certificate'] == null ? null : (map['certificate']! as String).input(),
      clientCaCert: map['clientCaCert'] == null ? null : (map['clientCaCert']! as String).input(),
      clientCaEnabled: map['clientCaEnabled'] == null ? null : (map['clientCaEnabled']! as int).input(),
      clientCertRevocationList: map['clientCertRevocationList'] == null ? null : (map['clientCertRevocationList']! as String).input(),
      clientCrlEnabled: map['clientCrlEnabled'] == null ? null : (map['clientCrlEnabled']! as int).input(),
      connectionStringPrefix: map['connectionStringPrefix'] == null ? null : (map['connectionStringPrefix']! as String).input(),
      dbInstanceClass: map['dbInstanceClass'] == null ? null : (map['dbInstanceClass']! as String).input(),
      dbInstanceDescription: map['dbInstanceDescription'] == null ? null : (map['dbInstanceDescription']! as String).input(),
      dbInstanceStorage: map['dbInstanceStorage'] == null ? null : (map['dbInstanceStorage']! as int).input(),
      dbInstanceStorageType: (map['dbInstanceStorageType'] as String).input(),
      dbName: map['dbName'] == null ? null : (map['dbName']! as String).input(),
      dbNames: map['dbNames'] == null ? null : (map['dbNames']! as String).input(),
      dedicatedHostGroupId: map['dedicatedHostGroupId'] == null ? null : (map['dedicatedHostGroupId']! as String).input(),
      deletionProtection: map['deletionProtection'] == null ? null : (map['deletionProtection']! as bool).input(),
      direction: map['direction'] == null ? null : (map['direction']! as String).input(),
      effectiveTime: map['effectiveTime'] == null ? null : (map['effectiveTime']! as String).input(),
      encryptionKey: map['encryptionKey'] == null ? null : (map['encryptionKey']! as String).input(),
      engine: map['engine'] == null ? null : (map['engine']! as String).input(),
      engineVersion: map['engineVersion'] == null ? null : (map['engineVersion']! as String).input(),
      forceRestart: map['forceRestart'] == null ? null : (map['forceRestart']! as bool).input(),
      haMode: map['haMode'] == null ? null : (map['haMode']! as String).input(),
      instanceNetworkType: map['instanceNetworkType'] == null ? null : (map['instanceNetworkType']! as String).input(),
      maintainTime: map['maintainTime'] == null ? null : (map['maintainTime']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<RdsCloneDbInstanceParameter>(map['parameters']!, (value) => RdsCloneDbInstanceParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period']! as String).input(),
      pgHbaConfs: map['pgHbaConfs'] == null ? null : (pulumi.Input.decodeList<RdsCloneDbInstancePgHbaConf>(map['pgHbaConfs']!, (value) => RdsCloneDbInstancePgHbaConf.fromMap((value as Map).cast<String, dynamic>()))).input(),
      port: map['port'] == null ? null : (map['port']! as String).input(),
      privateIpAddress: map['privateIpAddress'] == null ? null : (map['privateIpAddress']! as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey']! as String).input(),
      releasedKeepPolicy: map['releasedKeepPolicy'] == null ? null : (map['releasedKeepPolicy']! as String).input(),
      replicationAcl: map['replicationAcl'] == null ? null : (map['replicationAcl']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      restoreTable: map['restoreTable'] == null ? null : (map['restoreTable']! as String).input(),
      restoreTime: map['restoreTime'] == null ? null : (map['restoreTime']! as String).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn']! as String).input(),
      securityIps: map['securityIps'] == null ? null : ((map['securityIps']! as List).cast<String>()).input(),
      serverCert: map['serverCert'] == null ? null : (map['serverCert']! as String).input(),
      serverKey: map['serverKey'] == null ? null : (map['serverKey']! as String).input(),
      serverlessConfigs: map['serverlessConfigs'] == null ? null : (pulumi.Input.decodeList<RdsCloneDbInstanceServerlessConfig>(map['serverlessConfigs']!, (value) => RdsCloneDbInstanceServerlessConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      sourceBiz: map['sourceBiz'] == null ? null : (map['sourceBiz']! as String).input(),
      sourceDbInstanceId: (map['sourceDbInstanceId'] as String).input(),
      sslEnabled: map['sslEnabled'] == null ? null : (map['sslEnabled']! as int).input(),
      switchTime: map['switchTime'] == null ? null : (map['switchTime']! as String).input(),
      syncMode: map['syncMode'] == null ? null : (map['syncMode']! as String).input(),
      tableMeta: map['tableMeta'] == null ? null : (map['tableMeta']! as String).input(),
      tcpConnectionType: map['tcpConnectionType'] == null ? null : (map['tcpConnectionType']! as String).input(),
      tdeStatus: map['tdeStatus'] == null ? null : (map['tdeStatus']! as String).input(),
      usedTime: map['usedTime'] == null ? null : (map['usedTime']! as int).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
      vswitchId: map['vswitchId'] == null ? null : (map['vswitchId']! as String).input(),
      zoneId: map['zoneId'] == null ? null : (map['zoneId']! as String).input(),
      zoneIdSlaveA: map['zoneIdSlaveA'] == null ? null : (map['zoneIdSlaveA']! as String).input(),
      zoneIdSlaveB: map['zoneIdSlaveB'] == null ? null : (map['zoneIdSlaveB']! as String).input(),
    );
  }
}

