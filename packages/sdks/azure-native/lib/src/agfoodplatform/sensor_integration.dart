// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Sensor integration request model.
class SensorIntegration {
  /// Sensor integration enable state.
  final pulumi.Input<String>? enabled;

  /// Creates a new [SensorIntegration].
  /// [enabled] Sensor integration enable state.
  SensorIntegration({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory SensorIntegration.fromMap(Map<String, dynamic> map) {
    return SensorIntegration(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

