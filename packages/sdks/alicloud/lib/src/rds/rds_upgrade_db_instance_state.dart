// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_upgrade_db_instance_parameter.dart';
import 'rds_upgrade_db_instance_pg_hba_conf.dart';

/// Input properties used for looking up and filtering RdsUpgradeDbInstance resources.
class RdsUpgradeDbInstanceState {
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. This parameter indicates the authentication method. It is allowed only when the public key of the client certificate authority is enabled. Valid values: `cert` and `perfer` and `verify-ca` and `verify-full (supported by RDS PostgreSQL above 12)`.
  final pulumi.Input<String>? acl;
  /// How to upgrade the minor version of the instance. Valid values:
  /// * **Auto**: automatically upgrade the minor version.
  /// * **Manual**: It is not automatically upgraded. It is only mandatory when the current version is offline.
  final pulumi.Input<String>? autoUpgradeMinorVersion;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the certificate type. When the value of ssl_action is Open, the default value of this parameter is aliyun. Value range:
  /// * **aliyun**: using cloud certificates.
  /// * **custom**: use a custom certificate. Valid values: `aliyun`, `custom`.
  final pulumi.Input<String>? caType;
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
  /// The time at which ApsaraDB RDS collects the statistics of the new instance.
  /// * **Before**: ApsaraDB RDS collects the statistics of the new instance before the switchover to ensure service stability. If the original instance contains a large amount of data, the upgrade may require a long period of time.
  /// * **After**: ApsaraDB RDS collects the statistics of the new instance after the switchover to accelerate the upgrade. If you access tables for which no statistics are generated, the query plans that you specify may be inaccurately executed. In addition, your database service may be unavailable during peak hours.
  ///
  /// &gt; **NOTE** If you set the SwitchOver parameter to false, the value Before specifies that ApsaraDB RDS collects the statistics of the new instance before the new instance starts to process read and write requests, and the value After specifies that ApsaraDB RDS collects the statistics of the new instance after the new instance starts to process read and write requests.
  final pulumi.Input<String>? collectStatMode;
  /// The database connection address.
  final pulumi.Input<String>? connectionString;
  /// The connection string prefix.
  final pulumi.Input<String>? connectionStringPrefix;
  /// The instance type of the new instance. For information, see [Primary ApsaraDB RDS instance types](https://www.alibabacloud.com/help/en/rds/product-overview/primary-apsaradb-rds-instance-types).
  final pulumi.Input<String>? dbInstanceClass;
  /// The db instance description.
  final pulumi.Input<String>? dbInstanceDescription;
  /// The storage capacity of the new instance. Unit: GB. The storage capacity increases in increments of 5 GB. For more information, see [Primary ApsaraDB RDS instance types](https://www.alibabacloud.com/help/en/rds/product-overview/primary-apsaradb-rds-instance-types).
  ///
  /// &gt; **NOTE:** The default value of this parameter is the storage capacity of the original instance.
  final pulumi.Input<int>? dbInstanceStorage;
  /// The type of storage media that is used for the new instance. Valid values:
  /// * **local_ssd**: local SSDs.
  /// * **cloud_ssd**: standard SSDs.
  /// * **cloud_essd**: enhanced SSDs (ESSDs) of performance level 1 (PL1).
  /// * **cloud_essd2**: ESSDs of PL2.
  /// * **cloud_essd3**: ESSDs of PL3.
  final pulumi.Input<String>? dbInstanceStorageType;
  /// The name of the database for which you want to enable TDE. Up to 50 names can be entered in a single request. If you specify multiple names, separate these names with commas (,).
  ///
  /// &gt; **NOTE:** This parameter is available and must be specified only when the instance runs SQL Server 2019 SE or an Enterprise Edition of SQL Server.
  final pulumi.Input<String>? dbName;
  /// The ID of the dedicated cluster to which the new instance belongs. This parameter takes effect only when you create the new instance in a dedicated cluster.
  final pulumi.Input<String>? dedicatedHostGroupId;
  /// The switch of delete protection. Valid values:
  /// - true: delete protect.
  /// - false: no delete protect.
  ///
  /// &gt; **NOTE:** `deletion_protection` is valid only when attribute `payment_type` is set to `PayAsYouGo`, supported engine type: **MySQL**, **PostgreSQL**, **MariaDB**, **MSSQL**.
  final pulumi.Input<bool>? deletionProtection;
  /// The direction. Valid values: `Auto`, `Down`, `TempUpgrade`, `Up`.
  final pulumi.Input<String>? direction;
  /// The effective time.
  final pulumi.Input<String>? effectiveTime;
  /// The ID of the private key.
  ///
  /// &gt; **NOTE:** This parameter is available only when the instance runs MySQL.
  final pulumi.Input<String>? encryptionKey;
  /// Database type. Value options: MySQL, SQLServer, PostgreSQL.
  final pulumi.Input<String>? engine;
  /// Database version. Value:
  /// * MySQL: **5.5/5.6/5.7/8.0**.
  /// * SQL Server: **2008r2/08r2_ent_ha/2012/2012_ent_ha/2012_std_ha/2012_web/2014_std_ha/2016_ent_ha/2016_std_ha/2016_web/2017_std_ha/2017_ent/2019_std_ha/2019_ent**.
  /// * PostgreSQL: **9.4/10.0/11.0/12.0/13.0**.
  /// * MariaDB: **10.3**.
  final pulumi.Input<String>? engineVersion;
  /// Set it to true to make some parameter efficient when modifying them. Default to false.
  final pulumi.Input<bool>? forceRestart;
  /// The high availability mode. Valid values:
  /// * **RPO**: Data persistence is preferred. The instance preferentially ensures data reliability to minimize data loss. Use this mode if you have higher requirements on data consistency.
  /// * **RTO**: Instance availability is preferred. The instance restores services as soon as possible to ensure availability. Use this mode if you have higher requirements on service availability.
  final pulumi.Input<String>? haMode;
  /// The network type of the instance. Valid values:
  /// * **Classic**: Classic Network.
  /// * **VPC**: VPC.
  final pulumi.Input<String>? instanceNetworkType;
  /// The maintainable time period of the instance. Format: &lt;I&gt; HH:mm&lt;/I&gt; Z-&lt;I&gt; HH:mm&lt;/I&gt; Z(UTC time).
  final pulumi.Input<String>? maintainTime;
  /// Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm). See `parameters` below.
  final pulumi.Input<List<RdsUpgradeDbInstanceParameter>>? parameters;
  /// The password of the certificate.
  ///
  /// &gt; **NOTE:** This parameter is available only when the instance runs SQL Server 2019 SE or an Enterprise Edition of SQL Server.
  final pulumi.Input<String>? password;
  /// The billing method of the new instance. Valid values: `PayAsYouGo` and `Subscription`.
  final pulumi.Input<String>? paymentType;
  /// The configuration of [AD domain](https://www.alibabacloud.com/help/en/doc-detail/349288.htm) . See `pg_hba_conf` below.
  final pulumi.Input<List<RdsUpgradeDbInstancePgHbaConf>>? pgHbaConfs;
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
  /// The Alibaba Cloud Resource Name (ARN) of a RAM role. A RAM role is a virtual RAM identity that you can create within your Alibaba Cloud account. For more information, see [RAM role overview](https://www.alibabacloud.com/help/en/ram/user-guide/ram-role-overview).
  ///
  /// &gt; **NOTE:** This parameter is available only when the instance runs MySQL.
  final pulumi.Input<String>? roleArn;
  /// The IP address whitelist of the instance. Separate multiple IP addresses with commas (,) and cannot be repeated. The following two formats are supported:
  /// * IP address form, for example: 10.23.12.24.
  /// * CIDR format, for example, 10.23.12.0/24 (no Inter-Domain Routing, 24 indicates the length of the prefix in the address, ranging from 1 to 32).
  ///
  /// &gt; **NOTE:** each instance can add up to 1000 IP addresses or IP segments, that is, the total number of IP addresses or IP segments in all IP whitelist groups cannot exceed 1000. When there are more IP addresses, it is recommended to merge them into IP segments, for example, 10.23.12.0/24.
  final pulumi.Input<List<String>>? securityIps;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the content of the server certificate. If the CAType value is custom, this parameter must be configured.
  final pulumi.Input<String>? serverCert;
  /// This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the private key of the server certificate. If the value of CAType is custom, this parameter must be configured.
  final pulumi.Input<String>? serverKey;
  /// The source biz.
  final pulumi.Input<String>? sourceBiz;
  /// The source db instance id.
  final pulumi.Input<String>? sourceDbInstanceId;
  /// Enable or disable SSL. Valid values: `0` and `1`.
  final pulumi.Input<int>? sslEnabled;
  /// Specifies whether ApsaraDB RDS automatically switches your workloads over to the new instance after data is migrated to the new instance. Valid values:
  /// * **true**: ApsaraDB RDS automatically switches workloads over to the new instance. If you set this parameter to true, you must take note of the following information:
  /// * After the switchover is complete, you cannot roll your workloads back to the original instance. Proceed with caution.
  /// * During the switchover, the original instance processes only read requests. You must perform the switchover during off-peak hours.
  /// * If read-only instances are attached to the original instance, you can set this parameter only to false. In this case, the read-only instances that are attached to the original instance cannot be cloned. After the upgrade is complete, you must create read-only instances for the new instance.
  /// * **false**: ApsaraDB RDS does not automatically switch your workloads over to the new instance. Before you perform an upgrade, we recommend that you set this parameter to false to test whether the new major engine version is compatible with your workloads. If you set this parameter to false, you must take note of the following information:
  /// * The data migration does not interrupt your workloads on the original instance.
  /// * After data is migrated to the new instance, you must update the endpoint configuration on your application. This update requires you to replace the endpoint of the original instance with the endpoint of the new instance. For more information about how to view the endpoint of an instance, see [View and change the internal and public endpoints and port numbers of an ApsaraDB RDS for PostgreSQL instance](https://www.alibabacloud.com/help/doc-detail/96788.htm).
  final pulumi.Input<String>? switchOver;
  /// The time at which you want to apply the specification changes. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  final pulumi.Input<String>? switchTime;
  /// The time at which ApsaraDB RDS switches your workloads over to the new instance. This parameter is used together with the SwitchOver parameter and takes effect only when you set the SwitchOver parameter to true. Valid values:
  /// * **Immediate**: After data is migrated to the new instance, ApsaraDB RDS immediately switches your workloads over to the new instance.
  /// * **MaintainTime**: After data is migrated to the new instance, ApsaraDB RDS switches your workloads over to the new instance during the maintenance window that you specify. You can call the [ModifyDBInstanceMaintainTime](https://www.alibabacloud.com/help/doc-detail/26249.htm) operation to change the maintenance window of an instance.
  final pulumi.Input<String>? switchTimeMode;
  /// [The data replication mode](https://www.alibabacloud.com/help/doc-detail/96055.htm). Valid values:
  /// * **Sync**: strong synchronization.
  /// * **Semi-sync**: Semi-synchronous.
  /// * **Async**: asynchronous.
  ///
  /// &gt; **NOTE:** SQL Server 2017 cluster version is currently not supported.
  final pulumi.Input<String>? syncMode;
  /// The major engine version of the new instance. The value of this parameter must be the major engine version on which an upgrade check is performed.
  ///
  /// &gt; **NOTE** You can call the [UpgradeDBInstanceMajorVersionPrecheck](https://www.alibabacloud.com/help/doc-detail/330050.htm) operation to perform an upgrade check on a major engine version.
  final pulumi.Input<String>? targetMajorVersion;
  /// The availability check method of the instance. Valid values:
  /// - **SHORT**: Alibaba Cloud uses short-lived connections to check the availability of the instance.
  /// - **LONG**: Alibaba Cloud uses persistent connections to check the availability of the instance.
  final pulumi.Input<String>? tcpConnectionType;
  /// Specifies whether to enable TDE. Valid values: `Enabled` and `Disabled`.
  final pulumi.Input<String>? tdeStatus;
  /// The ID of the VPC to which the new instance belongs.
  ///
  /// &gt; **NOTE:** Make sure that the VPC resides in the specified region.
  final pulumi.Input<String>? vpcId;
  /// The ID of the vSwitch associated with the specified VPC.
  ///
  /// &gt; **NOTE:** Make sure that the vSwitch belongs to the specified VPC and region.
  final pulumi.Input<String>? vswitchId;
  /// The ID of the zone to which the new instance belongs. You can call the [DescribeRegions](https://www.alibabacloud.com/help/en/rds/developer-reference/api-rds-2014-08-15-describeregions) operation to query the most recent region list.
  ///
  /// &gt; **NOTE:** The default value of this parameter is the ID of the zone to which the original instance belongs.
  final pulumi.Input<String>? zoneId;
  /// The ID of the zone to which the secondary instance of the new instance belongs. You can specify this parameter only when the original instance runs RDS High-availability Edition. You can select a zone that belongs to the region where the original instance resides. You can call the [DescribeRegions](https://www.alibabacloud.com/help/en/rds/developer-reference/api-rds-2014-08-15-describeregions) operation to query zone IDs.
  final pulumi.Input<String>? zoneIdSlave1;

  /// Creates a new [RdsUpgradeDbInstanceState].
  /// [acl] This parameter is only supported by the RDS PostgreSQL cloud disk version. This parameter indicates the authentication method. It is allowed only when the public key of the client certificate authority is enabled. Valid values: `cert` and `perfer` and `verify-ca` and `verify-full (supported by RDS PostgreSQL above 12)`.
  /// [autoUpgradeMinorVersion] How to upgrade the minor version of the instance. Valid values:
  /// [caType] This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the certificate type. When the value of ssl_action is Open, the default value of this parameter is aliyun. Value range:
  /// [certificate] The file that contains the certificate used for TDE.
  /// [clientCaCert] This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the public key of the client certification authority. If the value of client_ca_enabled is 1, this parameter must be configured.
  /// [clientCaEnabled] The client ca enabled.
  /// [clientCertRevocationList] This parameter is only supported by the RDS PostgreSQL cloud disk version, which indicates that the client revokes the certificate file. If the value of client_crl_enabled is 1, this parameter must be configured.
  /// [clientCrlEnabled] The client crl enabled.
  /// [collectStatMode] The time at which ApsaraDB RDS collects the statistics of the new instance.
  /// [connectionString] The database connection address.
  /// [connectionStringPrefix] The connection string prefix.
  /// [dbInstanceClass] The instance type of the new instance. For information, see [Primary ApsaraDB RDS instance types](https://www.alibabacloud.com/help/en/rds/product-overview/primary-apsaradb-rds-instance-types).
  /// [dbInstanceDescription] The db instance description.
  /// [dbInstanceStorage] The storage capacity of the new instance. Unit: GB. The storage capacity increases in increments of 5 GB. For more information, see [Primary ApsaraDB RDS instance types](https://www.alibabacloud.com/help/en/rds/product-overview/primary-apsaradb-rds-instance-types).
  /// [dbInstanceStorageType] The type of storage media that is used for the new instance. Valid values:
  /// [dbName] The name of the database for which you want to enable TDE. Up to 50 names can be entered in a single request. If you specify multiple names, separate these names with commas (,).
  /// [dedicatedHostGroupId] The ID of the dedicated cluster to which the new instance belongs. This parameter takes effect only when you create the new instance in a dedicated cluster.
  /// [deletionProtection] The switch of delete protection. Valid values:
  /// [direction] The direction. Valid values: `Auto`, `Down`, `TempUpgrade`, `Up`.
  /// [effectiveTime] The effective time.
  /// [encryptionKey] The ID of the private key.
  /// [engine] Database type. Value options: MySQL, SQLServer, PostgreSQL.
  /// [engineVersion] Database version. Value:
  /// [forceRestart] Set it to true to make some parameter efficient when modifying them. Default to false.
  /// [haMode] The high availability mode. Valid values:
  /// [instanceNetworkType] The network type of the instance. Valid values:
  /// [maintainTime] The maintainable time period of the instance. Format: &lt;I&gt; HH:mm&lt;/I&gt; Z-&lt;I&gt; HH:mm&lt;/I&gt; Z(UTC time).
  /// [parameters] Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm). See `parameters` below.
  /// [password] The password of the certificate.
  /// [paymentType] The billing method of the new instance. Valid values: `PayAsYouGo` and `Subscription`.
  /// [pgHbaConfs] The configuration of [AD domain](https://www.alibabacloud.com/help/en/doc-detail/349288.htm) . See `pg_hba_conf` below.
  /// [port] The port.
  /// [privateIpAddress] The intranet IP address of the new instance must be within the specified vSwitch IP address range. By default, the system automatically allocates by using **VPCId** and **VSwitchId**.
  /// [privateKey] The file that contains the private key used for TDE.
  /// [releasedKeepPolicy] The released keep policy.
  /// [replicationAcl] This parameter is only supported by the RDS PostgreSQL cloud disk version, indicating the authentication method of the replication permission. It is only allowed when the public key of the client certificate authority is enabled. Valid values: `cert` and `perfer` and `verify-ca` and `verify-full (supported by RDS PostgreSQL above 12)`.
  /// [resourceGroupId] The resource group id.
  /// [roleArn] The Alibaba Cloud Resource Name (ARN) of a RAM role. A RAM role is a virtual RAM identity that you can create within your Alibaba Cloud account. For more information, see [RAM role overview](https://www.alibabacloud.com/help/en/ram/user-guide/ram-role-overview).
  /// [securityIps] The IP address whitelist of the instance. Separate multiple IP addresses with commas (,) and cannot be repeated. The following two formats are supported:
  /// [serverCert] This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the content of the server certificate. If the CAType value is custom, this parameter must be configured.
  /// [serverKey] This parameter is only supported by the RDS PostgreSQL cloud disk version. It indicates the private key of the server certificate. If the value of CAType is custom, this parameter must be configured.
  /// [sourceBiz] The source biz.
  /// [sourceDbInstanceId] The source db instance id.
  /// [sslEnabled] Enable or disable SSL. Valid values: `0` and `1`.
  /// [switchOver] Specifies whether ApsaraDB RDS automatically switches your workloads over to the new instance after data is migrated to the new instance. Valid values:
  /// [switchTime] The time at which you want to apply the specification changes. The time follows the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  /// [switchTimeMode] The time at which ApsaraDB RDS switches your workloads over to the new instance. This parameter is used together with the SwitchOver parameter and takes effect only when you set the SwitchOver parameter to true. Valid values:
  /// [syncMode] [The data replication mode](https://www.alibabacloud.com/help/doc-detail/96055.htm). Valid values:
  /// [targetMajorVersion] The major engine version of the new instance. The value of this parameter must be the major engine version on which an upgrade check is performed.
  /// [tcpConnectionType] The availability check method of the instance. Valid values:
  /// [tdeStatus] Specifies whether to enable TDE. Valid values: `Enabled` and `Disabled`.
  /// [vpcId] The ID of the VPC to which the new instance belongs.
  /// [vswitchId] The ID of the vSwitch associated with the specified VPC.
  /// [zoneId] The ID of the zone to which the new instance belongs. You can call the [DescribeRegions](https://www.alibabacloud.com/help/en/rds/developer-reference/api-rds-2014-08-15-describeregions) operation to query the most recent region list.
  /// [zoneIdSlave1] The ID of the zone to which the secondary instance of the new instance belongs. You can specify this parameter only when the original instance runs RDS High-availability Edition. You can select a zone that belongs to the region where the original instance resides. You can call the [DescribeRegions](https://www.alibabacloud.com/help/en/rds/developer-reference/api-rds-2014-08-15-describeregions) operation to query zone IDs.
  RdsUpgradeDbInstanceState({
    this.acl,
    this.autoUpgradeMinorVersion,
    this.caType,
    this.certificate,
    this.clientCaCert,
    this.clientCaEnabled,
    this.clientCertRevocationList,
    this.clientCrlEnabled,
    this.collectStatMode,
    this.connectionString,
    this.connectionStringPrefix,
    this.dbInstanceClass,
    this.dbInstanceDescription,
    this.dbInstanceStorage,
    this.dbInstanceStorageType,
    this.dbName,
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
    this.paymentType,
    this.pgHbaConfs,
    this.port,
    this.privateIpAddress,
    this.privateKey,
    this.releasedKeepPolicy,
    this.replicationAcl,
    this.resourceGroupId,
    this.roleArn,
    this.securityIps,
    this.serverCert,
    this.serverKey,
    this.sourceBiz,
    this.sourceDbInstanceId,
    this.sslEnabled,
    this.switchOver,
    this.switchTime,
    this.switchTimeMode,
    this.syncMode,
    this.targetMajorVersion,
    this.tcpConnectionType,
    this.tdeStatus,
    this.vpcId,
    this.vswitchId,
    this.zoneId,
    this.zoneIdSlave1,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'autoUpgradeMinorVersion': ?autoUpgradeMinorVersion,
      'caType': ?caType,
      'certificate': ?certificate,
      'clientCaCert': ?clientCaCert,
      'clientCaEnabled': ?clientCaEnabled,
      'clientCertRevocationList': ?clientCertRevocationList,
      'clientCrlEnabled': ?clientCrlEnabled,
      'collectStatMode': ?collectStatMode,
      'connectionString': ?connectionString,
      'connectionStringPrefix': ?connectionStringPrefix,
      'dbInstanceClass': ?dbInstanceClass,
      'dbInstanceDescription': ?dbInstanceDescription,
      'dbInstanceStorage': ?dbInstanceStorage,
      'dbInstanceStorageType': ?dbInstanceStorageType,
      'dbName': ?dbName,
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
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<RdsUpgradeDbInstanceParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<RdsUpgradeDbInstanceParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'paymentType': ?paymentType,
      'pgHbaConfs': ?pulumi.Input.mapOptionalInputValue<List<RdsUpgradeDbInstancePgHbaConf>, List<Map<String, dynamic>>>(pgHbaConfs, (value) => pulumi.Input.encodeList<RdsUpgradeDbInstancePgHbaConf, Map<String, dynamic>>(value, (value) => value.toMap())),
      'port': ?port,
      'privateIpAddress': ?privateIpAddress,
      'privateKey': ?privateKey,
      'releasedKeepPolicy': ?releasedKeepPolicy,
      'replicationAcl': ?replicationAcl,
      'resourceGroupId': ?resourceGroupId,
      'roleArn': ?roleArn,
      'securityIps': ?securityIps,
      'serverCert': ?serverCert,
      'serverKey': ?serverKey,
      'sourceBiz': ?sourceBiz,
      'sourceDbInstanceId': ?sourceDbInstanceId,
      'sslEnabled': ?sslEnabled,
      'switchOver': ?switchOver,
      'switchTime': ?switchTime,
      'switchTimeMode': ?switchTimeMode,
      'syncMode': ?syncMode,
      'targetMajorVersion': ?targetMajorVersion,
      'tcpConnectionType': ?tcpConnectionType,
      'tdeStatus': ?tdeStatus,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
      'zoneId': ?zoneId,
      'zoneIdSlave1': ?zoneIdSlave1,
    };
  }

  factory RdsUpgradeDbInstanceState.fromMap(Map<String, dynamic> map) {
    return RdsUpgradeDbInstanceState(
      acl: (() { final guardedValue = map['acl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoUpgradeMinorVersion: (() { final guardedValue = map['autoUpgradeMinorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      caType: (() { final guardedValue = map['caType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCaCert: (() { final guardedValue = map['clientCaCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCaEnabled: (() { final guardedValue = map['clientCaEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      clientCertRevocationList: (() { final guardedValue = map['clientCertRevocationList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientCrlEnabled: (() { final guardedValue = map['clientCrlEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      collectStatMode: (() { final guardedValue = map['collectStatMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionStringPrefix: (() { final guardedValue = map['connectionStringPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceClass: (() { final guardedValue = map['dbInstanceClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceDescription: (() { final guardedValue = map['dbInstanceDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbInstanceStorage: (() { final guardedValue = map['dbInstanceStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dbInstanceStorageType: (() { final guardedValue = map['dbInstanceStorageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dbName: (() { final guardedValue = map['dbName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedHostGroupId: (() { final guardedValue = map['dedicatedHostGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveTime: (() { final guardedValue = map['effectiveTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceRestart: (() { final guardedValue = map['forceRestart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      haMode: (() { final guardedValue = map['haMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceNetworkType: (() { final guardedValue = map['instanceNetworkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintainTime: (() { final guardedValue = map['maintainTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RdsUpgradeDbInstanceParameter>(guardedValue, (value) => RdsUpgradeDbInstanceParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      paymentType: (() { final guardedValue = map['paymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pgHbaConfs: (() { final guardedValue = map['pgHbaConfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RdsUpgradeDbInstancePgHbaConf>(guardedValue, (value) => RdsUpgradeDbInstancePgHbaConf.fromMap((value as Map).cast<String, dynamic>()))); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateIpAddress: (() { final guardedValue = map['privateIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      releasedKeepPolicy: (() { final guardedValue = map['releasedKeepPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicationAcl: (() { final guardedValue = map['replicationAcl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityIps: (() { final guardedValue = map['securityIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      serverCert: (() { final guardedValue = map['serverCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverKey: (() { final guardedValue = map['serverKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceBiz: (() { final guardedValue = map['sourceBiz']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDbInstanceId: (() { final guardedValue = map['sourceDbInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslEnabled: (() { final guardedValue = map['sslEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      switchOver: (() { final guardedValue = map['switchOver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      switchTime: (() { final guardedValue = map['switchTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      switchTimeMode: (() { final guardedValue = map['switchTimeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncMode: (() { final guardedValue = map['syncMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetMajorVersion: (() { final guardedValue = map['targetMajorVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tcpConnectionType: (() { final guardedValue = map['tcpConnectionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tdeStatus: (() { final guardedValue = map['tdeStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vswitchId: (() { final guardedValue = map['vswitchId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneIdSlave1: (() { final guardedValue = map['zoneIdSlave1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

