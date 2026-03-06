// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The secret management attributes.
class SecretAttributes {
  /// Determines whether the object is enabled.
  final pulumi.Input<bool>? enabled;
  /// Expiry date in seconds since 1970-01-01T00:00:00Z.
  final pulumi.Input<int>? expires;
  /// Not before date in seconds since 1970-01-01T00:00:00Z.
  final pulumi.Input<int>? notBefore;

  /// Creates a new [SecretAttributes].
  /// [enabled] Determines whether the object is enabled.
  /// [expires] Expiry date in seconds since 1970-01-01T00:00:00Z.
  /// [notBefore] Not before date in seconds since 1970-01-01T00:00:00Z.
  const SecretAttributes({
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
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

