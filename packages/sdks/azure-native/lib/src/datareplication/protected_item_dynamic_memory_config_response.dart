// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Protected item dynamic memory config.
class ProtectedItemDynamicMemoryConfigResponse {
  /// Gets or sets maximum memory in MB.
  final pulumi.Input<double> maximumMemoryInMegaBytes;
  /// Gets or sets minimum memory in MB.
  final pulumi.Input<double> minimumMemoryInMegaBytes;
  /// Gets or sets target memory buffer in %.
  final pulumi.Input<int> targetMemoryBufferPercentage;

  /// Creates a new [ProtectedItemDynamicMemoryConfigResponse].
  /// [maximumMemoryInMegaBytes] Gets or sets maximum memory in MB.
  /// [minimumMemoryInMegaBytes] Gets or sets minimum memory in MB.
  /// [targetMemoryBufferPercentage] Gets or sets target memory buffer in %.
  const ProtectedItemDynamicMemoryConfigResponse({
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
      maximumMemoryInMegaBytes: pulumi.Input.fromValue(map['maximumMemoryInMegaBytes'] as double),
      minimumMemoryInMegaBytes: pulumi.Input.fromValue(map['minimumMemoryInMegaBytes'] as double),
      targetMemoryBufferPercentage: pulumi.Input.fromValue(map['targetMemoryBufferPercentage'] as int),
    );
  }
}

