// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering StorageCapacityUnit resources.
class StorageCapacityUnitState {
  /// The capacity of the Storage Capacity Unit. Unit: GiB. Valid values: `20`, `40`, `100`, `200`, `500`, `1024`, `2048`, `5120`, `10240`, `20480`, and `51200`.
  final pulumi.Input<int>? capacity;
  /// The description of the Storage Capacity Unit. The description must be 2 to 256 characters in length and cannot start with `http://` or `https://`.
  final pulumi.Input<String>? description;
  /// The validity period of the Storage Capacity Unit. Default value: `1`.
  /// * When PeriodUnit is set to Month, Valid values: `1`, `2`, `3`, `6`.
  /// * When PeriodUnit is set to Year, Valid values: `1`, `3`, `5`.
  final pulumi.Input<int>? period;
  /// The unit of the validity period of the Storage Capacity Unit. Default value: `Month`. Valid values: `Month`, `Year`.
  final pulumi.Input<String>? periodUnit;
  /// The time when the Storage Capacity Unit takes effect. It cannot be earlier than or more than six months later than the time when the Storage Capacity Unit is created. Specify the time in the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time must be in UTC. **NOTE:** This parameter is empty by default. The Storage Capacity Unit immediately takes effect after it is created.
  final pulumi.Input<String>? startTime;
  /// The status of Storage Capacity Unit.
  final pulumi.Input<String>? status;
  /// The name of the Storage Capacity Unit.
  final pulumi.Input<String>? storageCapacityUnitName;

  /// Creates a new [StorageCapacityUnitState].
  /// [capacity] The capacity of the Storage Capacity Unit. Unit: GiB. Valid values: `20`, `40`, `100`, `200`, `500`, `1024`, `2048`, `5120`, `10240`, `20480`, and `51200`.
  /// [description] The description of the Storage Capacity Unit. The description must be 2 to 256 characters in length and cannot start with `http://` or `https://`.
  /// [period] The validity period of the Storage Capacity Unit. Default value: `1`.
  /// [periodUnit] The unit of the validity period of the Storage Capacity Unit. Default value: `Month`. Valid values: `Month`, `Year`.
  /// [startTime] The time when the Storage Capacity Unit takes effect. It cannot be earlier than or more than six months later than the time when the Storage Capacity Unit is created. Specify the time in the ISO 8601 standard in the `yyyy-MM-ddTHH:mm:ssZ` format. The time must be in UTC. **NOTE:** This parameter is empty by default. The Storage Capacity Unit immediately takes effect after it is created.
  /// [status] The status of Storage Capacity Unit.
  /// [storageCapacityUnitName] The name of the Storage Capacity Unit.
  StorageCapacityUnitState({
    this.capacity,
    this.description,
    this.period,
    this.periodUnit,
    this.startTime,
    this.status,
    this.storageCapacityUnitName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'description': ?description,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'startTime': ?startTime,
      'status': ?status,
      'storageCapacityUnitName': ?storageCapacityUnitName,
    };
  }

  factory StorageCapacityUnitState.fromMap(Map<String, dynamic> map) {
    return StorageCapacityUnitState(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      periodUnit: (() { final guardedValue = map['periodUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageCapacityUnitName: (() { final guardedValue = map['storageCapacityUnitName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

