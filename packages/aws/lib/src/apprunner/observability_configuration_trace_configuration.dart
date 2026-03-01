// ignore_for_file: unused_element, unnecessary_cast

class ObservabilityConfigurationTraceConfiguration {
  /// Implementation provider chosen for tracing App Runner services. Valid values: `AWSXRAY`.
  final String? vendor;

  /// Creates a new [ObservabilityConfigurationTraceConfiguration].
  /// [vendor] Implementation provider chosen for tracing App Runner services. Valid values: `AWSXRAY`.
  ObservabilityConfigurationTraceConfiguration({this.vendor});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'vendor': ?vendor};
  }

  factory ObservabilityConfigurationTraceConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ObservabilityConfigurationTraceConfiguration(
      vendor: map['vendor'] == null ? null : map['vendor'] as String,
    );
  }
}
