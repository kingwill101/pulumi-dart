// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_db_proxy_read_only_instance_weight.dart';

/// {@template pulumi_rds_rds_db_proxy_rds_db_proxy_args_doc}
/// The set of arguments for RdsDbProxy.
/// {@endtemplate}
/// {@macro pulumi_rds_rds_db_proxy_rds_db_proxy_args_doc}
class RdsDbProxyArgs {
  /// The port number that is associated with the proxy endpoint.
  final pulumi.Input<int>? dbProxyConnectStringPort;
  /// The new prefix of the proxy endpoint. Enter a prefix.
  final pulumi.Input<String>? dbProxyConnectionPrefix;
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
  final pulumi.Input<int> dbProxyInstanceNum;
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
  final pulumi.Input<String> instanceId;
  /// The network type of the instance. Set the value to VPC.
  final pulumi.Input<String> instanceNetworkType;
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
  /// The point in time at which you want to upgrade the database proxy version of the instance. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  final pulumi.Input<String>? switchTime;
  /// The time when you want to upgrade the database proxy version of the instance. Valid values:
  /// - MaintainTime: ApsaraDB RDS performs the upgrade during the maintenance window that you specified. This is the default value. For more information, see Modify the maintenance window.
  /// - Immediate: ApsaraDB RDS immediately performs the upgrade.
  /// - SpecificTime: ApsaraDB RDS performs the upgrade at a specified point in time.
  final pulumi.Input<String>? upgradeTime;
  /// The ID of the virtual private cloud (VPC) to which the instance belongs.
  final pulumi.Input<String> vpcId;
  /// The ID of the vSwitch that is associated with the specified VPC.
  final pulumi.Input<String> vswitchId;

  /// Creates a new [RdsDbProxyArgs].
  /// [dbProxyConnectStringPort] The port number that is associated with the proxy endpoint.
  /// [dbProxyConnectionPrefix] The new prefix of the proxy endpoint. Enter a prefix.
  /// [dbProxyEndpointReadWriteMode] The read and write attributes of the proxy terminal. Valid values:
  /// [dbProxyFeatures] The features that you want to enable for the proxy endpoint. If you specify more than one feature, separate the features with semicolons (;). Format: Feature 1:Status;Feature 2:Status;.... Do not add a semicolon (;) at the end of the last value. Valid feature values:
  /// [dbProxyInstanceNum] The number of proxy instances that are enabled. Valid values: 1 to 60.
  /// [dbProxyInstanceType] The database proxy type. Valid values:
  /// [dbProxySslEnabled] The SSL configuration setting that you want to apply on the instance. Valid values:
  /// [effectiveSpecificTime] The point in time at which you want to apply the new database proxy settings. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  /// [effectiveTime] When modifying the number of proxy instances,The time when you want to apply the new database proxy settings.Valid values:
  /// [instanceId] The Id of instance that can run database.
  /// [instanceNetworkType] The network type of the instance. Set the value to VPC.
  /// [readOnlyInstanceDistributionType] The policy that is used to allocate read weights. Valid values:
  /// [readOnlyInstanceMaxDelayTime] The maximum latency threshold that is allowed for read/write splitting. If the latency on a read-only instance exceeds the threshold that you specified, ApsaraDB RDS no longer forwards read requests to the read-only instance. If you do not specify this parameter, the default value of this parameter is retained. Unit: seconds. Valid values: 0 to 3600.
  /// [readOnlyInstanceWeights] A list of the read weights of the instance and its read-only instances.  It contains two sub-fields(instance_id and weight). Read weights increase in increments of 100, and the maximum read weight is 10000. See `read_only_instance_weight` below.
  /// [resourceGroupId] The ID of the resource group.
  /// [switchTime] The point in time at which you want to upgrade the database proxy version of the instance. Specify the time in the ISO 8601 standard in the yyyy-MM-ddTHH:mm:ssZ format. The time must be in UTC.
  /// [upgradeTime] The time when you want to upgrade the database proxy version of the instance. Valid values:
  /// [vpcId] The ID of the virtual private cloud (VPC) to which the instance belongs.
  /// [vswitchId] The ID of the vSwitch that is associated with the specified VPC.
  RdsDbProxyArgs({
    int? dbProxyConnectStringPort,
    String? dbProxyConnectionPrefix,
    String? dbProxyEndpointReadWriteMode,
    String? dbProxyFeatures,
    required int dbProxyInstanceNum,
    String? dbProxyInstanceType,
    String? dbProxySslEnabled,
    String? effectiveSpecificTime,
    String? effectiveTime,
    required String instanceId,
    required String instanceNetworkType,
    String? readOnlyInstanceDistributionType,
    int? readOnlyInstanceMaxDelayTime,
    List<RdsDbProxyReadOnlyInstanceWeight>? readOnlyInstanceWeights,
    String? resourceGroupId,
    String? switchTime,
    String? upgradeTime,
    required String vpcId,
    required String vswitchId,
  }) :
      dbProxyConnectStringPort = pulumi.Input.asOptionalInput<int>(dbProxyConnectStringPort),
      dbProxyConnectionPrefix = pulumi.Input.asOptionalInput<String>(dbProxyConnectionPrefix),
      dbProxyEndpointReadWriteMode = pulumi.Input.asOptionalInput<String>(dbProxyEndpointReadWriteMode),
      dbProxyFeatures = pulumi.Input.asOptionalInput<String>(dbProxyFeatures),
      dbProxyInstanceNum = pulumi.Input.asInput<int>(dbProxyInstanceNum),
      dbProxyInstanceType = pulumi.Input.asOptionalInput<String>(dbProxyInstanceType),
      dbProxySslEnabled = pulumi.Input.asOptionalInput<String>(dbProxySslEnabled),
      effectiveSpecificTime = pulumi.Input.asOptionalInput<String>(effectiveSpecificTime),
      effectiveTime = pulumi.Input.asOptionalInput<String>(effectiveTime),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      instanceNetworkType = pulumi.Input.asInput<String>(instanceNetworkType),
      readOnlyInstanceDistributionType = pulumi.Input.asOptionalInput<String>(readOnlyInstanceDistributionType),
      readOnlyInstanceMaxDelayTime = pulumi.Input.asOptionalInput<int>(readOnlyInstanceMaxDelayTime),
      readOnlyInstanceWeights = pulumi.Input.asOptionalInput<List<RdsDbProxyReadOnlyInstanceWeight>>(readOnlyInstanceWeights),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      switchTime = pulumi.Input.asOptionalInput<String>(switchTime),
      upgradeTime = pulumi.Input.asOptionalInput<String>(upgradeTime),
      vpcId = pulumi.Input.asInput<String>(vpcId),
      vswitchId = pulumi.Input.asInput<String>(vswitchId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dbProxyConnectStringPort': ?dbProxyConnectStringPort,
      'dbProxyConnectionPrefix': ?dbProxyConnectionPrefix,
      'dbProxyEndpointReadWriteMode': ?dbProxyEndpointReadWriteMode,
      'dbProxyFeatures': ?dbProxyFeatures,
      'dbProxyInstanceNum': dbProxyInstanceNum,
      'dbProxyInstanceType': ?dbProxyInstanceType,
      'dbProxySslEnabled': ?dbProxySslEnabled,
      'effectiveSpecificTime': ?effectiveSpecificTime,
      'effectiveTime': ?effectiveTime,
      'instanceId': instanceId,
      'instanceNetworkType': instanceNetworkType,
      'readOnlyInstanceDistributionType': ?readOnlyInstanceDistributionType,
      'readOnlyInstanceMaxDelayTime': ?readOnlyInstanceMaxDelayTime,
      'readOnlyInstanceWeights': ?pulumi.Input.mapOptionalInputValue<List<RdsDbProxyReadOnlyInstanceWeight>, List<Map<String, dynamic>>>(readOnlyInstanceWeights, (value) => pulumi.Input.encodeList<RdsDbProxyReadOnlyInstanceWeight, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupId': ?resourceGroupId,
      'switchTime': ?switchTime,
      'upgradeTime': ?upgradeTime,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
    };
  }

  factory RdsDbProxyArgs.fromMap(Map<String, dynamic> map) {
    return RdsDbProxyArgs(
      dbProxyConnectStringPort: map['dbProxyConnectStringPort'] == null ? null : map['dbProxyConnectStringPort'] as int,
      dbProxyConnectionPrefix: map['dbProxyConnectionPrefix'] == null ? null : map['dbProxyConnectionPrefix'] as String,
      dbProxyEndpointReadWriteMode: map['dbProxyEndpointReadWriteMode'] == null ? null : map['dbProxyEndpointReadWriteMode'] as String,
      dbProxyFeatures: map['dbProxyFeatures'] == null ? null : map['dbProxyFeatures'] as String,
      dbProxyInstanceNum: map['dbProxyInstanceNum'] as int,
      dbProxyInstanceType: map['dbProxyInstanceType'] == null ? null : map['dbProxyInstanceType'] as String,
      dbProxySslEnabled: map['dbProxySslEnabled'] == null ? null : map['dbProxySslEnabled'] as String,
      effectiveSpecificTime: map['effectiveSpecificTime'] == null ? null : map['effectiveSpecificTime'] as String,
      effectiveTime: map['effectiveTime'] == null ? null : map['effectiveTime'] as String,
      instanceId: map['instanceId'] as String,
      instanceNetworkType: map['instanceNetworkType'] as String,
      readOnlyInstanceDistributionType: map['readOnlyInstanceDistributionType'] == null ? null : map['readOnlyInstanceDistributionType'] as String,
      readOnlyInstanceMaxDelayTime: map['readOnlyInstanceMaxDelayTime'] == null ? null : map['readOnlyInstanceMaxDelayTime'] as int,
      readOnlyInstanceWeights: map['readOnlyInstanceWeights'] == null ? null : pulumi.Input.decodeList<RdsDbProxyReadOnlyInstanceWeight>(map['readOnlyInstanceWeights'], (value) => RdsDbProxyReadOnlyInstanceWeight.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      switchTime: map['switchTime'] == null ? null : map['switchTime'] as String,
      upgradeTime: map['upgradeTime'] == null ? null : map['upgradeTime'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
    );
  }
}

