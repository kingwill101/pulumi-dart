// ignore_for_file: unused_element, unnecessary_cast

/// The feature specific settings to be used in the application. These define behaviors that are user configurable.
class FeatureSettingsResponse {
  /// Boolean value indicating if split health checks should be used instead of the legacy health checks. At an app.yaml level, this means defaulting to 'readiness_check' and 'liveness_check' values instead of 'health_check' ones. Once the legacy 'health_check' behavior is deprecated, and this value is always true, this setting can be removed.
  final bool splitHealthChecks;

  /// If true, use Container-Optimized OS (https://cloud.google.com/container-optimized-os/) base image for VMs, rather than a base Debian image.
  final bool useContainerOptimizedOs;

  FeatureSettingsResponse({
    required this.splitHealthChecks,
    required this.useContainerOptimizedOs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['splitHealthChecks'] = splitHealthChecks;
    map['useContainerOptimizedOs'] = useContainerOptimizedOs;
    return map;
  }

  factory FeatureSettingsResponse.fromMap(Map<String, dynamic> map) {
    return FeatureSettingsResponse(
      splitHealthChecks: map['splitHealthChecks'] as bool,
      useContainerOptimizedOs: map['useContainerOptimizedOs'] as bool,
    );
  }
}
