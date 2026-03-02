// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAlertsAlertConfigurationSinkCms {
  /// Open.
  final pulumi.Input<bool> enabled;

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
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

