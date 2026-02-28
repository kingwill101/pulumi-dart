// ignore_for_file: unused_element, unnecessary_cast

/// Target scaling by CPU usage.
class CpuUtilization {
  /// Period of time over which CPU utilization is calculated.
  final String? aggregationWindowLength;

  /// Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.
  final double? targetUtilization;

  /// Creates a new [CpuUtilization].
  /// [aggregationWindowLength] Period of time over which CPU utilization is calculated.
  /// [targetUtilization] Target CPU utilization ratio to maintain when scaling. Must be between 0 and 1.
  CpuUtilization({
    this.aggregationWindowLength,
    this.targetUtilization,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationWindowLengthValue = aggregationWindowLength;
    if (aggregationWindowLengthValue != null) {
      map['aggregationWindowLength'] = aggregationWindowLengthValue;
    }
    final targetUtilizationValue = targetUtilization;
    if (targetUtilizationValue != null) {
      map['targetUtilization'] = targetUtilizationValue;
    }
    return map;
  }

  factory CpuUtilization.fromMap(Map<String, dynamic> map) {
    return CpuUtilization(
      aggregationWindowLength: map['aggregationWindowLength'] == null
          ? null
          : map['aggregationWindowLength'] as String,
      targetUtilization: map['targetUtilization'] == null
          ? null
          : map['targetUtilization'] as double,
    );
  }
}
