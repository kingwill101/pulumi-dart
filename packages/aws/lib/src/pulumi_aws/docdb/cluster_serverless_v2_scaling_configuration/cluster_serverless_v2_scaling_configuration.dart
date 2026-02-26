// ignore_for_file: unused_element, unnecessary_cast

class ClusterServerlessV2ScalingConfiguration {
  /// Maximum number of Amazon DocumentDB capacity units (DCUs) for an instance in an Amazon DocumentDB Serverless cluster. Valid values are multiples of 0.5 between 1 and 256.
  final double maxCapacity;

  /// Minimum number of Amazon DocumentDB capacity units (DCUs) for an instance in an Amazon DocumentDB Serverless cluster. Valid values are multiples of 0.5 between 0.5 and 256.
  final double minCapacity;

  ClusterServerlessV2ScalingConfiguration({
    required this.maxCapacity,
    required this.minCapacity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxCapacity'] = maxCapacity;
    map['minCapacity'] = minCapacity;
    return map;
  }

  factory ClusterServerlessV2ScalingConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ClusterServerlessV2ScalingConfiguration(
      maxCapacity: map['maxCapacity'] as double,
      minCapacity: map['minCapacity'] as double,
    );
  }
}
