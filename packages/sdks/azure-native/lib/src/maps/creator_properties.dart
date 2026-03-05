// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Creator resource properties
class CreatorProperties {
  /// The consumed storage unit size in bytes for the creator resource.
  final pulumi.Input<int>? consumedStorageUnitSizeInBytes;
  /// The storage units to be allocated. Integer values from 1 to 100, inclusive.
  final pulumi.Input<int> storageUnits;
  /// The total allocated storage unit size in bytes for the creator resource.
  final pulumi.Input<int>? totalStorageUnitSizeInBytes;

  /// Creates a new [CreatorProperties].
  /// [consumedStorageUnitSizeInBytes] The consumed storage unit size in bytes for the creator resource.
  /// [storageUnits] The storage units to be allocated. Integer values from 1 to 100, inclusive.
  /// [totalStorageUnitSizeInBytes] The total allocated storage unit size in bytes for the creator resource.
  CreatorProperties({
    this.consumedStorageUnitSizeInBytes,
    required this.storageUnits,
    this.totalStorageUnitSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumedStorageUnitSizeInBytes': ?consumedStorageUnitSizeInBytes,
      'storageUnits': storageUnits,
      'totalStorageUnitSizeInBytes': ?totalStorageUnitSizeInBytes,
    };
  }

  factory CreatorProperties.fromMap(Map<String, dynamic> map) {
    return CreatorProperties(
      consumedStorageUnitSizeInBytes: (() { final guardedValue = map['consumedStorageUnitSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageUnits: pulumi.Input.fromValue(map['storageUnits'] as int),
      totalStorageUnitSizeInBytes: (() { final guardedValue = map['totalStorageUnitSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

