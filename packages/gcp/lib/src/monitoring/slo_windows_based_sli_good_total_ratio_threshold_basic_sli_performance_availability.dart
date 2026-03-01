// ignore_for_file: unused_element, unnecessary_cast


class SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability {
  /// Whether an availability SLI is enabled or not. Must be set to `true. Defaults to `true`.
  final bool? enabled;

  /// Creates a new [SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability].
  /// [enabled] Whether an availability SLI is enabled or not. Must be set to `true. Defaults to `true`.
  SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability.fromMap(Map<String, dynamic> map) {
    return SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

