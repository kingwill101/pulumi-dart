// ignore_for_file: unused_element, unnecessary_cast

/// The feature specific settings to be used in the application. These define behaviors that are user configurable.
class FeatureSettingsAppengineV1beta {
  /// Boolean value indicating if split health checks should be used instead of the legacy health checks. At an app.yaml level, this means defaulting to 'readiness_check' and 'liveness_check' values instead of 'health_check' ones. Once the legacy 'health_check' behavior is deprecated, and this value is always true, this setting can be removed.
  final bool? splitHealthChecks;

  /// If true, use Container-Optimized OS (https://cloud.google.com/container-optimized-os/) base image for VMs, rather than a base Debian image.
  final bool? useContainerOptimizedOs;

  /// Creates a new [FeatureSettingsAppengineV1beta].
  /// [splitHealthChecks] Boolean value indicating if split health checks should be used instead of the legacy health checks. At an app.yaml level, this means defaulting to 'readiness_check' and 'liveness_check' values instead of 'health_check' ones. Once the legacy 'health_check' behavior is deprecated, and this value is always true, this setting can be removed.
  /// [useContainerOptimizedOs] If true, use Container-Optimized OS (https://cloud.google.com/container-optimized-os/) base image for VMs, rather than a base Debian image.
  FeatureSettingsAppengineV1beta({
    this.splitHealthChecks,
    this.useContainerOptimizedOs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final splitHealthChecksValue = splitHealthChecks;
    if (splitHealthChecksValue != null) {
      map['splitHealthChecks'] = splitHealthChecksValue;
    }
    final useContainerOptimizedOsValue = useContainerOptimizedOs;
    if (useContainerOptimizedOsValue != null) {
      map['useContainerOptimizedOs'] = useContainerOptimizedOsValue;
    }
    return map;
  }

  factory FeatureSettingsAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return FeatureSettingsAppengineV1beta(
      splitHealthChecks: map['splitHealthChecks'] == null
          ? null
          : map['splitHealthChecks'] as bool,
      useContainerOptimizedOs: map['useContainerOptimizedOs'] == null
          ? null
          : map['useContainerOptimizedOs'] as bool,
    );
  }
}
