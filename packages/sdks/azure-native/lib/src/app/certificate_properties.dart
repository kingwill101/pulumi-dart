// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_key_vault_properties.dart';

/// Certificate resource specific properties
class CertificateProperties {
  /// Properties for a certificate stored in a Key Vault.
  final pulumi.Input<CertificateKeyVaultProperties>?
  certificateKeyVaultProperties;

  /// The type of the certificate. Allowed values are `ServerSSLCertificate` and `ImagePullTrustedCA`
  final pulumi.Input<String>? certificateType;

  /// Certificate password.
  final pulumi.Input<String>? password;

  /// PFX or PEM blob
  final pulumi.Input<String>? value;

  /// Creates a new [CertificateProperties].
  /// [certificateKeyVaultProperties] Properties for a certificate stored in a Key Vault.
  /// [certificateType] The type of the certificate. Allowed values are `ServerSSLCertificate` and `ImagePullTrustedCA`
  /// [password] Certificate password.
  /// [value] PFX or PEM blob
  CertificateProperties({
    this.certificateKeyVaultProperties,
    this.certificateType,
    this.password,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateKeyVaultProperties':
          ?pulumi.Input.mapOptionalInputValue<
            CertificateKeyVaultProperties,
            Map<String, dynamic>
          >(certificateKeyVaultProperties, (value) => value.toMap()),
      'certificateType': ?certificateType,
      'password': ?password,
      'value': ?value,
    };
  }

  factory CertificateProperties.fromMap(Map<String, dynamic> map) {
    return CertificateProperties(
      certificateKeyVaultProperties: (() {
        final guardedValue = map['certificateKeyVaultProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CertificateKeyVaultProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      certificateType: (() {
        final guardedValue = map['certificateType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
