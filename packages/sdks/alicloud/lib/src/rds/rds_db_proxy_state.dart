// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_db_proxy_read_only_instance_weight.dart';

/// Input properties used for looking up and filtering RdsDbProxy resources.
class RdsDbProxyState {
  /// The port number that is associated with the proxy endpoint.
  final pulumi.Input<int>? dbProxyConnectStringPort;
  /// The new prefix of the proxy endpoint. Enter a prefix.
  final pulumi.Input<String>? dbProxyConnectionPrefix;
  /// Connection instance string.
  final pulumi.Input<String>? dbProxyConnectionString;
  /// Remarks of agent terminal.
  final pulumi.Input<String>? dbProxyEndpointAliases;
  /// Proxy connection address ID.
  final pulumi.Input<String>? dbProxyEndpointId;
  /// The read and write attributes of the proxy terminal. Valid values:
  /// - ReadWrite: The proxy terminal connects to the primary instance and can receive both read and write requests.
  /// - ReadOnly: The proxy terminal does not connect to the primary instance and can receive only read requests. This is the default value.
  ///
  /// > **NOTE:** Note This setting causes your instance to restart. Proceed with caution.
  final pulumi.Input<String>? dbProxyEndpointReadWriteMode;
  /// The features that you want to enable for the proxy endpoint. If you specify more than one feature, separate the features with semicolons (;). Format: Feature 1:Status;Feature 2:Status;.... Do not add a semicolon (;) at the end of the last value. Valid feature values:
  /// - ReadWriteSpliting: read/write splitting.
  /// - ConnectionPersist: connection pooling.
  /// - TransactionReadSqlRouteOptimizeStatus: transaction splitting.
  /// Valid status values:
  /// - 1: enabled.
  /// - 0: disabled.
  ///
  /// > **NOTE:** Note You must specify this parameter only when the read/write splitting feature is enabled.
  final pulumi.Input<String>? dbProxyFeatures;
  /// The number of proxy instances that are enabled. Valid values: 1 to 60.
  final pulumi.Input<int>? dbProxyInstanceNum;
  /// The database proxy type. Valid values:
  /// - common: universal proxy.
  /// - exclusive: Exclusive proxy (default).
  final pulumi.Input<String>? dbProxyInstanceType;
  /// The SSL configuration setting that you want to apply on the instance. Valid values:
  /// - Close: disables SSL encryption.
  /// - Open: enables SSL encryption or modifies the endpoint that requires SSL encryption.
  /// - Update: updates the validity period of the SSL certificate.
  final pulumi.Input<String>? dbProxySslEnabled;
  /// The point in time at which you want to apply the new database proxy settings. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  final pulumi.Input<String>? effectiveSpecificTime;
  /// When modifying the number of proxy instances,The time when you want to apply the new database proxy settings.Valid values:
  /// - Immediate: ApsaraDB RDS immediately applies the new settings.
  /// - MaintainTime: ApsaraDB RDS applies the new settings during the maintenance window that you specified. For more information, see Modify the maintenance window.
  /// - SpecificTime: ApsaraDB RDS applies the new settings at a specified point in time.
  ///
  /// > **NOTE:** Note If you set the EffectiveTime parameter to SpecificTime, you must specify the EffectiveSpecificTime parameter.
  final pulumi.Input<String>? effectiveTime;
  /// The Id of instance that can run database.
  final pulumi.Input<String>? instanceId;
  /// The network type of the instance. Set the value to VPC.
  final pulumi.Input<String>? instanceNetworkType;
  /// Network type of proxy connection address.
  final pulumi.Input<String>? netType;
  /// The policy that is used to allocate read weights. Valid values:
  /// - Standard: ApsaraDB RDS automatically allocates read weights to the instance and its read-only instances based on the specifications of the instances.
  /// - Custom: You must manually allocate read weights to the instance and its read-only instances.
  ///
  /// > **NOTE:** Note If you set the ReadOnlyInstanceDistributionType parameter to Custom, you must specify the ReadOnlyInstanceWeight parameter.
  final pulumi.Input<String>? readOnlyInstanceDistributionType;
  /// The maximum latency threshold that is allowed for read/write splitting. If the latency on a read-only instance exceeds the threshold that you specified, ApsaraDB RDS no longer forwards read requests to the read-only instance. If you do not specify this parameter, the default value of this parameter is retained. Unit: seconds. Valid values: 0 to 3600.
  ///
  /// > **NOTE:** Note If the instance runs PostgreSQL, you can enable only the read/write splitting feature, which is specified by ReadWriteSpliting.
  final pulumi.Input<int>? readOnlyInstanceMaxDelayTime;
  /// A list of the read weights of the instance and its read-only instances.  It contains two sub-fields(instance_id and weight). Read weights increase in increments of 100, and the maximum read weight is 10000. See `read_only_instance_weight` below.
  final pulumi.Input<List<RdsDbProxyReadOnlyInstanceWeight>>? readOnlyInstanceWeights;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The time when the certificate expires.
  final pulumi.Input<String>? sslExpiredTime;
  /// The point in time at which you want to upgrade the database proxy version of the instance. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  final pulumi.Input<String>? switchTime;
  /// The time when you want to upgrade the database proxy version of the instance. Valid values:
  /// - MaintainTime: ApsaraDB RDS performs the upgrade during the maintenance window that you specified. This is the default value. For more information, see Modify the maintenance window.
  /// - Immediate: ApsaraDB RDS immediately performs the upgrade.
  /// - SpecificTime: ApsaraDB RDS performs the upgrade at a specified point in time.
  final pulumi.Input<String>? upgradeTime;
  /// The ID of the virtual private cloud (VPC) to which the instance belongs.
  final pulumi.Input<String>? vpcId;
  /// The ID of the vSwitch that is associated with the specified VPC.
  final pulumi.Input<String>? vswitchId;

  /// Creates a new [RdsDbProxyState].
  /// [dbProxyConnectStringPort] The port number that is associated with the proxy endpoint.
  /// [dbProxyConnectionPrefix] The new prefix of the proxy endpoint. Enter a prefix.
  /// [dbProxyConnectionString] Connection instance string.
  /// [dbProxyEndpointAliases] Remarks of agent terminal.
  /// [dbProxyEndpointId] Proxy connection address ID.
  /// [dbProxyEndpointReadWriteMode] The read and write attributes of the proxy terminal. Valid values:
  /// [dbProxyFeatures] The features that you want to enable for the proxy endpoint. If you specify more than one feature, separate the features with semicolons (;). Format: Feature 1:Status;Feature 2:Status;.... Do not add a semicolon (;) at the end of the last value. Valid feature values:
  /// [dbProxyInstanceNum] The number of proxy instances that are enabled. Valid values: 1 to 60.
  /// [dbProxyInstanceType] The database proxy type. Valid values:
  /// [dbProxySslEnabled] The SSL configuration setting that you want to apply on the instance. Valid values:
  /// [effectiveSpecificTime] The point in time at which you want to apply the new database proxy settings. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  /// [effectiveTime] When modifying the number of proxy instances,The time when you want to apply the new database proxy settings.Valid values:
  /// [instanceId] The Id of instance that can run database.
  /// [instanceNetworkType] The network type of the instance. Set the value to VPC.
  /// [netType] Network type of proxy connection address.
  /// [readOnlyInstanceDistributionType] The policy that is used to allocate read weights. Valid values:
  /// [readOnlyInstanceMaxDelayTime] The maximum latency threshold that is allowed for read/write splitting. If the latency on a read-only instance exceeds the threshold that you specified, ApsaraDB RDS no longer forwards read requests to the read-only instance. If you do not specify this parameter, the default value of this parameter is retained. Unit: seconds. Valid values: 0 to 3600.
  /// [readOnlyInstanceWeights] A list of the read weights of the instance and its read-only instances.  It contains two sub-fields(instance_id and weight). Read weights increase in increments of 100, and the maximum read weight is 10000. See `read_only_instance_weight` below.
  /// [resourceGroupId] The ID of the resource group.
  /// [sslExpiredTime] The time when the certificate expires.
  /// [switchTime] The point in time at which you want to upgrade the database proxy version of the instance. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  /// [upgradeTime] The time when you want to upgrade the database proxy version of the instance. Valid values:
  /// [vpcId] The ID of the virtual private cloud (VPC) to which the instance belongs.
  /// [vswitchId] The ID of the vSwitch that is associated with the specified VPC.
  RdsDbProxyState({
    pulumi.Output<int>? dbProxyConnectStringPort,
    pulumi.Output<String>? dbProxyConnectionPrefix,
    pulumi.Output<String>? dbProxyConnectionString,
    pulumi.Output<String>? dbProxyEndpointAliases,
    pulumi.Output<String>? dbProxyEndpointId,
    pulumi.Output<String>? dbProxyEndpointReadWriteMode,
    pulumi.Output<String>? dbProxyFeatures,
    pulumi.Output<int>? dbProxyInstanceNum,
    pulumi.Output<String>? dbProxyInstanceType,
    pulumi.Output<String>? dbProxySslEnabled,
    pulumi.Output<String>? effectiveSpecificTime,
    pulumi.Output<String>? effectiveTime,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? instanceNetworkType,
    pulumi.Output<String>? netType,
    pulumi.Output<String>? readOnlyInstanceDistributionType,
    pulumi.Output<int>? readOnlyInstanceMaxDelayTime,
    pulumi.Output<List<RdsDbProxyReadOnlyInstanceWeight>>? readOnlyInstanceWeights,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? sslExpiredTime,
    pulumi.Output<String>? switchTime,
    pulumi.Output<String>? upgradeTime,
    pulumi.Output<String>? vpcId,
    pulumi.Output<String>? vswitchId,
  }) :
      dbProxyConnectStringPort = pulumi.Input.asOptionalInput<int>(dbProxyConnectStringPort),
      dbProxyConnectionPrefix = pulumi.Input.asOptionalInput<String>(dbProxyConnectionPrefix),
      dbProxyConnectionString = pulumi.Input.asOptionalInput<String>(dbProxyConnectionString),
      dbProxyEndpointAliases = pulumi.Input.asOptionalInput<String>(dbProxyEndpointAliases),
      dbProxyEndpointId = pulumi.Input.asOptionalInput<String>(dbProxyEndpointId),
      dbProxyEndpointReadWriteMode = pulumi.Input.asOptionalInput<String>(dbProxyEndpointReadWriteMode),
      dbProxyFeatures = pulumi.Input.asOptionalInput<String>(dbProxyFeatures),
      dbProxyInstanceNum = pulumi.Input.asOptionalInput<int>(dbProxyInstanceNum),
      dbProxyInstanceType = pulumi.Input.asOptionalInput<String>(dbProxyInstanceType),
      dbProxySslEnabled = pulumi.Input.asOptionalInput<String>(dbProxySslEnabled),
      effectiveSpecificTime = pulumi.Input.asOptionalInput<String>(effectiveSpecificTime),
      effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      instanceNetworkType = pulumi.Input.asOptionalInput<String>(instanceNetworkType),
      netType = pulumi.Input.asOptionalInput<String>(netType),
      readOnlyInstanceDistributionType = pulumi.Input.asOptionalInput<String>(readOnlyInstanceDistributionType),
      readOnlyInstanceMaxDelayTime = pulumi.Input.asOptionalInput<int>(readOnlyInstanceMaxDelayTime),
      readOnlyInstanceWeights = pulumi.Input.asOptionalInput<List<RdsDbProxyReadOnlyInstanceWeight>>(readOnlyInstanceWeights),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      sslExpiredTime = pulumi.Input.asOptionalInput<String>(sslExpiredTime),
      switchTime = pulumi.Input.asOptionalInput<String>(switchTime),
      upgradeTime = pulumi.Input.asOptionalInput<String>(upgradeTime),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId),
      vswitchId = pulumi.Input.asOptionalInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbProxyConnectStringPort': ?dbProxyConnectStringPort,
      'dbProxyConnectionPrefix': ?dbProxyConnectionPrefix,
      'dbProxyConnectionString': ?dbProxyConnectionString,
      'dbProxyEndpointAliases': ?dbProxyEndpointAliases,
      'dbProxyEndpointId': ?dbProxyEndpointId,
      'dbProxyEndpointReadWriteMode': ?dbProxyEndpointReadWriteMode,
      'dbProxyFeatures': ?dbProxyFeatures,
      'dbProxyInstanceNum': ?dbProxyInstanceNum,
      'dbProxyInstanceType': ?dbProxyInstanceType,
      'dbProxySslEnabled': ?dbProxySslEnabled,
      'effectiveSpecificTime': ?effectiveSpecificTime,
      'effectiveTime': ?effectiveTime,
      'instanceId': ?instanceId,
      'instanceNetworkType': ?instanceNetworkType,
      'netType': ?netType,
      'readOnlyInstanceDistributionType': ?readOnlyInstanceDistributionType,
      'readOnlyInstanceMaxDelayTime': ?readOnlyInstanceMaxDelayTime,
      'readOnlyInstanceWeights': ?pulumi.Input.mapOptionalInputValue<List<RdsDbProxyReadOnlyInstanceWeight>, List<Map<String, dynamic>>>(readOnlyInstanceWeights, (value) => pulumi.Input.encodeList<RdsDbProxyReadOnlyInstanceWeight, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupId': ?resourceGroupId,
      'sslExpiredTime': ?sslExpiredTime,
      'switchTime': ?switchTime,
      'upgradeTime': ?upgradeTime,
      'vpcId': ?vpcId,
      'vswitchId': ?vswitchId,
    };
  }

  factory RdsDbProxyState.fromMap(Map<String, dynamic> map) {
    return RdsDbProxyState(
      dbProxyConnectStringPort: map['dbProxyConnectStringPort'] == null ? null : pulumi.Output.create<int>(map['dbProxyConnectStringPort'] as int),
      dbProxyConnectionPrefix: map['dbProxyConnectionPrefix'] == null ? null : pulumi.Output.create<String>(map['dbProxyConnectionPrefix'] as String),
      dbProxyConnectionString: map['dbProxyConnectionString'] == null ? null : pulumi.Output.create<String>(map['dbProxyConnectionString'] as String),
      dbProxyEndpointAliases: map['dbProxyEndpointAliases'] == null ? null : pulumi.Output.create<String>(map['dbProxyEndpointAliases'] as String),
      dbProxyEndpointId: map['dbProxyEndpointId'] == null ? null : pulumi.Output.create<String>(map['dbProxyEndpointId'] as String),
      dbProxyEndpointReadWriteMode: map['dbProxyEndpointReadWriteMode'] == null ? null : pulumi.Output.create<String>(map['dbProxyEndpointReadWriteMode'] as String),
      dbProxyFeatures: map['dbProxyFeatures'] == null ? null : pulumi.Output.create<String>(map['dbProxyFeatures'] as String),
      dbProxyInstanceNum: map['dbProxyInstanceNum'] == null ? null : pulumi.Output.create<int>(map['dbProxyInstanceNum'] as int),
      dbProxyInstanceType: map['dbProxyInstanceType'] == null ? null : pulumi.Output.create<String>(map['dbProxyInstanceType'] as String),
      dbProxySslEnabled: map['dbProxySslEnabled'] == null ? null : pulumi.Output.create<String>(map['dbProxySslEnabled'] as String),
      effectiveSpecificTime: map['effectiveSpecificTime'] == null ? null : pulumi.Output.create<String>(map['effectiveSpecificTime'] as String),
      effectiveTime: map['effectiveTime'] == null ? null : pulumi.Output.create<String>(map['effectiveTime'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      instanceNetworkType: map['instanceNetworkType'] == null ? null : pulumi.Output.create<String>(map['instanceNetworkType'] as String),
      netType: map['netType'] == null ? null : pulumi.Output.create<String>(map['netType'] as String),
      readOnlyInstanceDistributionType: map['readOnlyInstanceDistributionType'] == null ? null : pulumi.Output.create<String>(map['readOnlyInstanceDistributionType'] as String),
      readOnlyInstanceMaxDelayTime: map['readOnlyInstanceMaxDelayTime'] == null ? null : pulumi.Output.create<int>(map['readOnlyInstanceMaxDelayTime'] as int),
      readOnlyInstanceWeights: map['readOnlyInstanceWeights'] == null ? null : pulumi.Output.create<List<RdsDbProxyReadOnlyInstanceWeight>>(pulumi.Input.decodeList<RdsDbProxyReadOnlyInstanceWeight>(map['readOnlyInstanceWeights'], (value) => RdsDbProxyReadOnlyInstanceWeight.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      sslExpiredTime: map['sslExpiredTime'] == null ? null : pulumi.Output.create<String>(map['sslExpiredTime'] as String),
      switchTime: map['switchTime'] == null ? null : pulumi.Output.create<String>(map['switchTime'] as String),
      upgradeTime: map['upgradeTime'] == null ? null : pulumi.Output.create<String>(map['upgradeTime'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
      vswitchId: map['vswitchId'] == null ? null : pulumi.Output.create<String>(map['vswitchId'] as String),
    );
  }
}

