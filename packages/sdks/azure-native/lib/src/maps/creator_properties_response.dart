// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Creator resource properties
class CreatorPropertiesResponse {
  /// The consumed storage unit size in bytes for the creator resource.
  final pulumi.Input<int?>? consumedStorageUnitSizeInBytes;
  /// The state of the resource provisioning, terminal states: Succeeded, Failed, Canceled
  final pulumi.Input<String> provisioningState;
  /// The storage units to be allocated. Integer values from 1 to 100, inclusive.
  final pulumi.Input<int> storageUnits;
  /// The total allocated storage unit size in bytes for the creator resource.
  final pulumi.Input<int?>? totalStorageUnitSizeInBytes;

  /// Creates a new [CreatorPropertiesResponse].
  /// [consumedStorageUnitSizeInBytes] The consumed storage unit size in bytes for the creator resource.
  /// [provisioningState] The state of the resource provisioning, terminal states: Succeeded, Failed, Canceled
  /// [storageUnits] The storage units to be allocated. Integer values from 1 to 100, inclusive.
  /// [totalStorageUnitSizeInBytes] The total allocated storage unit size in bytes for the creator resource.
  const CreatorPropertiesResponse({
    this.consumedStorageUnitSizeInBytes,
    required this.provisioningState,
    required this.storageUnits,
    this.totalStorageUnitSizeInBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumedStorageUnitSizeInBytes': ?consumedStorageUnitSizeInBytes,
      'provisioningState': provisioningState,
      'storageUnits': storageUnits,
      'totalStorageUnitSizeInBytes': ?totalStorageUnitSizeInBytes,
    };
  }

  factory CreatorPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CreatorPropertiesResponse(
      consumedStorageUnitSizeInBytes: (() { final guardedValue = map['consumedStorageUnitSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      storageUnits: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['storageUnits'])),
      totalStorageUnitSizeInBytes: (() { final guardedValue = map['totalStorageUnitSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
