// ignore_for_file: unused_element, unnecessary_cast

/// A set of Shielded Instance options.
class ShieldedInstanceConfig10 {
  /// Defines whether the instance has Secure Boot enabled.
  final bool? enableSecureBoot;

  ShieldedInstanceConfig10({
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

  factory ShieldedInstanceConfig10.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfig10(
      enableSecureBoot: map['enableSecureBoot'] == null
          ? null
          : map['enableSecureBoot'] as bool,
    );
  }
}
