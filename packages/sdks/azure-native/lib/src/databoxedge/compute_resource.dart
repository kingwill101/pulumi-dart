// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Compute infrastructure Resource
class ComputeResource {
  /// Memory in GB
  final pulumi.Input<double> memoryInGB;
  /// Processor count
  final pulumi.Input<int> processorCount;

  /// Creates a new [ComputeResource].
  /// [memoryInGB] Memory in GB
  /// [processorCount] Processor count
  ComputeResource({
    required this.memoryInGB,
    required this.processorCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memoryInGB': memoryInGB,
      'processorCount': processorCount,
    };
  }

  factory ComputeResource.fromMap(Map<String, dynamic> map) {
    return ComputeResource(
      memoryInGB: (map['memoryInGB'] as double).input(),
      processorCount: (map['processorCount'] as int).input(),
    );
  }
}

