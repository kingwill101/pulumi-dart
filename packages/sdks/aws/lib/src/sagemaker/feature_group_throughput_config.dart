// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureGroupThroughputConfig {
  final pulumi.Input<int>? provisionedReadCapacityUnits;
  final pulumi.Input<int>? provisionedWriteCapacityUnits;
  final pulumi.Input<String>? throughputMode;

  /// Creates a new [FeatureGroupThroughputConfig].
  /// [provisionedReadCapacityUnits] Optional.
  /// [provisionedWriteCapacityUnits] Optional.
  /// [throughputMode] Optional.
  FeatureGroupThroughputConfig({
    this.provisionedReadCapacityUnits,
    this.provisionedWriteCapacityUnits,
    this.throughputMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisionedReadCapacityUnits': ?provisionedReadCapacityUnits,
      'provisionedWriteCapacityUnits': ?provisionedWriteCapacityUnits,
      'throughputMode': ?throughputMode,
    };
  }

  factory FeatureGroupThroughputConfig.fromMap(Map<String, dynamic> map) {
    return FeatureGroupThroughputConfig(
      provisionedReadCapacityUnits: map['provisionedReadCapacityUnits'] == null ? null : (map['provisionedReadCapacityUnits'] as int).input(),
      provisionedWriteCapacityUnits: map['provisionedWriteCapacityUnits'] == null ? null : (map['provisionedWriteCapacityUnits'] as int).input(),
      throughputMode: map['throughputMode'] == null ? null : (map['throughputMode'] as String).input(),
    );
  }
}

