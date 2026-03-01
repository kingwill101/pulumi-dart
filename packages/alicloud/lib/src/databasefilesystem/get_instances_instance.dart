// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_ecs_list.dart';

class GetInstancesInstance {
  /// the number of nodes of the Database file system.
  final int attachNodeNumber;
  /// The type of the Database file system. Valid values: `standard`.
  final String category;
  /// The create time of the Database file system.
  final String createTime;
  /// The cluster ID of the Database file system.
  final String dbfsClusterId;
  /// The collection of ECS instances mounted to the Database file system.
  final List<GetInstancesInstanceEcsList> ecsLists;
  /// Whether to create the Database file system in RAID way. Valid values : `true` anf `false`.
  final bool enableRaid;
  /// Whether to encrypt the Database file system. Valid values: `true` and `false`.
  final bool encryption;
  /// The ID of the Instance.
  final String id;
  /// The ID of the Database File System
  final String instanceId;
  /// The name of the Database file system.
  final String instanceName;
  /// The KMS key ID of the Database file system used. This parameter is valid When `encryption` parameter is set to `true`.
  final String kmsKeyId;
  /// Thr payment type of the Database file system. Valid value: `PayAsYouGo`.
  final String paymentType;
  /// The performance level of the Database file system. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  final String performanceLevel;
  /// The number of strip . When `enable_raid` parameter is set to `true` will transfer. This parameter is valid When `enable_raid` parameter is set to `true`.
  final String raidStripeUnitNumber;
  /// The size Of the Database file system. Unit: GiB.
  final int size;
  /// The status of the Database file system.
  final String status;
  /// The Zone ID of the Database file system.
  final String zoneId;

  /// Creates a new [GetInstancesInstance].
  /// [attachNodeNumber] the number of nodes of the Database file system.
  /// [category] The type of the Database file system. Valid values: `standard`.
  /// [createTime] The create time of the Database file system.
  /// [dbfsClusterId] The cluster ID of the Database file system.
  /// [ecsLists] The collection of ECS instances mounted to the Database file system.
  /// [enableRaid] Whether to create the Database file system in RAID way. Valid values : `true` anf `false`.
  /// [encryption] Whether to encrypt the Database file system. Valid values: `true` and `false`.
  /// [id] The ID of the Instance.
  /// [instanceId] The ID of the Database File System
  /// [instanceName] The name of the Database file system.
  /// [kmsKeyId] The KMS key ID of the Database file system used. This parameter is valid When `encryption` parameter is set to `true`.
  /// [paymentType] Thr payment type of the Database file system. Valid value: `PayAsYouGo`.
  /// [performanceLevel] The performance level of the Database file system. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  /// [raidStripeUnitNumber] The number of strip . When `enable_raid` parameter is set to `true` will transfer. This parameter is valid When `enable_raid` parameter is set to `true`.
  /// [size] The size Of the Database file system. Unit: GiB.
  /// [status] The status of the Database file system.
  /// [zoneId] The Zone ID of the Database file system.
  GetInstancesInstance({
    required this.attachNodeNumber,
    required this.category,
    required this.createTime,
    required this.dbfsClusterId,
    required this.ecsLists,
    required this.enableRaid,
    required this.encryption,
    required this.id,
    required this.instanceId,
    required this.instanceName,
    required this.kmsKeyId,
    required this.paymentType,
    required this.performanceLevel,
    required this.raidStripeUnitNumber,
    required this.size,
    required this.status,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachNodeNumber': attachNodeNumber,
      'category': category,
      'createTime': createTime,
      'dbfsClusterId': dbfsClusterId,
      'ecsLists': pulumi.Input.encodeList<GetInstancesInstanceEcsList, Map<String, dynamic>>(ecsLists, (value) => value.toMap()),
      'enableRaid': enableRaid,
      'encryption': encryption,
      'id': id,
      'instanceId': instanceId,
      'instanceName': instanceName,
      'kmsKeyId': kmsKeyId,
      'paymentType': paymentType,
      'performanceLevel': performanceLevel,
      'raidStripeUnitNumber': raidStripeUnitNumber,
      'size': size,
      'status': status,
      'zoneId': zoneId,
    };
  }

  factory GetInstancesInstance.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstance(
      attachNodeNumber: map['attachNodeNumber'] as int,
      category: map['category'] as String,
      createTime: map['createTime'] as String,
      dbfsClusterId: map['dbfsClusterId'] as String,
      ecsLists: pulumi.Input.decodeList<GetInstancesInstanceEcsList>(map['ecsLists'], (value) => GetInstancesInstanceEcsList.fromMap((value as Map).cast<String, dynamic>())),
      enableRaid: map['enableRaid'] as bool,
      encryption: map['encryption'] as bool,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      instanceName: map['instanceName'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      paymentType: map['paymentType'] as String,
      performanceLevel: map['performanceLevel'] as String,
      raidStripeUnitNumber: map['raidStripeUnitNumber'] as String,
      size: map['size'] as int,
      status: map['status'] as String,
      zoneId: map['zoneId'] as String,
    );
  }
}

