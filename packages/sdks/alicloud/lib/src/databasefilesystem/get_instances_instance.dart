// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instances_instance_ecs_list.dart';

class GetInstancesInstance {
  /// the number of nodes of the Database file system.
  final pulumi.Input<int> attachNodeNumber;

  /// The type of the Database file system. Valid values: `standard`.
  final pulumi.Input<String> category;

  /// The create time of the Database file system.
  final pulumi.Input<String> createTime;

  /// The cluster ID of the Database file system.
  final pulumi.Input<String> dbfsClusterId;

  /// The collection of ECS instances mounted to the Database file system.
  final pulumi.Input<List<GetInstancesInstanceEcsList>> ecsLists;

  /// Whether to create the Database file system in RAID way. Valid values : `true` anf `false`.
  final pulumi.Input<bool> enableRaid;

  /// Whether to encrypt the Database file system. Valid values: `true` and `false`.
  final pulumi.Input<bool> encryption;

  /// The ID of the Instance.
  final pulumi.Input<String> id;

  /// The ID of the Database File System
  final pulumi.Input<String> instanceId;

  /// The name of the Database file system.
  final pulumi.Input<String> instanceName;

  /// The KMS key ID of the Database file system used. This parameter is valid When `encryption` parameter is set to `true`.
  final pulumi.Input<String> kmsKeyId;

  /// Thr payment type of the Database file system. Valid value: `PayAsYouGo`.
  final pulumi.Input<String> paymentType;

  /// The performance level of the Database file system. Valid values: `PL0`, `PL1`, `PL2`, `PL3`.
  final pulumi.Input<String> performanceLevel;

  /// The number of strip . When `enable_raid` parameter is set to `true` will transfer. This parameter is valid When `enable_raid` parameter is set to `true`.
  final pulumi.Input<String> raidStripeUnitNumber;

  /// The size Of the Database file system. Unit: GiB.
  final pulumi.Input<int> size;

  /// The status of the Database file system.
  final pulumi.Input<String> status;

  /// The Zone ID of the Database file system.
  final pulumi.Input<String> zoneId;

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
      'ecsLists':
          pulumi.Input.mapInputValue<
            List<GetInstancesInstanceEcsList>,
            List<Map<String, dynamic>>
          >(
            ecsLists,
            (value) =>
                pulumi.Input.encodeList<
                  GetInstancesInstanceEcsList,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
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
      attachNodeNumber: pulumi.Input.fromValue(map['attachNodeNumber'] as int),
      category: pulumi.Input.fromValue(map['category'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      dbfsClusterId: pulumi.Input.fromValue(map['dbfsClusterId'] as String),
      ecsLists: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetInstancesInstanceEcsList>(
          map['ecsLists']!,
          (value) => GetInstancesInstanceEcsList.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      enableRaid: pulumi.Input.fromValue(map['enableRaid'] as bool),
      encryption: pulumi.Input.fromValue(map['encryption'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      kmsKeyId: pulumi.Input.fromValue(map['kmsKeyId'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      performanceLevel: pulumi.Input.fromValue(
        map['performanceLevel'] as String,
      ),
      raidStripeUnitNumber: pulumi.Input.fromValue(
        map['raidStripeUnitNumber'] as String,
      ),
      size: pulumi.Input.fromValue(map['size'] as int),
      status: pulumi.Input.fromValue(map['status'] as String),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}
