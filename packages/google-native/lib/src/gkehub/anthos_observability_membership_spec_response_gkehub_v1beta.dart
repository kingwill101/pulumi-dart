// ignore_for_file: unused_element, unnecessary_cast


/// **Anthosobservability**: Per-Membership Feature spec.
class AnthosObservabilityMembershipSpecResponseGkehubV1beta {
  /// Use full of metrics rather than optimized metrics. See https://cloud.google.com/anthos/clusters/docs/on-prem/1.8/concepts/logging-and-monitoring#optimized_metrics_default_metrics
  final bool doNotOptimizeMetrics;
  /// Enable collecting and reporting metrics and logs from user apps.
  final bool enableStackdriverOnApplications;
  /// the version of stackdriver operator used by this feature
  final String version;

  /// Creates a new [AnthosObservabilityMembershipSpecResponseGkehubV1beta].
  /// [doNotOptimizeMetrics] Use full of metrics rather than optimized metrics. See https://cloud.google.com/anthos/clusters/docs/on-prem/1.8/concepts/logging-and-monitoring#optimized_metrics_default_metrics
  /// [enableStackdriverOnApplications] Enable collecting and reporting metrics and logs from user apps.
  /// [version] the version of stackdriver operator used by this feature
  AnthosObservabilityMembershipSpecResponseGkehubV1beta({
    required this.doNotOptimizeMetrics,
    required this.enableStackdriverOnApplications,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'doNotOptimizeMetrics': doNotOptimizeMetrics,
      'enableStackdriverOnApplications': enableStackdriverOnApplications,
      'version': version,
    };
  }

  factory AnthosObservabilityMembershipSpecResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return AnthosObservabilityMembershipSpecResponseGkehubV1beta(
      doNotOptimizeMetrics: map['doNotOptimizeMetrics'] as bool,
      enableStackdriverOnApplications: map['enableStackdriverOnApplications'] as bool,
      version: map['version'] as String,
    );
  }
}

