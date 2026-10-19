// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseResourcePoolSummary {
  /// Available compute capacity.
  final pulumi.Input<int?>? availableComputeCapacity;
  /// Available storage capacity in TB.
  final pulumi.Input<double?>? availableStorageCapacityInTbs;
  /// Whether the resource pool is disabled.
  final pulumi.Input<bool?>? isDisabled;
  /// Number of Autonomous Databases the pool can contain.
  final pulumi.Input<int?>? poolSize;
  /// Pool storage size in TB.
  final pulumi.Input<int?>? poolStorageSizeInTbs;
  /// Total compute capacity.
  final pulumi.Input<int?>? totalComputeCapacity;

  /// Creates a new [AutonomousDatabaseResourcePoolSummary].
  /// [availableComputeCapacity] Available compute capacity.
  /// [availableStorageCapacityInTbs] Available storage capacity in TB.
  /// [isDisabled] Whether the resource pool is disabled.
  /// [poolSize] Number of Autonomous Databases the pool can contain.
  /// [poolStorageSizeInTbs] Pool storage size in TB.
  /// [totalComputeCapacity] Total compute capacity.
  const AutonomousDatabaseResourcePoolSummary({
    this.availableComputeCapacity,
    this.availableStorageCapacityInTbs,
    this.isDisabled,
    this.poolSize,
    this.poolStorageSizeInTbs,
    this.totalComputeCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableComputeCapacity': ?availableComputeCapacity,
      'availableStorageCapacityInTbs': ?availableStorageCapacityInTbs,
      'isDisabled': ?isDisabled,
      'poolSize': ?poolSize,
      'poolStorageSizeInTbs': ?poolStorageSizeInTbs,
      'totalComputeCapacity': ?totalComputeCapacity,
    };
  }

  factory AutonomousDatabaseResourcePoolSummary.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseResourcePoolSummary(
      availableComputeCapacity: (() { final guardedValue = map['availableComputeCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      availableStorageCapacityInTbs: (() { final guardedValue = map['availableStorageCapacityInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      isDisabled: (() { final guardedValue = map['isDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      poolSize: (() { final guardedValue = map['poolSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      poolStorageSizeInTbs: (() { final guardedValue = map['poolStorageSizeInTbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      totalComputeCapacity: (() { final guardedValue = map['totalComputeCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
