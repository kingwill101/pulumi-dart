// ignore_for_file: unused_element, unnecessary_cast


/// Compute infrastructure Resource
class ComputeResourceResponse {
  /// Memory in GB
  final double memoryInGB;
  /// Processor count
  final int processorCount;

  /// Creates a new [ComputeResourceResponse].
  /// [memoryInGB] Memory in GB
  /// [processorCount] Processor count
  ComputeResourceResponse({
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
      memoryInGB: map['memoryInGB'] as double,
      processorCount: map['processorCount'] as int,
    );
  }
}

