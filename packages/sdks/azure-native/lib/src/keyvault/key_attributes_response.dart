// ignore_for_file: unused_element, unnecessary_cast


/// The object attributes managed by the Azure Key Vault service.
class KeyAttributesResponse {
  /// Creation time in seconds since 1970-01-01T00:00:00Z.
  final double created;
  /// Determines whether or not the object is enabled.
  final bool? enabled;
  /// Expiry date in seconds since 1970-01-01T00:00:00Z.
  final double? expires;
  /// Indicates if the private key can be exported.
  final bool? exportable;
  /// Not before date in seconds since 1970-01-01T00:00:00Z.
  final double? notBefore;
  /// The deletion recovery level currently in effect for the object. If it contains 'Purgeable', then the object can be permanently deleted by a privileged user; otherwise, only the system can purge the object at the end of the retention interval.
  final String recoveryLevel;
  /// Last updated time in seconds since 1970-01-01T00:00:00Z.
  final double updated;

  /// Creates a new [KeyAttributesResponse].
  /// [created] Creation time in seconds since 1970-01-01T00:00:00Z.
  /// [enabled] Determines whether or not the object is enabled.
  /// [expires] Expiry date in seconds since 1970-01-01T00:00:00Z.
  /// [exportable] Indicates if the private key can be exported.
  /// [notBefore] Not before date in seconds since 1970-01-01T00:00:00Z.
  /// [recoveryLevel] The deletion recovery level currently in effect for the object. If it contains 'Purgeable', then the object can be permanently deleted by a privileged user; otherwise, only the system can purge the object at the end of the retention interval.
  /// [updated] Last updated time in seconds since 1970-01-01T00:00:00Z.
  KeyAttributesResponse({
    required this.created,
    this.enabled,
    this.expires,
    this.exportable,
    this.notBefore,
    required this.recoveryLevel,
    required this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': created,
      'enabled': ?enabled,
      'expires': ?expires,
      'exportable': ?exportable,
      'notBefore': ?notBefore,
      'recoveryLevel': recoveryLevel,
      'updated': updated,
    };
  }

  factory KeyAttributesResponse.fromMap(Map<String, dynamic> map) {
    return KeyAttributesResponse(
      created: map['created'] as double,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      expires: map['expires'] == null ? null : map['expires'] as double,
      exportable: map['exportable'] == null ? null : map['exportable'] as bool,
      notBefore: map['notBefore'] == null ? null : map['notBefore'] as double,
      recoveryLevel: map['recoveryLevel'] as String,
      updated: map['updated'] as double,
    );
  }
}

