// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainAdvancedSecurityOptionsJwtOptions {
  /// Whether JWT authentication is enabled.
  final pulumi.Input<bool>? enabled;
  /// URL endpoint that hosts the JSON Web Key Set (JWKS) containing public keys used to verify JWT signatures. This argument can be specified only with OpenSearch versions 3.3 and later. At least one of `jwksUrl` or `publicKey` must be specified when `enabled` is set to `true`.
  final pulumi.Input<String>? jwksUrl;
  /// PEM-encoded public key used to verify JWT signatures. At least one of `jwksUrl` or `publicKey` must be specified when `enabled` is set to `true`. If both `jwksUrl` and `publicKey` are specified, `publicKey` is ignored.
  final pulumi.Input<String>? publicKey;
  /// Element of the JWT assertion to use for roles. Default is `roles`.
  final pulumi.Input<String>? rolesKey;
  /// Element of the JWT assertion to use for the user name. Default is `sub`.
  final pulumi.Input<String>? subjectKey;

  /// Creates a new [DomainAdvancedSecurityOptionsJwtOptions].
  /// [enabled] Whether JWT authentication is enabled.
  /// [jwksUrl] URL endpoint that hosts the JSON Web Key Set (JWKS) containing public keys used to verify JWT signatures. This argument can be specified only with OpenSearch versions 3.3 and later. At least one of `jwksUrl` or `publicKey` must be specified when `enabled` is set to `true`.
  /// [publicKey] PEM-encoded public key used to verify JWT signatures. At least one of `jwksUrl` or `publicKey` must be specified when `enabled` is set to `true`. If both `jwksUrl` and `publicKey` are specified, `publicKey` is ignored.
  /// [rolesKey] Element of the JWT assertion to use for roles. Default is `roles`.
  /// [subjectKey] Element of the JWT assertion to use for the user name. Default is `sub`.
  const DomainAdvancedSecurityOptionsJwtOptions({
    this.enabled,
    this.jwksUrl,
    this.publicKey,
    this.rolesKey,
    this.subjectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'jwksUrl': ?jwksUrl,
      'publicKey': ?publicKey,
      'rolesKey': ?rolesKey,
      'subjectKey': ?subjectKey,
    };
  }

  factory DomainAdvancedSecurityOptionsJwtOptions.fromMap(Map<String, dynamic> map) {
    return DomainAdvancedSecurityOptionsJwtOptions(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      jwksUrl: (() { final guardedValue = map['jwksUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rolesKey: (() { final guardedValue = map['rolesKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectKey: (() { final guardedValue = map['subjectKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
