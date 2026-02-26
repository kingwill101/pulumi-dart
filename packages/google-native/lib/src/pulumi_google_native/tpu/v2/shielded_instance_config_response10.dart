// ignore_for_file: unused_element, unnecessary_cast

/// A set of Shielded Instance options.
class ShieldedInstanceConfigResponse10 {
  /// Defines whether the instance has Secure Boot enabled.
  final bool enableSecureBoot;

  ShieldedInstanceConfigResponse10({
    required this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableSecureBoot'] = enableSecureBoot;
    return map;
  }

  factory ShieldedInstanceConfigResponse10.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigResponse10(
      enableSecureBoot: map['enableSecureBoot'] as bool,
    );
  }
}
