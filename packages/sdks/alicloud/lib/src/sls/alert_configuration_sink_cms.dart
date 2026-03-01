// ignore_for_file: unused_element, unnecessary_cast


class AlertConfigurationSinkCms {
  /// Open.
  final bool? enabled;

  /// Creates a new [AlertConfigurationSinkCms].
  /// [enabled] Open.
  AlertConfigurationSinkCms({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory AlertConfigurationSinkCms.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationSinkCms(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

