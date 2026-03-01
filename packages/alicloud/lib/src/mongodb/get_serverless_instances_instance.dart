// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_serverless_instances_instance_security_ip_group.dart';

class GetServerlessInstancesInstance {
  /// The read/write throughput consumed by the instance.
  final int capacityUnit;
  /// The db instance class.
  final String dbInstanceClass;
  /// The db instance description.
  final String dbInstanceDescription;
  /// The db instance id.
  final String dbInstanceId;
  /// The db instance release protection.
  final bool dbInstanceReleaseProtection;
  /// The db instance storage.
  final int dbInstanceStorage;
  /// The database engine of the instance.
  final String engine;
  /// The database version number. Valid values: `4.2`.
  final String engineVersion;
  /// The time when the subscription instance expires. The time is in the `yyyy-MM-ddTHH:mmZ` format. The time is displayed in UTC.
  final String expireTime;
  /// The ID of the Serverless Instance.
  final String id;
  /// Indicates the type of the instance. Valid values: `0`: physical machine. `1`: ECS. `2`: DOCKER. `18`: k8s new architecture instance.
  final String kindCode;
  /// The locked status of the instance.
  final String lockMode;
  /// The start time of the maintenance window. The time is in the `HH:mmZ` format. The time is displayed in UTC.
  final String maintainEndTime;
  /// The end time of the maintenance window. The time is in the `HH:mmZ` format. The time is displayed in UTC.
  final String maintainStartTime;
  /// Instance maximum connections.
  final int maxConnections;
  /// The maximum IOPS of the instance.
  final int maxIops;
  /// The network type of the instance.
  final String networkType;
  /// The Payment type of the instance.
  final String paymentType;
  /// The access protocol type of the instance. Valid values: `mongodb`, `dynamodb`.
  final String protocolType;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The security ip list.
  final List<GetServerlessInstancesInstanceSecurityIpGroup> securityIpGroups;
  /// The status of the instance.
  final String status;
  /// The storage engine used by the instance.
  final String storageEngine;
  /// The tag of the resource.
  final Map<String, String> tags;
  /// Intranet secret free access mode.
  final String vpcAuthMode;
  /// The ID of the VPC network.
  final String vpcId;
  /// The id of the vswitch.
  final String vswitchId;
  /// The ID of the zone.
  final String zoneId;

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
      'securityIpGroups': pulumi.Input.encodeList<GetServerlessInstancesInstanceSecurityIpGroup, Map<String, dynamic>>(securityIpGroups, (value) => value.toMap()),
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
      capacityUnit: map['capacityUnit'] as int,
      dbInstanceClass: map['dbInstanceClass'] as String,
      dbInstanceDescription: map['dbInstanceDescription'] as String,
      dbInstanceId: map['dbInstanceId'] as String,
      dbInstanceReleaseProtection: map['dbInstanceReleaseProtection'] as bool,
      dbInstanceStorage: map['dbInstanceStorage'] as int,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      kindCode: map['kindCode'] as String,
      lockMode: map['lockMode'] as String,
      maintainEndTime: map['maintainEndTime'] as String,
      maintainStartTime: map['maintainStartTime'] as String,
      maxConnections: map['maxConnections'] as int,
      maxIops: map['maxIops'] as int,
      networkType: map['networkType'] as String,
      paymentType: map['paymentType'] as String,
      protocolType: map['protocolType'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      securityIpGroups: pulumi.Input.decodeList<GetServerlessInstancesInstanceSecurityIpGroup>(map['securityIpGroups'], (value) => GetServerlessInstancesInstanceSecurityIpGroup.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      storageEngine: map['storageEngine'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcAuthMode: map['vpcAuthMode'] as String,
      vpcId: map['vpcId'] as String,
      vswitchId: map['vswitchId'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

