// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Protected item dynamic memory config.
class ProtectedItemDynamicMemoryConfig {
  /// Gets or sets maximum memory in MB.
  final pulumi.Input<double> maximumMemoryInMegaBytes;
  /// Gets or sets minimum memory in MB.
  final pulumi.Input<double> minimumMemoryInMegaBytes;
  /// Gets or sets target memory buffer in %.
  final pulumi.Input<int> targetMemoryBufferPercentage;

  /// Creates a new [ProtectedItemDynamicMemoryConfig].
  /// [maximumMemoryInMegaBytes] Gets or sets maximum memory in MB.
  /// [minimumMemoryInMegaBytes] Gets or sets minimum memory in MB.
  /// [targetMemoryBufferPercentage] Gets or sets target memory buffer in %.
  ProtectedItemDynamicMemoryConfig({
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

  factory ProtectedItemDynamicMemoryConfig.fromMap(Map<String, dynamic> map) {
    return ProtectedItemDynamicMemoryConfig(
      maximumMemoryInMegaBytes: (map['maximumMemoryInMegaBytes'] as double).input(),
      minimumMemoryInMegaBytes: (map['minimumMemoryInMegaBytes'] as double).input(),
      targetMemoryBufferPercentage: (map['targetMemoryBufferPercentage'] as int).input(),
    );
  }
}

