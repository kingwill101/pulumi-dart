// ignore_for_file: unused_element, unnecessary_cast


/// The object attributes managed by the Azure Key Vault service.
class KeyAttributes {
  /// Determines whether or not the object is enabled.
  final bool? enabled;
  /// Expiry date in seconds since 1970-01-01T00:00:00Z.
  final double? expires;
  /// Indicates if the private key can be exported.
  final bool? exportable;
  /// Not before date in seconds since 1970-01-01T00:00:00Z.
  final double? notBefore;

  /// Creates a new [KeyAttributes].
  /// [enabled] Determines whether or not the object is enabled.
  /// [expires] Expiry date in seconds since 1970-01-01T00:00:00Z.
  /// [exportable] Indicates if the private key can be exported.
  /// [notBefore] Not before date in seconds since 1970-01-01T00:00:00Z.
  KeyAttributes({
    this.enabled,
    this.expires,
    this.exportable,
    this.notBefore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'expires': ?expires,
      'exportable': ?exportable,
      'notBefore': ?notBefore,
    };
  }

  factory KeyAttributes.fromMap(Map<String, dynamic> map) {
    return KeyAttributes(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      expires: map['expires'] == null ? null : map['expires'] as double,
      exportable: map['exportable'] == null ? null : map['exportable'] as bool,
      notBefore: map['notBefore'] == null ? null : map['notBefore'] as double,
    );
  }
}

