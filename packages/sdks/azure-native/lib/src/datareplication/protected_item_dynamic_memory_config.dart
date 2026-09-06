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
  const ProtectedItemDynamicMemoryConfig({
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
      maximumMemoryInMegaBytes: pulumi.Input.fromValue((map['maximumMemoryInMegaBytes'] as num).toDouble()),
      minimumMemoryInMegaBytes: pulumi.Input.fromValue((map['minimumMemoryInMegaBytes'] as num).toDouble()),
      targetMemoryBufferPercentage: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['targetMemoryBufferPercentage'])),
    );
  }
}
