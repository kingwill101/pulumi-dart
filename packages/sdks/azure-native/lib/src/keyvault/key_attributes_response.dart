// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The object attributes managed by the Azure Key Vault service.
class KeyAttributesResponse {
  /// Creation time in seconds since 1970-01-01T00:00:00Z.
  final pulumi.Input<double> created;
  /// Determines whether or not the object is enabled.
  final pulumi.Input<bool?>? enabled;
  /// Expiry date in seconds since 1970-01-01T00:00:00Z.
  final pulumi.Input<double?>? expires;
  /// Indicates if the private key can be exported.
  final pulumi.Input<bool?>? exportable;
  /// Not before date in seconds since 1970-01-01T00:00:00Z.
  final pulumi.Input<double?>? notBefore;
  /// The deletion recovery level currently in effect for the object. If it contains 'Purgeable', then the object can be permanently deleted by a privileged user; otherwise, only the system can purge the object at the end of the retention interval.
  final pulumi.Input<String> recoveryLevel;
  /// Last updated time in seconds since 1970-01-01T00:00:00Z.
  final pulumi.Input<double> updated;

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
    pulumi.Input<bool?>? exportable,
    this.notBefore,
    required this.recoveryLevel,
    required this.updated,
  }) : exportable = exportable ?? pulumi.Input.fromValue(false);

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
      created: pulumi.Input.fromValue((map['created'] as num).toDouble()),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expires: (() { final guardedValue = map['expires']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      exportable: (() { final guardedValue = map['exportable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      recoveryLevel: pulumi.Input.fromValue(map['recoveryLevel'] as String),
      updated: pulumi.Input.fromValue((map['updated'] as num).toDouble()),
    );
  }
}
