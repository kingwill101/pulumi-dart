// ignore_for_file: unused_element, unnecessary_cast

class AddonsConfigAddonsConfigApiSecurityConfig {
  /// Flag that specifies whether the API security add-on is enabled.
  final bool? enabled;

  /// (Output)
  /// Time at which the API Security add-on expires in in milliseconds since epoch. If unspecified, the add-on will never expire.
  final String? expiresAt;

  /// Creates a new [AddonsConfigAddonsConfigApiSecurityConfig].
  /// [enabled] Flag that specifies whether the API security add-on is enabled.
  /// [expiresAt] (Output)
  AddonsConfigAddonsConfigApiSecurityConfig({this.enabled, this.expiresAt});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': ?enabled, 'expiresAt': ?expiresAt};
  }

  factory AddonsConfigAddonsConfigApiSecurityConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AddonsConfigAddonsConfigApiSecurityConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      expiresAt: map['expiresAt'] == null ? null : map['expiresAt'] as String,
    );
  }
}
