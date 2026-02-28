// ignore_for_file: unused_element, unnecessary_cast

/// A set of Shielded Instance options.
class ShieldedInstanceConfig {
  /// Defines whether the instance has Secure Boot enabled.
  final bool? enableSecureBoot;

  /// Creates a new [ShieldedInstanceConfig].
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled.
  ShieldedInstanceConfig({
    this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableSecureBootValue = enableSecureBoot;
    if (enableSecureBootValue != null) {
      map['enableSecureBoot'] = enableSecureBootValue;
    }
    return map;
  }

  factory ShieldedInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfig(
      enableSecureBoot: map['enableSecureBoot'] == null
          ? null
          : map['enableSecureBoot'] as bool,
    );
  }
}
