// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertConfigurationSinkAlerthub {
  /// Open.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [AlertConfigurationSinkAlerthub].
  /// [enabled] Open.
  AlertConfigurationSinkAlerthub({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory AlertConfigurationSinkAlerthub.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationSinkAlerthub(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

