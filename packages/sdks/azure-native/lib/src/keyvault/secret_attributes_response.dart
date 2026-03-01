// ignore_for_file: unused_element, unnecessary_cast


/// The secret management attributes.
class SecretAttributesResponse {
  /// Creation time in seconds since 1970-01-01T00:00:00Z.
  final int created;
  /// Determines whether the object is enabled.
  final bool? enabled;
  /// Expiry date in seconds since 1970-01-01T00:00:00Z.
  final int? expires;
  /// Not before date in seconds since 1970-01-01T00:00:00Z.
  final int? notBefore;
  /// Last updated time in seconds since 1970-01-01T00:00:00Z.
  final int updated;

  /// Creates a new [SecretAttributesResponse].
  /// [created] Creation time in seconds since 1970-01-01T00:00:00Z.
  /// [enabled] Determines whether the object is enabled.
  /// [expires] Expiry date in seconds since 1970-01-01T00:00:00Z.
  /// [notBefore] Not before date in seconds since 1970-01-01T00:00:00Z.
  /// [updated] Last updated time in seconds since 1970-01-01T00:00:00Z.
  SecretAttributesResponse({
    required this.created,
    this.enabled,
    this.expires,
    this.notBefore,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'enabled': ?enabled,
      'expires': ?expires,
      'notBefore': ?notBefore,
      'updated': updated,
    };
  }

  factory SecretAttributesResponse.fromMap(Map<String, dynamic> map) {
    return SecretAttributesResponse(
      created: map['created'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      expires: map['expires'] == null ? null : map['expires'] as int,
      notBefore: map['notBefore'] == null ? null : map['notBefore'] as int,
      updated: map['updated'] as int,
    );
  }
}

