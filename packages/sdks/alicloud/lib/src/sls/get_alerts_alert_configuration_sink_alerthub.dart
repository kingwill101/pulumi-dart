// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertsAlertConfigurationSinkAlerthub {
  /// Open.
  final pulumi.Input<bool> enabled;

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
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

