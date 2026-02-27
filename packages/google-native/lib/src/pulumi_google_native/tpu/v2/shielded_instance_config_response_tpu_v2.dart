// ignore_for_file: unused_element, unnecessary_cast

/// A set of Shielded Instance options.
class ShieldedInstanceConfigResponseTpuV2 {
  /// Defines whether the instance has Secure Boot enabled.
  final bool enableSecureBoot;

  ShieldedInstanceConfigResponseTpuV2({
    required this.enableSecureBoot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableSecureBoot'] = enableSecureBoot;
    return map;
  }

  factory ShieldedInstanceConfigResponseTpuV2.fromMap(
      Map<String, dynamic> map) {
    return ShieldedInstanceConfigResponseTpuV2(
      enableSecureBoot: map['enableSecureBoot'] as bool,
    );
  }
}
