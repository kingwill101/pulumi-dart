// ignore_for_file: unused_element, unnecessary_cast

class RegionBackendServiceBackendCustomMetric {
  /// If true, the metric data is not used for load balancing.
  final bool dryRun;

  /// Optional parameter to define a target utilization for the Custom Metrics
  /// balancing mode. The valid range is <code>[0.0, 1.0]</code>.
  final double? maxUtilization;

  /// Name of a custom utilization signal. The name must be 1-64 characters
  /// long and match the regular expression a-z? which
  /// means the first character must be a lowercase letter, and all following
  /// characters must be a dash, period, underscore, lowercase letter, or
  /// digit, except the last character, which cannot be a dash, period, or
  /// underscore. For usage guidelines, see Custom Metrics balancing mode. This
  /// field can only be used for a global or regional backend service with the
  /// loadBalancingScheme set to <code>EXTERNAL_MANAGED</code>,
  /// <code>INTERNAL_MANAGED</code> <code>INTERNAL_SELF_MANAGED</code>.
  final String name;

  /// Creates a new [RegionBackendServiceBackendCustomMetric].
  /// [dryRun] If true, the metric data is not used for load balancing.
  /// [maxUtilization] Optional parameter to define a target utilization for the Custom Metrics
  /// [name] Name of a custom utilization signal. The name must be 1-64 characters
  RegionBackendServiceBackendCustomMetric({
    required this.dryRun,
    this.maxUtilization,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dryRun'] = dryRun;
    final maxUtilizationValue = maxUtilization;
    if (maxUtilizationValue != null) {
      map['maxUtilization'] = maxUtilizationValue;
    }
    map['name'] = name;
    return map;
  }

  factory RegionBackendServiceBackendCustomMetric.fromMap(
      Map<String, dynamic> map) {
    return RegionBackendServiceBackendCustomMetric(
      dryRun: map['dryRun'] as bool,
      maxUtilization: map['maxUtilization'] == null
          ? null
          : map['maxUtilization'] as double,
      name: map['name'] as String,
    );
  }
}
