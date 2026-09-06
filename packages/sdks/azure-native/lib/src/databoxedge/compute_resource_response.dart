// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Compute infrastructure Resource
class ComputeResourceResponse {
  /// Memory in GB
  final pulumi.Input<double> memoryInGB;
  /// Processor count
  final pulumi.Input<int> processorCount;

  /// Creates a new [ComputeResourceResponse].
  /// [memoryInGB] Memory in GB
  /// [processorCount] Processor count
  const ComputeResourceResponse({
    required this.memoryInGB,
    required this.processorCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memoryInGB': memoryInGB,
      'processorCount': processorCount,
    };
  }

  factory ComputeResourceResponse.fromMap(Map<String, dynamic> map) {
    return ComputeResourceResponse(
      memoryInGB: pulumi.Input.fromValue((map['memoryInGB'] as num).toDouble()),
      processorCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['processorCount'])),
    );
  }
}
