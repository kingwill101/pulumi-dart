// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_instances_instance_security_ip_group.dart';

class GetServerlessInstancesInstance {
  /// The read/write throughput consumed by the instance.
  final pulumi.Input<int> capacityUnit;
  /// The db instance class.
  final pulumi.Input<String> dbInstanceClass;
  /// The db instance description.
  final pulumi.Input<String> dbInstanceDescription;
  /// The db instance id.
  final pulumi.Input<String> dbInstanceId;
  /// The db instance release protection.
  final pulumi.Input<bool> dbInstanceReleaseProtection;
  /// The db instance storage.
  final pulumi.Input<int> dbInstanceStorage;
  /// The database engine of the instance.
  final pulumi.Input<String> engine;
  /// The database version number. Valid values: `4.2`.
  final pulumi.Input<String> engineVersion;
  /// The time when the subscription instance expires. The time is in the `yyyy-MM-ddTHH:mmZ` format. The time is displayed in UTC.
  final pulumi.Input<String> expireTime;
  /// The ID of the Serverless Instance.
  final pulumi.Input<String> id;
  /// Indicates the type of the instance. Valid values: `0`: physical machine. `1`: ECS. `2`: DOCKER. `18`: k8s new architecture instance.
  final pulumi.Input<String> kindCode;
  /// The locked status of the instance.
  final pulumi.Input<String> lockMode;
  /// The start time of the maintenance window. The time is in the `HH:mmZ` format. The time is displayed in UTC.
  final pulumi.Input<String> maintainEndTime;
  /// The end time of the maintenance window. The time is in the `HH:mmZ` format. The time is displayed in UTC.
  final pulumi.Input<String> maintainStartTime;
  /// Instance maximum connections.
  final pulumi.Input<int> maxConnections;
  /// The maximum IOPS of the instance.
  final pulumi.Input<int> maxIops;
  /// The network type of the instance.
  final pulumi.Input<String> networkType;
  /// The Payment type of the instance.
  final pulumi.Input<String> paymentType;
  /// The access protocol type of the instance. Valid values: `mongodb`, `dynamodb`.
  final pulumi.Input<String> protocolType;
  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;
  /// The security ip list.
  final pulumi.Input<List<GetServerlessInstancesInstanceSecurityIpGroup>> securityIpGroups;
  /// The status of the instance.
  final pulumi.Input<String> status;
  /// The storage engine used by the instance.
  final pulumi.Input<String> storageEngine;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// Intranet secret free access mode.
  final pulumi.Input<String> vpcAuthMode;
  /// The ID of the VPC network.
  final pulumi.Input<String> vpcId;
  /// The id of the vswitch.
  final pulumi.Input<String> vswitchId;
  /// The ID of the zone.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetServerlessInstancesInstance].
  /// [capacityUnit] The read/write throughput consumed by the instance.
  /// [dbInstanceClass] The db instance class.
  /// [dbInstanceDescription] The db instance description.
  /// [dbInstanceId] The db instance id.
  /// [dbInstanceReleaseProtection] The db instance release protection.
  /// [dbInstanceStorage] The db instance storage.
  /// [engine] The database engine of the instance.
  /// [engineVersion] The database version number. Valid values: `4.2`.
  /// [expireTime] The time when the subscription instance expires. The time is in the `yyyy-MM-ddTHH:mmZ` format. The time is displayed in UTC.
  /// [id] The ID of the Serverless Instance.
  /// [kindCode] Indicates the type of the instance. Valid values: `0`: physical machine. `1`: ECS. `2`: DOCKER. `18`: k8s new architecture instance.
  /// [lockMode] The locked status of the instance.
  /// [maintainEndTime] The start time of the maintenance window. The time is in the `HH:mmZ` format. The time is displayed in UTC.
  /// [maintainStartTime] The end time of the maintenance window. The time is in the `HH:mmZ` format. The time is displayed in UTC.
  /// [maxConnections] Instance maximum connections.
  /// [maxIops] The maximum IOPS of the instance.
  /// [networkType] The network type of the instance.
  /// [paymentType] The Payment type of the instance.
  /// [protocolType] The access protocol type of the instance. Valid values: `mongodb`, `dynamodb`.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityIpGroups] The security ip list.
  /// [status] The status of the instance.
  /// [storageEngine] The storage engine used by the instance.
  /// [tags] The tag of the resource.
  /// [vpcAuthMode] Intranet secret free access mode.
  /// [vpcId] The ID of the VPC network.
  /// [vswitchId] The id of the vswitch.
  /// [zoneId] The ID of the zone.
  GetServerlessInstancesInstance({
    required this.capacityUnit,
    required this.dbInstanceClass,
    required this.dbInstanceDescription,
    required this.dbInstanceId,
    required this.dbInstanceReleaseProtection,
    required this.dbInstanceStorage,
    required this.engine,
    required this.engineVersion,
    required this.expireTime,
    required this.id,
    required this.kindCode,
    required this.lockMode,
    required this.maintainEndTime,
    required this.maintainStartTime,
    required this.maxConnections,
    required this.maxIops,
    required this.networkType,
    required this.paymentType,
    required this.protocolType,
    required this.resourceGroupId,
    required this.securityIpGroups,
    required this.status,
    required this.storageEngine,
    required this.tags,
    required this.vpcAuthMode,
    required this.vpcId,
    required this.vswitchId,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityUnit': capacityUnit,
      'dbInstanceClass': dbInstanceClass,
      'dbInstanceDescription': dbInstanceDescription,
      'dbInstanceId': dbInstanceId,
      'dbInstanceReleaseProtection': dbInstanceReleaseProtection,
      'dbInstanceStorage': dbInstanceStorage,
      'engine': engine,
      'engineVersion': engineVersion,
      'expireTime': expireTime,
      'id': id,
      'kindCode': kindCode,
      'lockMode': lockMode,
      'maintainEndTime': maintainEndTime,
      'maintainStartTime': maintainStartTime,
      'maxConnections': maxConnections,
      'maxIops': maxIops,
      'networkType': networkType,
      'paymentType': paymentType,
      'protocolType': protocolType,
      'resourceGroupId': resourceGroupId,
      'securityIpGroups': pulumi.Input.mapInputValue<List<GetServerlessInstancesInstanceSecurityIpGroup>, List<Map<String, dynamic>>>(securityIpGroups, (value) => pulumi.Input.encodeList<GetServerlessInstancesInstanceSecurityIpGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': status,
      'storageEngine': storageEngine,
      'tags': tags,
      'vpcAuthMode': vpcAuthMode,
      'vpcId': vpcId,
      'vswitchId': vswitchId,
      'zoneId': zoneId,
    };
  }

  factory GetServerlessInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetServerlessInstancesInstance(
      capacityUnit: (map['capacityUnit'] as int).input(),
      dbInstanceClass: (map['dbInstanceClass'] as String).input(),
      dbInstanceDescription: (map['dbInstanceDescription'] as String).input(),
      dbInstanceId: (map['dbInstanceId'] as String).input(),
      dbInstanceReleaseProtection: (map['dbInstanceReleaseProtection'] as bool).input(),
      dbInstanceStorage: (map['dbInstanceStorage'] as int).input(),
      engine: (map['engine'] as String).input(),
      engineVersion: (map['engineVersion'] as String).input(),
      expireTime: (map['expireTime'] as String).input(),
      id: (map['id'] as String).input(),
      kindCode: (map['kindCode'] as String).input(),
      lockMode: (map['lockMode'] as String).input(),
      maintainEndTime: (map['maintainEndTime'] as String).input(),
      maintainStartTime: (map['maintainStartTime'] as String).input(),
      maxConnections: (map['maxConnections'] as int).input(),
      maxIops: (map['maxIops'] as int).input(),
      networkType: (map['networkType'] as String).input(),
      paymentType: (map['paymentType'] as String).input(),
      protocolType: (map['protocolType'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      securityIpGroups: (pulumi.Input.decodeList<GetServerlessInstancesInstanceSecurityIpGroup>(map['securityIpGroups'], (value) => GetServerlessInstancesInstanceSecurityIpGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: (map['status'] as String).input(),
      storageEngine: (map['storageEngine'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      vpcAuthMode: (map['vpcAuthMode'] as String).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchId: (map['vswitchId'] as String).input(),
      zoneId: (map['zoneId'] as String).input(),
    );
  }
}

