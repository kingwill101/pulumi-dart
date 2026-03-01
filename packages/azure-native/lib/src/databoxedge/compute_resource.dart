// ignore_for_file: unused_element, unnecessary_cast


/// Compute infrastructure Resource
class ComputeResource {
  /// Memory in GB
  final double memoryInGB;
  /// Processor count
  final int processorCount;

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
      memoryInGB: map['memoryInGB'] as double,
      processorCount: map['processorCount'] as int,
    );
  }
}

