// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertConfigurationSinkCms {
  /// Open.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AlertConfigurationSinkCms].
  /// [enabled] Open.
  const AlertConfigurationSinkCms({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory AlertConfigurationSinkCms.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationSinkCms(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

