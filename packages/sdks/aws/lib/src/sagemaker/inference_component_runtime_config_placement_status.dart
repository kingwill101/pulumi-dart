// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InferenceComponentRuntimeConfigPlacementStatus {
  /// Number of copies placed on this instance type.
  final pulumi.Input<int> currentCopyCount;
  /// Instance type on which the copies are placed.
  final pulumi.Input<String> instanceType;

  /// Creates a new [InferenceComponentRuntimeConfigPlacementStatus].
  /// [currentCopyCount] Number of copies placed on this instance type.
  /// [instanceType] Instance type on which the copies are placed.
  const InferenceComponentRuntimeConfigPlacementStatus({
    required this.currentCopyCount,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentCopyCount': currentCopyCount,
      'instanceType': instanceType,
    };
  }

  factory InferenceComponentRuntimeConfigPlacementStatus.fromMap(Map<String, dynamic> map) {
    return InferenceComponentRuntimeConfigPlacementStatus(
      currentCopyCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['currentCopyCount'])),
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
    );
  }
}
