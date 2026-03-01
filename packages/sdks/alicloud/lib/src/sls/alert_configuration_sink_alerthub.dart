// ignore_for_file: unused_element, unnecessary_cast


class AlertConfigurationSinkAlerthub {
  /// Open.
  final bool? enabled;

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
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

