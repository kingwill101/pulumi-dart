// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEcsStorageCapacityUnitsUnit {
  /// When the AllocationType value is Shared, this parameter indicates the allocation status of Storage Capacity Unit. Valid values: `allocated`, `Ignored`.
  final pulumi.Input<String> allocationStatus;
  /// The capacity of the Storage Capacity Unit.
  final pulumi.Input<int> capacity;
  /// The time when the Storage Capacity Unit was created.
  final pulumi.Input<String> createTime;
  /// The description of the Storage Capacity Unit.
  final pulumi.Input<String> description;
  /// The time when the Storage Capacity Unit expires.
  final pulumi.Input<String> expiredTime;
  /// The ID of the Storage Capacity Unit.
  final pulumi.Input<String> id;
  /// The effective time of the Storage Capacity Unit.
  final pulumi.Input<String> startTime;
  /// The status of Storage Capacity Unit.
  final pulumi.Input<String> status;
  /// The ID of Storage Capacity Unit.
  final pulumi.Input<String> storageCapacityUnitId;
  /// The name of the Storage Capacity Unit.
  final pulumi.Input<String> storageCapacityUnitName;

  /// Creates a new [GetEcsStorageCapacityUnitsUnit].
  /// [allocationStatus] When the AllocationType value is Shared, this parameter indicates the allocation status of Storage Capacity Unit. Valid values: `allocated`, `Ignored`.
  /// [capacity] The capacity of the Storage Capacity Unit.
  /// [createTime] The time when the Storage Capacity Unit was created.
  /// [description] The description of the Storage Capacity Unit.
  /// [expiredTime] The time when the Storage Capacity Unit expires.
  /// [id] The ID of the Storage Capacity Unit.
  /// [startTime] The effective time of the Storage Capacity Unit.
  /// [status] The status of Storage Capacity Unit.
  /// [storageCapacityUnitId] The ID of Storage Capacity Unit.
  /// [storageCapacityUnitName] The name of the Storage Capacity Unit.
  GetEcsStorageCapacityUnitsUnit({
    required this.allocationStatus,
    required this.capacity,
    required this.createTime,
    required this.description,
    required this.expiredTime,
    required this.id,
    required this.startTime,
    required this.status,
    required this.storageCapacityUnitId,
    required this.storageCapacityUnitName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationStatus': allocationStatus,
      'capacity': capacity,
      'createTime': createTime,
      'description': description,
      'expiredTime': expiredTime,
      'id': id,
      'startTime': startTime,
      'status': status,
      'storageCapacityUnitId': storageCapacityUnitId,
      'storageCapacityUnitName': storageCapacityUnitName,
    };
  }

  factory GetEcsStorageCapacityUnitsUnit.fromMap(Map<String, dynamic> map) {
    return GetEcsStorageCapacityUnitsUnit(
      allocationStatus: (map['allocationStatus'] as String).input(),
      capacity: (map['capacity'] as int).input(),
      createTime: (map['createTime'] as String).input(),
      description: (map['description'] as String).input(),
      expiredTime: (map['expiredTime'] as String).input(),
      id: (map['id'] as String).input(),
      startTime: (map['startTime'] as String).input(),
      status: (map['status'] as String).input(),
      storageCapacityUnitId: (map['storageCapacityUnitId'] as String).input(),
      storageCapacityUnitName: (map['storageCapacityUnitName'] as String).input(),
    );
  }
}

