// ignore_for_file: unused_element, unnecessary_cast


/// The secret management attributes.
class SecretAttributes {
  /// Determines whether the object is enabled.
  final bool? enabled;
  /// Expiry date in seconds since 1970-01-01T00:00:00Z.
  final int? expires;
  /// Not before date in seconds since 1970-01-01T00:00:00Z.
  final int? notBefore;

  /// Creates a new [SecretAttributes].
  /// [enabled] Determines whether the object is enabled.
  /// [expires] Expiry date in seconds since 1970-01-01T00:00:00Z.
  /// [notBefore] Not before date in seconds since 1970-01-01T00:00:00Z.
  SecretAttributes({
    this.enabled,
    this.expires,
    this.notBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'expires': ?expires,
      'notBefore': ?notBefore,
    };
  }

  factory SecretAttributes.fromMap(Map<String, dynamic> map) {
    return SecretAttributes(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      expires: map['expires'] == null ? null : map['expires'] as int,
      notBefore: map['notBefore'] == null ? null : map['notBefore'] as int,
    );
  }
}

