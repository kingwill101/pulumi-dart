// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the SR-IOV networking operator config.
class BareMetalSrIovConfig {
  /// Whether to install the SR-IOV operator.
  final bool? enabled;

  /// Creates a new [BareMetalSrIovConfig].
  /// [enabled] Whether to install the SR-IOV operator.
  BareMetalSrIovConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory BareMetalSrIovConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalSrIovConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

