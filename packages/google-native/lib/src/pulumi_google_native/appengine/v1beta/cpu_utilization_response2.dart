// ignore_for_file: unused_element, unnecessary_cast

/// Target scaling by CPU usage.
class CpuUtilizationResponse2 {
  /// Period of time over which CPU utilization is calculated.
  final String aggregationWindowLength;

  /// Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.
  final double targetUtilization;

  CpuUtilizationResponse2({
    required this.aggregationWindowLength,
    required this.targetUtilization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aggregationWindowLength'] = aggregationWindowLength;
    map['targetUtilization'] = targetUtilization;
    return map;
  }

  factory CpuUtilizationResponse2.fromMap(Map<String, dynamic> map) {
    return CpuUtilizationResponse2(
      aggregationWindowLength: map['aggregationWindowLength'] as String,
      targetUtilization: map['targetUtilization'] as double,
    );
  }
}
