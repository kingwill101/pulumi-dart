// ignore_for_file: unused_element, unnecessary_cast


class GetAlertsAlertConfigurationSinkCms {
  /// Open.
  final bool enabled;

  /// Creates a new [GetAlertsAlertConfigurationSinkCms].
  /// [enabled] Open.
  GetAlertsAlertConfigurationSinkCms({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetAlertsAlertConfigurationSinkCms.fromMap(Map<String, dynamic> map) {
    return GetAlertsAlertConfigurationSinkCms(
      enabled: map['enabled'] as bool,
    );
  }
}

