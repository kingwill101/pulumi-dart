// ignore_for_file: unused_element, unnecessary_cast

class FeatureGroupThroughputConfig {
  final int? provisionedReadCapacityUnits;
  final int? provisionedWriteCapacityUnits;
  final String? throughputMode;

  FeatureGroupThroughputConfig({
    this.provisionedReadCapacityUnits,
    this.provisionedWriteCapacityUnits,
    this.throughputMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final provisionedReadCapacityUnitsValue = provisionedReadCapacityUnits;
    if (provisionedReadCapacityUnitsValue != null) {
      map['provisionedReadCapacityUnits'] = provisionedReadCapacityUnitsValue;
    }
    final provisionedWriteCapacityUnitsValue = provisionedWriteCapacityUnits;
    if (provisionedWriteCapacityUnitsValue != null) {
      map['provisionedWriteCapacityUnits'] = provisionedWriteCapacityUnitsValue;
    }
    final throughputModeValue = throughputMode;
    if (throughputModeValue != null) {
      map['throughputMode'] = throughputModeValue;
    }
    return map;
  }

  factory FeatureGroupThroughputConfig.fromMap(Map<String, dynamic> map) {
    return FeatureGroupThroughputConfig(
      provisionedReadCapacityUnits: map['provisionedReadCapacityUnits'] == null
          ? null
          : map['provisionedReadCapacityUnits'] as int,
      provisionedWriteCapacityUnits:
          map['provisionedWriteCapacityUnits'] == null
              ? null
              : map['provisionedWriteCapacityUnits'] as int,
      throughputMode: map['throughputMode'] == null
          ? null
          : map['throughputMode'] as String,
    );
  }
}
