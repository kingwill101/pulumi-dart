// ignore_for_file: unused_element, unnecessary_cast


/// Properties of Sensitive Data Discovery.
class SensitiveDataDiscoveryProperties {
  /// Indicates whether Sensitive Data Discovery should be enabled.
  final bool? isEnabled;

  /// Creates a new [SensitiveDataDiscoveryProperties].
  /// [isEnabled] Indicates whether Sensitive Data Discovery should be enabled.
  SensitiveDataDiscoveryProperties({
    this.isEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isEnabled': ?isEnabled,
    };
  }

  factory SensitiveDataDiscoveryProperties.fromMap(Map<String, dynamic> map) {
    return SensitiveDataDiscoveryProperties(
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
    );
  }
}

