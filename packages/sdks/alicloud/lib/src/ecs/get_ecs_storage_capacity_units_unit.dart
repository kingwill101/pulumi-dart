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
      allocationStatus: pulumi.Input.fromValue(
        map['allocationStatus'] as String,
      ),
      capacity: pulumi.Input.fromValue(map['capacity'] as int),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      expiredTime: pulumi.Input.fromValue(map['expiredTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      storageCapacityUnitId: pulumi.Input.fromValue(
        map['storageCapacityUnitId'] as String,
      ),
      storageCapacityUnitName: pulumi.Input.fromValue(
        map['storageCapacityUnitName'] as String,
      ),
    );
  }
}
