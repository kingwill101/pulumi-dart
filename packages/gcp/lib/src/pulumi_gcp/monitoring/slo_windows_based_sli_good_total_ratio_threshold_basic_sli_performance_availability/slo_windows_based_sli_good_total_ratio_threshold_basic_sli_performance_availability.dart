// ignore_for_file: unused_element, unnecessary_cast

class SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability {
  /// Whether an availability SLI is enabled or not. Must be set to `true. Defaults to `true`.
  final bool? enabled;

  SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability.fromMap(
      Map<String, dynamic> map) {
    return SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
