// ignore_for_file: unused_element, unnecessary_cast

class ServiceLbPoliciesIsolationConfig {
  /// The isolation granularity of the load balancer.
  /// Possible values are: `ISOLATION_GRANULARITY_UNSPECIFIED`, `REGION`.
  final String? isolationGranularity;

  /// The isolation mode of the load balancer.
  /// Default value is `NEAREST`.
  /// Possible values are: `ISOLATION_MODE_UNSPECIFIED`, `NEAREST`, `STRICT`.
  final String? isolationMode;

  /// Creates a new [ServiceLbPoliciesIsolationConfig].
  /// [isolationGranularity] The isolation granularity of the load balancer.
  /// [isolationMode] The isolation mode of the load balancer.
  ServiceLbPoliciesIsolationConfig({
    this.isolationGranularity,
    this.isolationMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final isolationGranularityValue = isolationGranularity;
    if (isolationGranularityValue != null) {
      map['isolationGranularity'] = isolationGranularityValue;
    }
    final isolationModeValue = isolationMode;
    if (isolationModeValue != null) {
      map['isolationMode'] = isolationModeValue;
    }
    return map;
  }

  factory ServiceLbPoliciesIsolationConfig.fromMap(Map<String, dynamic> map) {
    return ServiceLbPoliciesIsolationConfig(
      isolationGranularity: map['isolationGranularity'] == null
          ? null
          : map['isolationGranularity'] as String,
      isolationMode:
          map['isolationMode'] == null ? null : map['isolationMode'] as String,
    );
  }
}
