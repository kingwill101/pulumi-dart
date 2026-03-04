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
  /// &gt; **NOTE:** Note This setting causes your instance to restart. Proceed with caution.
  final pulumi.Input<String>? dbProxyEndpointReadWriteMode;

  /// The features that you want to enable for the proxy endpoint. If you specify more than one feature, separate the features with semicolons (;). Format: Feature 1:Status;Feature 2:Status;.... Do not add a semicolon (;) at the end of the last value. Valid feature values:
  /// - ReadWriteSpliting: read/write splitting.
  /// - ConnectionPersist: connection pooling.
  /// - TransactionReadSqlRouteOptimizeStatus: transaction splitting.
  /// Valid status values:
  /// - 1: enabled.
  /// - 0: disabled.
  ///
  /// &gt; **NOTE:** Note You must specify this parameter only when the read/write splitting feature is enabled.
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
  /// &gt; **NOTE:** Note If you set the EffectiveTime parameter to SpecificTime, you must specify the EffectiveSpecificTime parameter.
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
  /// &gt; **NOTE:** Note If you set the ReadOnlyInstanceDistributionType parameter to Custom, you must specify the ReadOnlyInstanceWeight parameter.
  final pulumi.Input<String>? readOnlyInstanceDistributionType;

  /// The maximum latency threshold that is allowed for read/write splitting. If the latency on a read-only instance exceeds the threshold that you specified, ApsaraDB RDS no longer forwards read requests to the read-only instance. If you do not specify this parameter, the default value of this parameter is retained. Unit: seconds. Valid values: 0 to 3600.
  ///
  /// &gt; **NOTE:** Note If the instance runs PostgreSQL, you can enable only the read/write splitting feature, which is specified by ReadWriteSpliting.
  final pulumi.Input<int>? readOnlyInstanceMaxDelayTime;

  /// A list of the read weights of the instance and its read-only instances.  It contains two sub-fields(instance_id and weight). Read weights increase in increments of 100, and the maximum read weight is 10000. See `read_only_instance_weight` below.
  final pulumi.Input<List<RdsDbProxyReadOnlyInstanceWeight>>?
  readOnlyInstanceWeights;

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
    this.dbProxyConnectStringPort,
    this.dbProxyConnectionPrefix,
    this.dbProxyConnectionString,
    this.dbProxyEndpointAliases,
    this.dbProxyEndpointId,
    this.dbProxyEndpointReadWriteMode,
    this.dbProxyFeatures,
    this.dbProxyInstanceNum,
    this.dbProxyInstanceType,
    this.dbProxySslEnabled,
    this.effectiveSpecificTime,
    this.effectiveTime,
    this.instanceId,
    this.instanceNetworkType,
    this.netType,
    this.readOnlyInstanceDistributionType,
    this.readOnlyInstanceMaxDelayTime,
    this.readOnlyInstanceWeights,
    this.resourceGroupId,
    this.sslExpiredTime,
    this.switchTime,
    this.upgradeTime,
    this.vpcId,
    this.vswitchId,
  });

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
      'readOnlyInstanceWeights':
          ?pulumi.Input.mapOptionalInputValue<
            List<RdsDbProxyReadOnlyInstanceWeight>,
            List<Map<String, dynamic>>
          >(
            readOnlyInstanceWeights,
            (value) =>
                pulumi.Input.encodeList<
                  RdsDbProxyReadOnlyInstanceWeight,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      dbProxyConnectStringPort: (() {
        final guardedValue = map['dbProxyConnectStringPort'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dbProxyConnectionPrefix: (() {
        final guardedValue = map['dbProxyConnectionPrefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbProxyConnectionString: (() {
        final guardedValue = map['dbProxyConnectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbProxyEndpointAliases: (() {
        final guardedValue = map['dbProxyEndpointAliases'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbProxyEndpointId: (() {
        final guardedValue = map['dbProxyEndpointId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbProxyEndpointReadWriteMode: (() {
        final guardedValue = map['dbProxyEndpointReadWriteMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbProxyFeatures: (() {
        final guardedValue = map['dbProxyFeatures'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbProxyInstanceNum: (() {
        final guardedValue = map['dbProxyInstanceNum'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      dbProxyInstanceType: (() {
        final guardedValue = map['dbProxyInstanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dbProxySslEnabled: (() {
        final guardedValue = map['dbProxySslEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveSpecificTime: (() {
        final guardedValue = map['effectiveSpecificTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveTime: (() {
        final guardedValue = map['effectiveTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceNetworkType: (() {
        final guardedValue = map['instanceNetworkType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      netType: (() {
        final guardedValue = map['netType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readOnlyInstanceDistributionType: (() {
        final guardedValue = map['readOnlyInstanceDistributionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readOnlyInstanceMaxDelayTime: (() {
        final guardedValue = map['readOnlyInstanceMaxDelayTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      readOnlyInstanceWeights: (() {
        final guardedValue = map['readOnlyInstanceWeights'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<RdsDbProxyReadOnlyInstanceWeight>(
            guardedValue,
            (value) => RdsDbProxyReadOnlyInstanceWeight.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslExpiredTime: (() {
        final guardedValue = map['sslExpiredTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      switchTime: (() {
        final guardedValue = map['switchTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      upgradeTime: (() {
        final guardedValue = map['upgradeTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vswitchId: (() {
        final guardedValue = map['vswitchId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
