// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAutonomousDatabaseResourcePoolSummary {
  /// Available compute capacity.
  final pulumi.Input<int> availableComputeCapacity;
  /// Available storage capacity in TB.
  final pulumi.Input<double> availableStorageCapacityInTbs;
  /// Whether the resource pool is disabled.
  final pulumi.Input<bool> isDisabled;
  /// Number of databases the pool can contain.
  final pulumi.Input<int> poolSize;
  /// Pool storage size in TB.
  final pulumi.Input<int> poolStorageSizeInTbs;
  /// Total compute capacity.
  final pulumi.Input<int> totalComputeCapacity;

  /// Creates a new [GetAutonomousDatabaseResourcePoolSummary].
  /// [availableComputeCapacity] Available compute capacity.
  /// [availableStorageCapacityInTbs] Available storage capacity in TB.
  /// [isDisabled] Whether the resource pool is disabled.
  /// [poolSize] Number of databases the pool can contain.
  /// [poolStorageSizeInTbs] Pool storage size in TB.
  /// [totalComputeCapacity] Total compute capacity.
  const GetAutonomousDatabaseResourcePoolSummary({
    required this.availableComputeCapacity,
    required this.availableStorageCapacityInTbs,
    required this.isDisabled,
    required this.poolSize,
    required this.poolStorageSizeInTbs,
    required this.totalComputeCapacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableComputeCapacity': availableComputeCapacity,
      'availableStorageCapacityInTbs': availableStorageCapacityInTbs,
      'isDisabled': isDisabled,
      'poolSize': poolSize,
      'poolStorageSizeInTbs': poolStorageSizeInTbs,
      'totalComputeCapacity': totalComputeCapacity,
    };
  }

  factory GetAutonomousDatabaseResourcePoolSummary.fromMap(Map<String, dynamic> map) {
    return GetAutonomousDatabaseResourcePoolSummary(
      availableComputeCapacity: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['availableComputeCapacity'])),
      availableStorageCapacityInTbs: pulumi.Input.fromValue((map['availableStorageCapacityInTbs'] as num).toDouble()),
      isDisabled: pulumi.Input.fromValue(map['isDisabled'] as bool),
      poolSize: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['poolSize'])),
      poolStorageSizeInTbs: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['poolStorageSizeInTbs'])),
      totalComputeCapacity: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['totalComputeCapacity'])),
    );
  }
}
