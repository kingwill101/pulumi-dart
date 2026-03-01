// ignore_for_file: unused_element, unnecessary_cast


class GetAlertsAlertConfigurationSinkAlerthub {
  /// Open.
  final bool enabled;

  /// Creates a new [GetAlertsAlertConfigurationSinkAlerthub].
  /// [enabled] Open.
  GetAlertsAlertConfigurationSinkAlerthub({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetAlertsAlertConfigurationSinkAlerthub.fromMap(Map<String, dynamic> map) {
    return GetAlertsAlertConfigurationSinkAlerthub(
      enabled: map['enabled'] as bool,
    );
  }
}

