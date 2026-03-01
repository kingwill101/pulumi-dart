// ignore_for_file: unused_element, unnecessary_cast


/// Protected item dynamic memory config.
class ProtectedItemDynamicMemoryConfigResponse {
  /// Gets or sets maximum memory in MB.
  final double maximumMemoryInMegaBytes;
  /// Gets or sets minimum memory in MB.
  final double minimumMemoryInMegaBytes;
  /// Gets or sets target memory buffer in %.
  final int targetMemoryBufferPercentage;

  /// Creates a new [ProtectedItemDynamicMemoryConfigResponse].
  /// [maximumMemoryInMegaBytes] Gets or sets maximum memory in MB.
  /// [minimumMemoryInMegaBytes] Gets or sets minimum memory in MB.
  /// [targetMemoryBufferPercentage] Gets or sets target memory buffer in %.
  ProtectedItemDynamicMemoryConfigResponse({
    required this.maximumMemoryInMegaBytes,
    required this.minimumMemoryInMegaBytes,
    required this.targetMemoryBufferPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maximumMemoryInMegaBytes': maximumMemoryInMegaBytes,
      'minimumMemoryInMegaBytes': minimumMemoryInMegaBytes,
      'targetMemoryBufferPercentage': targetMemoryBufferPercentage,
    };
  }

  factory ProtectedItemDynamicMemoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return ProtectedItemDynamicMemoryConfigResponse(
      maximumMemoryInMegaBytes: map['maximumMemoryInMegaBytes'] as double,
      minimumMemoryInMegaBytes: map['minimumMemoryInMegaBytes'] as double,
      targetMemoryBufferPercentage: map['targetMemoryBufferPercentage'] as int,
    );
  }
}

