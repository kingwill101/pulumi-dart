// ignore_for_file: unused_element, unnecessary_cast

class InternetMonitorHealthEventsConfig {
  /// The health event threshold percentage set for availability scores.
  final double? availabilityScoreThreshold;

  /// The health event threshold percentage set for performance scores.
  final double? performanceScoreThreshold;

  /// Creates a new [InternetMonitorHealthEventsConfig].
  /// [availabilityScoreThreshold] The health event threshold percentage set for availability scores.
  /// [performanceScoreThreshold] The health event threshold percentage set for performance scores.
  InternetMonitorHealthEventsConfig({
    this.availabilityScoreThreshold,
    this.performanceScoreThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityScoreThresholdValue = availabilityScoreThreshold;
    if (availabilityScoreThresholdValue != null) {
      map['availabilityScoreThreshold'] = availabilityScoreThresholdValue;
    }
    final performanceScoreThresholdValue = performanceScoreThreshold;
    if (performanceScoreThresholdValue != null) {
      map['performanceScoreThreshold'] = performanceScoreThresholdValue;
    }
    return map;
  }

  factory InternetMonitorHealthEventsConfig.fromMap(Map<String, dynamic> map) {
    return InternetMonitorHealthEventsConfig(
      availabilityScoreThreshold: map['availabilityScoreThreshold'] == null
          ? null
          : map['availabilityScoreThreshold'] as double,
      performanceScoreThreshold: map['performanceScoreThreshold'] == null
          ? null
          : map['performanceScoreThreshold'] as double,
    );
  }
}
