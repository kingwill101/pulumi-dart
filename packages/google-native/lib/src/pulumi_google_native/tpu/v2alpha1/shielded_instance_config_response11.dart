// ignore_for_file: unused_element, unnecessary_cast

/// A set of Shielded Instance options.
class ShieldedInstanceConfigResponse11 {
  /// Defines whether the instance has Secure Boot enabled.
  final bool enableSecureBoot;

  ShieldedInstanceConfigResponse11({
    required this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableSecureBoot'] = enableSecureBoot;
    return map;
  }

  factory ShieldedInstanceConfigResponse11.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigResponse11(
      enableSecureBoot: map['enableSecureBoot'] as bool,
    );
  }
}
