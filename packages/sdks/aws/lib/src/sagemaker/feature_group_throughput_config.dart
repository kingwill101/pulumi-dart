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
      provisionedReadCapacityUnits: (() {
        final guardedValue = map['provisionedReadCapacityUnits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      provisionedWriteCapacityUnits: (() {
        final guardedValue = map['provisionedWriteCapacityUnits'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      throughputMode: (() {
        final guardedValue = map['throughputMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
