// ignore_for_file: unused_element, unnecessary_cast

/// Specifies the SR-IOV networking operator config.
class BareMetalSrIovConfig {
  /// Whether to install the SR-IOV operator.
  final bool? enabled;

  BareMetalSrIovConfig({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory BareMetalSrIovConfig.fromMap(Map<String, dynamic> map) {
    return BareMetalSrIovConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
