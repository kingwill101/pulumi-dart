// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The secret management attributes.
class SecretAttributesResponse {
  /// Creation time in seconds since 1970-01-01T00:00:00Z.
  final pulumi.Input<int> created;
  /// Determines whether the object is enabled.
  final pulumi.Input<bool>? enabled;
  /// Expiry date in seconds since 1970-01-01T00:00:00Z.
  final pulumi.Input<int>? expires;
  /// Not before date in seconds since 1970-01-01T00:00:00Z.
  final pulumi.Input<int>? notBefore;
  /// Last updated time in seconds since 1970-01-01T00:00:00Z.
  final pulumi.Input<int> updated;

  /// Creates a new [SecretAttributesResponse].
  /// [created] Creation time in seconds since 1970-01-01T00:00:00Z.
  /// [enabled] Determines whether the object is enabled.
  /// [expires] Expiry date in seconds since 1970-01-01T00:00:00Z.
  /// [notBefore] Not before date in seconds since 1970-01-01T00:00:00Z.
  /// [updated] Last updated time in seconds since 1970-01-01T00:00:00Z.
  const SecretAttributesResponse({
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
      created: pulumi.Input.fromValue(map['created'] as int),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      updated: pulumi.Input.fromValue(map['updated'] as int),
    );
  }
}
