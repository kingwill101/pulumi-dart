// ignore_for_file: unused_element, unnecessary_cast


class GetEcsStorageCapacityUnitsUnit {
  /// When the AllocationType value is Shared, this parameter indicates the allocation status of Storage Capacity Unit. Valid values: `allocated`, `Ignored`.
  final String allocationStatus;
  /// The capacity of the Storage Capacity Unit.
  final int capacity;
  /// The time when the Storage Capacity Unit was created.
  final String createTime;
  /// The description of the Storage Capacity Unit.
  final String description;
  /// The time when the Storage Capacity Unit expires.
  final String expiredTime;
  /// The ID of the Storage Capacity Unit.
  final String id;
  /// The effective time of the Storage Capacity Unit.
  final String startTime;
  /// The status of Storage Capacity Unit.
  final String status;
  /// The ID of Storage Capacity Unit.
  final String storageCapacityUnitId;
  /// The name of the Storage Capacity Unit.
  final String storageCapacityUnitName;

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
      allocationStatus: map['allocationStatus'] as String,
      capacity: map['capacity'] as int,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      expiredTime: map['expiredTime'] as String,
      id: map['id'] as String,
      startTime: map['startTime'] as String,
      status: map['status'] as String,
      storageCapacityUnitId: map['storageCapacityUnitId'] as String,
      storageCapacityUnitName: map['storageCapacityUnitName'] as String,
    );
  }
}

