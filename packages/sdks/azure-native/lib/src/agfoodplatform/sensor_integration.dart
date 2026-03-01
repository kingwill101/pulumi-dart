// ignore_for_file: unused_element, unnecessary_cast


/// Sensor integration request model.
class SensorIntegration {
  /// Sensor integration enable state.
  final String? enabled;

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
      enabled: map['enabled'] == null ? null : map['enabled'] as String,
    );
  }
}

