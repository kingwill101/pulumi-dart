// ignore_for_file: unused_element, unnecessary_cast

/// A set of Shielded Instance options.
class ShieldedInstanceConfigResponse {
  /// Defines whether the instance has Secure Boot enabled.
  final bool enableSecureBoot;

  /// Creates a new [ShieldedInstanceConfigResponse].
  /// [enableSecureBoot] Defines whether the instance has Secure Boot enabled.
  ShieldedInstanceConfigResponse({required this.enableSecureBoot});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableSecureBoot': enableSecureBoot};
  }

  factory ShieldedInstanceConfigResponse.fromMap(Map<String, dynamic> map) {
    return ShieldedInstanceConfigResponse(
      enableSecureBoot: map['enableSecureBoot'] as bool,
    );
  }
}
