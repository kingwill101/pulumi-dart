// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'read_only_instance_parameter.dart';

/// {@template pulumi_rds_read_only_instance_read_only_instance_args_doc}
/// The set of arguments for ReadOnlyInstance.
/// {@endtemplate}
/// {@macro pulumi_rds_read_only_instance_read_only_instance_args_doc}
class ReadOnlyInstanceArgs {
  /// The method that is used to verify the identities of clients. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. It is valid only when `ssl_enabled  = 1`. Valid values:
  /// - cert
  /// - perfer
  /// - verify-ca
  /// - verify-full (supported only when the instance runs PostgreSQL 12 or later)
  final pulumi.Input<String>? acl;
  /// Whether to renewal a DB instance automatically or not. It is valid when instance_charge_type is `PrePaid`. Default to `false`.
  final pulumi.Input<bool>? autoRenew;
  /// Auto-renewal period of an instance, in the unit of the month. It is valid when instance_charge_type is `PrePaid`. Valid value:[1~12], Default to 1.
  final pulumi.Input<int>? autoRenewPeriod;
  /// The type of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the SSLEnabled parameter to 1, the default value of this parameter is aliyun. It is valid only when `ssl_enabled  = 1`. Value range:
  /// - aliyun: a cloud certificate
  /// - custom: a custom certificate
  final pulumi.Input<String>? caType;
  /// The public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the ClientCAEbabled parameter to 1, you must also specify this parameter. It is valid only when `ssl_enabled  = 1`.
  final pulumi.Input<String>? clientCaCert;
  /// Specifies whether to enable the public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. It is valid only when `ssl_enabled  = 1`. Valid values:
  /// - 1: enables the public key
  /// - 0: disables the public key
  final pulumi.Input<int>? clientCaEnabled;
  /// The CRL that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the ClientCrlEnabled parameter to 1, you must also specify this parameter. It is valid only when `ssl_enabled  = 1`.
  final pulumi.Input<String>? clientCertRevocationList;
  /// Specifies whether to enable a certificate revocation list (CRL) that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. It is valid only when `ssl_enabled  = 1`. Valid values:
  /// - 1: enables the CRL
  /// - 0: disables the CRL
  final pulumi.Input<int>? clientCrlEnabled;
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
  final pulumi.Input<String>? dbInstanceStorageType;
  /// The switch of delete protection. Valid values:
  /// - true: delete protect.
  /// - false: no delete protect.
  final pulumi.Input<bool>? deletionProtection;
  /// The instance configuration type. Valid values:
  /// - Up
  /// - Down
  /// - TempUpgrade
  /// - Serverless
  final pulumi.Input<String>? direction;
  /// The method to change.  Default value: Immediate. Valid values:
  /// - Immediate: The change immediately takes effect.
  /// - MaintainTime: The change takes effect during the specified maintenance window. For more information, see ModifyDBInstanceMaintainTime.
  final pulumi.Input<String>? effectiveTime;
  /// Database version. Value options can refer to the latest docs [CreateDBInstance](https://www.alibabacloud.com/help/doc-detail/26228.htm) `EngineVersion`.
  final pulumi.Input<String> engineVersion;
  /// Set it to true to make some parameter efficient when modifying them. Default to false.
  final pulumi.Input<bool>? forceRestart;
  /// Valid values are `Prepaid`, `Postpaid`, Default to `Postpaid`. The interval between the two conversion operations must be greater than 15 minutes. Only when this parameter is `Postpaid`, the instance can be released.
  final pulumi.Input<String>? instanceChargeType;
  /// The name of DB instance. It a string of 2 to 256 characters.
  final pulumi.Input<String>? instanceName;
  /// User-defined DB instance storage space. Value range: [5, 2000] for MySQL/SQL Server HA dual node edition. Increase progressively at a rate of 5 GB. For details, see [Instance type table](https://www.alibabacloud.com/help/doc-detail/26312.htm).
  final pulumi.Input<int> instanceStorage;
  /// DB Instance type. For details, see [Instance type table](https://www.alibabacloud.com/help/doc-detail/26312.htm).
  final pulumi.Input<String> instanceType;
  /// ID of the master instance.
  final pulumi.Input<String> masterDbInstanceId;
  /// The method that is used to modify the IP address whitelist. Default value: Cover. Valid values:
  /// - Cover: Use the value of the SecurityIps parameter to overwrite the existing entries in the IP address whitelist.
  /// - Append: Add the IP addresses and CIDR blocks that are specified in the SecurityIps parameter to the IP address whitelist.
  /// - Delete: Delete IP addresses and CIDR blocks that are specified in the SecurityIps parameter from the IP address whitelist. You must retain at least one IP address or CIDR block.
  final pulumi.Input<String>? modifyMode;
  /// Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm). See `parameters` below.
  final pulumi.Input<List<ReadOnlyInstanceParameter>>? parameters;
  /// The duration that you will buy DB instance (in month). It is valid when instance_charge_type is `PrePaid`. Valid values: [1~9], 12, 24, 36.
  final pulumi.Input<int>? period;
  /// The method that is used to verify the replication permission. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. It is valid only when `ssl_enabled  = 1`. Valid values:
  /// - cert
  /// - perfer
  /// - verify-ca
  /// - verify-full (supported only when the instance runs PostgreSQL 12 or later)
  /// > **NOTE:** Because of data backup and migration, change DB instance type and storage would cost 15~20 minutes. Please make full preparation before changing them.
  final pulumi.Input<String>? replicationAcl;
  /// The ID of resource group which the DB read-only instance belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The type of IP address in the IP address whitelist.
  final pulumi.Input<String>? securityIpType;
  /// List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  final pulumi.Input<List<String>>? securityIps;
  /// The content of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter. It is valid only when `ssl_enabled  = 1`.
  final pulumi.Input<String>? serverCert;
  /// The private key of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter. It is valid only when `ssl_enabled  = 1`.
  final pulumi.Input<String>? serverKey;
  /// Specifies whether to enable or disable SSL encryption. Valid values:
  /// - 1: enables SSL encryption
  /// - 0: disables SSL encryption
  final pulumi.Input<int>? sslEnabled;
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
  /// Whether to upgrade a minor version of the kernel. Valid values:
  /// - true: upgrade
  /// - false: not to upgrade
  final pulumi.Input<bool>? upgradeDbInstanceKernelVersion;
  /// The method to update the minor engine version. Default value: Immediate. It is valid only when `upgrade_db_instance_kernel_version = true`. Valid values:
  /// - Immediate: The minor engine version is immediately updated.
  /// - MaintainTime: The minor engine version is updated during the maintenance window. For more information about how to change the maintenance window, see ModifyDBInstanceMaintainTime.
  /// - SpecifyTime: The minor engine version is updated at the point in time you specify.
  final pulumi.Input<String>? upgradeTime;
  /// The virtual switch ID to launch DB instances in one VPC.
  final pulumi.Input<String>? vswitchId;
  /// The network type of the IP address whitelist. Default value: MIX. Valid values:
  /// - Classic: classic network in enhanced whitelist mode
  /// - VPC: virtual private cloud (VPC) in enhanced whitelist mode
  /// - MIX: standard whitelist mode
  /// > **NOTE:** In standard whitelist mode, IP addresses and CIDR blocks can be added only to the default IP address whitelist. In enhanced whitelist mode, IP addresses and CIDR blocks can be added to both IP address whitelists of the classic network type and those of the VPC network type.
  final pulumi.Input<String>? whitelistNetworkType;
  /// The Zone to launch the DB instance.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [ReadOnlyInstanceArgs].
  /// [acl] The method that is used to verify the identities of clients. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. It is valid only when `ssl_enabled  = 1`. Valid values:
  /// [autoRenew] Whether to renewal a DB instance automatically or not. It is valid when instance_charge_type is `PrePaid`. Default to `false`.
  /// [autoRenewPeriod] Auto-renewal period of an instance, in the unit of the month. It is valid when instance_charge_type is `PrePaid`. Valid value:[1~12], Default to 1.
  /// [caType] The type of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the SSLEnabled parameter to 1, the default value of this parameter is aliyun. It is valid only when `ssl_enabled  = 1`. Value range:
  /// [clientCaCert] The public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the ClientCAEbabled parameter to 1, you must also specify this parameter. It is valid only when `ssl_enabled  = 1`.
  /// [clientCaEnabled] Specifies whether to enable the public key of the CA that issues client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. It is valid only when `ssl_enabled  = 1`. Valid values:
  /// [clientCertRevocationList] The CRL that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the ClientCrlEnabled parameter to 1, you must also specify this parameter. It is valid only when `ssl_enabled  = 1`.
  /// [clientCrlEnabled] Specifies whether to enable a certificate revocation list (CRL) that contains revoked client certificates. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. It is valid only when `ssl_enabled  = 1`. Valid values:
  /// [dbInstanceIpArrayAttribute] The attribute of the IP address whitelist. By default, this parameter is empty.
  /// [dbInstanceIpArrayName] The name of the IP address whitelist. Default value: Default.
  /// [dbInstanceStorageType] The storage type of the instance. Valid values:
  /// [deletionProtection] The switch of delete protection. Valid values:
  /// [direction] The instance configuration type. Valid values:
  /// [effectiveTime] The method to change.  Default value: Immediate. Valid values:
  /// [engineVersion] Database version. Value options can refer to the latest docs [CreateDBInstance](https://www.alibabacloud.com/help/doc-detail/26228.htm) `EngineVersion`.
  /// [forceRestart] Set it to true to make some parameter efficient when modifying them. Default to false.
  /// [instanceChargeType] Valid values are `Prepaid`, `Postpaid`, Default to `Postpaid`. The interval between the two conversion operations must be greater than 15 minutes. Only when this parameter is `Postpaid`, the instance can be released.
  /// [instanceName] The name of DB instance. It a string of 2 to 256 characters.
  /// [instanceStorage] User-defined DB instance storage space. Value range: [5, 2000] for MySQL/SQL Server HA dual node edition. Increase progressively at a rate of 5 GB. For details, see [Instance type table](https://www.alibabacloud.com/help/doc-detail/26312.htm).
  /// [instanceType] DB Instance type. For details, see [Instance type table](https://www.alibabacloud.com/help/doc-detail/26312.htm).
  /// [masterDbInstanceId] ID of the master instance.
  /// [modifyMode] The method that is used to modify the IP address whitelist. Default value: Cover. Valid values:
  /// [parameters] Set of parameters needs to be set after DB instance was launched. Available parameters can refer to the latest docs [View database parameter templates](https://www.alibabacloud.com/help/doc-detail/26284.htm). See `parameters` below.
  /// [period] The duration that you will buy DB instance (in month). It is valid when instance_charge_type is `PrePaid`. Valid values: [1~9], 12, 24, 36.
  /// [replicationAcl] The method that is used to verify the replication permission. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. In addition, this parameter is available only when the public key of the CA that issues client certificates is enabled. It is valid only when `ssl_enabled  = 1`. Valid values:
  /// [resourceGroupId] The ID of resource group which the DB read-only instance belongs.
  /// [securityIpType] The type of IP address in the IP address whitelist.
  /// [securityIps] List of IP addresses allowed to access all databases of an instance. The list contains up to 1,000 IP addresses, separated by commas. Supported formats include 0.0.0.0/0, 10.23.12.24 (IP), and 10.23.12.24/24 (Classless Inter-Domain Routing (CIDR) mode. /24 represents the length of the prefix in an IP address. The range of the prefix length is [1,32]).
  /// [serverCert] The content of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter. It is valid only when `ssl_enabled  = 1`.
  /// [serverKey] The private key of the server certificate. This parameter is supported only when the instance runs PostgreSQL with standard or enhanced SSDs. If you set the CAType parameter to custom, you must also specify this parameter. It is valid only when `ssl_enabled  = 1`.
  /// [sslEnabled] Specifies whether to enable or disable SSL encryption. Valid values:
  /// [switchTime] The specific point in time when you want to perform the update. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. It is valid only when `upgrade_db_instance_kernel_version = true`. The time must be in UTC.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetMinorVersion] The minor engine version to which you want to update the instance. If you do not specify this parameter, the instance is updated to the latest minor engine version. It is valid only when `upgrade_db_instance_kernel_version = true`. You must specify the minor engine version in one of the following formats:
  /// [upgradeDbInstanceKernelVersion] Whether to upgrade a minor version of the kernel. Valid values:
  /// [upgradeTime] The method to update the minor engine version. Default value: Immediate. It is valid only when `upgrade_db_instance_kernel_version = true`. Valid values:
  /// [vswitchId] The virtual switch ID to launch DB instances in one VPC.
  /// [whitelistNetworkType] The network type of the IP address whitelist. Default value: MIX. Valid values:
  /// [zoneId] The Zone to launch the DB instance.
  ReadOnlyInstanceArgs({
    pulumi.Output<String>? acl,
    pulumi.Output<bool>? autoRenew,
    pulumi.Output<int>? autoRenewPeriod,
    pulumi.Output<String>? caType,
    pulumi.Output<String>? clientCaCert,
    pulumi.Output<int>? clientCaEnabled,
    pulumi.Output<String>? clientCertRevocationList,
    pulumi.Output<int>? clientCrlEnabled,
    pulumi.Output<String>? dbInstanceIpArrayAttribute,
    pulumi.Output<String>? dbInstanceIpArrayName,
    pulumi.Output<String>? dbInstanceStorageType,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? direction,
    pulumi.Output<String>? effectiveTime,
    required pulumi.Output<String> engineVersion,
    pulumi.Output<bool>? forceRestart,
    pulumi.Output<String>? instanceChargeType,
    pulumi.Output<String>? instanceName,
    required pulumi.Output<int> instanceStorage,
    required pulumi.Output<String> instanceType,
    required pulumi.Output<String> masterDbInstanceId,
    pulumi.Output<String>? modifyMode,
    pulumi.Output<List<ReadOnlyInstanceParameter>>? parameters,
    pulumi.Output<int>? period,
    pulumi.Output<String>? replicationAcl,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? securityIpType,
    pulumi.Output<List<String>>? securityIps,
    pulumi.Output<String>? serverCert,
    pulumi.Output<String>? serverKey,
    pulumi.Output<int>? sslEnabled,
    pulumi.Output<String>? switchTime,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? targetMinorVersion,
    pulumi.Output<bool>? upgradeDbInstanceKernelVersion,
    pulumi.Output<String>? upgradeTime,
    pulumi.Output<String>? vswitchId,
    pulumi.Output<String>? whitelistNetworkType,
    pulumi.Output<String>? zoneId,
  }) :
      acl = pulumi.Input.asOptionalInput<String>(acl),
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      autoRenewPeriod = pulumi.Input.asOptionalInput<int>(autoRenewPeriod),
      caType = pulumi.Input.asOptionalInput<String>(caType),
      clientCaCert = pulumi.Input.asOptionalInput<String>(clientCaCert),
      clientCaEnabled = pulumi.Input.asOptionalInput<int>(clientCaEnabled),
      clientCertRevocationList = pulumi.Input.asOptionalInput<String>(clientCertRevocationList),
      clientCrlEnabled = pulumi.Input.asOptionalInput<int>(clientCrlEnabled),
      dbInstanceIpArrayAttribute = pulumi.Input.asOptionalInput<String>(dbInstanceIpArrayAttribute),
      dbInstanceIpArrayName = pulumi.Input.asOptionalInput<String>(dbInstanceIpArrayName),
      dbInstanceStorageType = pulumi.Input.asOptionalInput<String>(dbInstanceStorageType),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      direction = pulumi.Input.asOptionalInput<String>(direction),
      effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
      engineVersion = pulumi.Input.asInput<String>(engineVersion),
      forceRestart = pulumi.Input.asOptionalInput<bool>(forceRestart),
      instanceChargeType = pulumi.Input.asOptionalInput<String>(instanceChargeType),
      instanceName = pulumi.Input.asOptionalInput<String>(instanceName),
      instanceStorage = pulumi.Input.asInput<int>(instanceStorage),
      instanceType = pulumi.Input.asInput<String>(instanceType),
      masterDbInstanceId = pulumi.Input.asInput<String>(masterDbInstanceId),
      modifyMode = pulumi.Input.asOptionalInput<String>(modifyMode),
      parameters = pulumi.Input.asOptionalInput<List<ReadOnlyInstanceParameter>>(parameters),
      period = pulumi.Input.asOptionalInput<int>(period),
      replicationAcl = pulumi.Input.asOptionalInput<String>(replicationAcl),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      securityIpType = pulumi.Input.asOptionalInput<String>(securityIpType),
      securityIps = pulumi.Input.asOptionalInput<List<String>>(securityIps),
      serverCert = pulumi.Input.asOptionalInput<String>(serverCert),
      serverKey = pulumi.Input.asOptionalInput<String>(serverKey),
      sslEnabled = pulumi.Input.asOptionalInput<int>(sslEnabled),
      switchTime = pulumi.Input.asOptionalInput<String>(switchTime),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetMinorVersion = pulumi.Input.asOptionalInput<String>(targetMinorVersion),
      upgradeDbInstanceKernelVersion = pulumi.Input.asOptionalInput<bool>(upgradeDbInstanceKernelVersion),
      upgradeTime = pulumi.Input.asOptionalInput<String>(upgradeTime),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId),
      whitelistNetworkType = pulumi.Input.asOptionalInput<String>(whitelistNetworkType),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?acl,
      'autoRenew': ?autoRenew,
      'autoRenewPeriod': ?autoRenewPeriod,
      'caType': ?caType,
      'clientCaCert': ?clientCaCert,
      'clientCaEnabled': ?clientCaEnabled,
      'clientCertRevocationList': ?clientCertRevocationList,
      'clientCrlEnabled': ?clientCrlEnabled,
      'dbInstanceIpArrayAttribute': ?dbInstanceIpArrayAttribute,
      'dbInstanceIpArrayName': ?dbInstanceIpArrayName,
      'dbInstanceStorageType': ?dbInstanceStorageType,
      'deletionProtection': ?deletionProtection,
      'direction': ?direction,
      'effectiveTime': ?effectiveTime,
      'engineVersion': engineVersion,
      'forceRestart': ?forceRestart,
      'instanceChargeType': ?instanceChargeType,
      'instanceName': ?instanceName,
      'instanceStorage': instanceStorage,
      'instanceType': instanceType,
      'masterDbInstanceId': masterDbInstanceId,
      'modifyMode': ?modifyMode,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ReadOnlyInstanceParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ReadOnlyInstanceParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'period': ?period,
      'replicationAcl': ?replicationAcl,
      'resourceGroupId': ?resourceGroupId,
      'securityIpType': ?securityIpType,
      'securityIps': ?securityIps,
      'serverCert': ?serverCert,
      'serverKey': ?serverKey,
      'sslEnabled': ?sslEnabled,
      'switchTime': ?switchTime,
      'tags': ?tags,
      'targetMinorVersion': ?targetMinorVersion,
      'upgradeDbInstanceKernelVersion': ?upgradeDbInstanceKernelVersion,
      'upgradeTime': ?upgradeTime,
      'vswitchId': ?vswitchId,
      'whitelistNetworkType': ?whitelistNetworkType,
      'zoneId': ?zoneId,
    };
  }

  factory ReadOnlyInstanceArgs.fromMap(Map<String, dynamic> map) {
    return ReadOnlyInstanceArgs(
      acl: map['acl'] == null ? null : pulumi.Output.create<String>(map['acl'] as String),
      autoRenew: map['autoRenew'] == null ? null : pulumi.Output.create<bool>(map['autoRenew'] as bool),
      autoRenewPeriod: map['autoRenewPeriod'] == null ? null : pulumi.Output.create<int>(map['autoRenewPeriod'] as int),
      caType: map['caType'] == null ? null : pulumi.Output.create<String>(map['caType'] as String),
      clientCaCert: map['clientCaCert'] == null ? null : pulumi.Output.create<String>(map['clientCaCert'] as String),
      clientCaEnabled: map['clientCaEnabled'] == null ? null : pulumi.Output.create<int>(map['clientCaEnabled'] as int),
      clientCertRevocationList: map['clientCertRevocationList'] == null ? null : pulumi.Output.create<String>(map['clientCertRevocationList'] as String),
      clientCrlEnabled: map['clientCrlEnabled'] == null ? null : pulumi.Output.create<int>(map['clientCrlEnabled'] as int),
      dbInstanceIpArrayAttribute: map['dbInstanceIpArrayAttribute'] == null ? null : pulumi.Output.create<String>(map['dbInstanceIpArrayAttribute'] as String),
      dbInstanceIpArrayName: map['dbInstanceIpArrayName'] == null ? null : pulumi.Output.create<String>(map['dbInstanceIpArrayName'] as String),
      dbInstanceStorageType: map['dbInstanceStorageType'] == null ? null : pulumi.Output.create<String>(map['dbInstanceStorageType'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      direction: map['direction'] == null ? null : pulumi.Output.create<String>(map['direction'] as String),
      effectiveTime: map['effectiveTime'] == null ? null : pulumi.Output.create<String>(map['effectiveTime'] as String),
      engineVersion: pulumi.Output.create<String>(map['engineVersion'] as String),
      forceRestart: map['forceRestart'] == null ? null : pulumi.Output.create<bool>(map['forceRestart'] as bool),
      instanceChargeType: map['instanceChargeType'] == null ? null : pulumi.Output.create<String>(map['instanceChargeType'] as String),
      instanceName: map['instanceName'] == null ? null : pulumi.Output.create<String>(map['instanceName'] as String),
      instanceStorage: pulumi.Output.create<int>(map['instanceStorage'] as int),
      instanceType: pulumi.Output.create<String>(map['instanceType'] as String),
      masterDbInstanceId: pulumi.Output.create<String>(map['masterDbInstanceId'] as String),
      modifyMode: map['modifyMode'] == null ? null : pulumi.Output.create<String>(map['modifyMode'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<List<ReadOnlyInstanceParameter>>(pulumi.Input.decodeList<ReadOnlyInstanceParameter>(map['parameters'], (value) => ReadOnlyInstanceParameter.fromMap((value as Map).cast<String, dynamic>()))),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      replicationAcl: map['replicationAcl'] == null ? null : pulumi.Output.create<String>(map['replicationAcl'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      securityIpType: map['securityIpType'] == null ? null : pulumi.Output.create<String>(map['securityIpType'] as String),
      securityIps: map['securityIps'] == null ? null : pulumi.Output.create<List<String>>((map['securityIps'] as List).cast<String>()),
      serverCert: map['serverCert'] == null ? null : pulumi.Output.create<String>(map['serverCert'] as String),
      serverKey: map['serverKey'] == null ? null : pulumi.Output.create<String>(map['serverKey'] as String),
      sslEnabled: map['sslEnabled'] == null ? null : pulumi.Output.create<int>(map['sslEnabled'] as int),
      switchTime: map['switchTime'] == null ? null : pulumi.Output.create<String>(map['switchTime'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetMinorVersion: map['targetMinorVersion'] == null ? null : pulumi.Output.create<String>(map['targetMinorVersion'] as String),
      upgradeDbInstanceKernelVersion: map['upgradeDbInstanceKernelVersion'] == null ? null : pulumi.Output.create<bool>(map['upgradeDbInstanceKernelVersion'] as bool),
      upgradeTime: map['upgradeTime'] == null ? null : pulumi.Output.create<String>(map['upgradeTime'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
      whitelistNetworkType: map['whitelistNetworkType'] == null ? null : pulumi.Output.create<String>(map['whitelistNetworkType'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

