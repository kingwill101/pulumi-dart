// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainAdvancedSecurityOptionJwtOption {
  /// Enabled disabled toggle for off-peak update window
  final pulumi.Input<bool> enabled;
  /// URL endpoint that hosts the JSON Web Key Set (JWKS) containing public keys used to verify JWT signatures.
  final pulumi.Input<String> jwksUrl;
  /// PEM-encoded public key used to verify JWT signatures.
  final pulumi.Input<String> publicKey;
  /// Attribute that contains the backend role identifier (such as group name or group ID) in IAM Identity Center.
  final pulumi.Input<String> rolesKey;
  /// Attribute that contains the subject identifier (such as username, user ID, or email) in IAM Identity Center.
  final pulumi.Input<String> subjectKey;

  /// Creates a new [GetDomainAdvancedSecurityOptionJwtOption].
  /// [enabled] Enabled disabled toggle for off-peak update window
  /// [jwksUrl] URL endpoint that hosts the JSON Web Key Set (JWKS) containing public keys used to verify JWT signatures.
  /// [publicKey] PEM-encoded public key used to verify JWT signatures.
  /// [rolesKey] Attribute that contains the backend role identifier (such as group name or group ID) in IAM Identity Center.
  /// [subjectKey] Attribute that contains the subject identifier (such as username, user ID, or email) in IAM Identity Center.
  const GetDomainAdvancedSecurityOptionJwtOption({
    required this.enabled,
    required this.jwksUrl,
    required this.publicKey,
    required this.rolesKey,
    required this.subjectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'jwksUrl': jwksUrl,
      'publicKey': publicKey,
      'rolesKey': rolesKey,
      'subjectKey': subjectKey,
    };
  }

  factory GetDomainAdvancedSecurityOptionJwtOption.fromMap(Map<String, dynamic> map) {
    return GetDomainAdvancedSecurityOptionJwtOption(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      jwksUrl: pulumi.Input.fromValue(map['jwksUrl'] as String),
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
      rolesKey: pulumi.Input.fromValue(map['rolesKey'] as String),
      subjectKey: pulumi.Input.fromValue(map['subjectKey'] as String),
    );
  }
}
