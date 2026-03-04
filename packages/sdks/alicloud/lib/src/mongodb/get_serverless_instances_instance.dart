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
  final pulumi.Input<List<GetServerlessInstancesInstanceSecurityIpGroup>>
  securityIpGroups;

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
      'securityIpGroups':
          pulumi.Input.mapInputValue<
            List<GetServerlessInstancesInstanceSecurityIpGroup>,
            List<Map<String, dynamic>>
          >(
            securityIpGroups,
            (value) =>
                pulumi.Input.encodeList<
                  GetServerlessInstancesInstanceSecurityIpGroup,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      capacityUnit: pulumi.Input.fromValue(map['capacityUnit'] as int),
      dbInstanceClass: pulumi.Input.fromValue(map['dbInstanceClass'] as String),
      dbInstanceDescription: pulumi.Input.fromValue(
        map['dbInstanceDescription'] as String,
      ),
      dbInstanceId: pulumi.Input.fromValue(map['dbInstanceId'] as String),
      dbInstanceReleaseProtection: pulumi.Input.fromValue(
        map['dbInstanceReleaseProtection'] as bool,
      ),
      dbInstanceStorage: pulumi.Input.fromValue(
        map['dbInstanceStorage'] as int,
      ),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      engineVersion: pulumi.Input.fromValue(map['engineVersion'] as String),
      expireTime: pulumi.Input.fromValue(map['expireTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      kindCode: pulumi.Input.fromValue(map['kindCode'] as String),
      lockMode: pulumi.Input.fromValue(map['lockMode'] as String),
      maintainEndTime: pulumi.Input.fromValue(map['maintainEndTime'] as String),
      maintainStartTime: pulumi.Input.fromValue(
        map['maintainStartTime'] as String,
      ),
      maxConnections: pulumi.Input.fromValue(map['maxConnections'] as int),
      maxIops: pulumi.Input.fromValue(map['maxIops'] as int),
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      protocolType: pulumi.Input.fromValue(map['protocolType'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      securityIpGroups: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetServerlessInstancesInstanceSecurityIpGroup>(
          map['securityIpGroups']!,
          (value) => GetServerlessInstancesInstanceSecurityIpGroup.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
      storageEngine: pulumi.Input.fromValue(map['storageEngine'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      vpcAuthMode: pulumi.Input.fromValue(map['vpcAuthMode'] as String),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
      vswitchId: pulumi.Input.fromValue(map['vswitchId'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
