// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_key_vault_properties.dart';

/// Configuration properties for apps environment custom domain
class CustomDomainConfiguration {
  /// Certificate stored in Azure Key Vault.
  final pulumi.Input<CertificateKeyVaultProperties>?
  certificateKeyVaultProperties;

  /// Certificate password
  final pulumi.Input<String>? certificatePassword;

  /// PFX or PEM blob
  final pulumi.Input<String>? certificateValue;

  /// Dns suffix for the environment domain
  final pulumi.Input<String>? dnsSuffix;

  /// Creates a new [CustomDomainConfiguration].
  /// [certificateKeyVaultProperties] Certificate stored in Azure Key Vault.
  /// [certificatePassword] Certificate password
  /// [certificateValue] PFX or PEM blob
  /// [dnsSuffix] Dns suffix for the environment domain
  CustomDomainConfiguration({
    this.certificateKeyVaultProperties,
    this.certificatePassword,
    this.certificateValue,
    this.dnsSuffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateKeyVaultProperties':
          ?pulumi.Input.mapOptionalInputValue<
            CertificateKeyVaultProperties,
            Map<String, dynamic>
          >(certificateKeyVaultProperties, (value) => value.toMap()),
      'certificatePassword': ?certificatePassword,
      'certificateValue': ?certificateValue,
      'dnsSuffix': ?dnsSuffix,
    };
  }

  factory CustomDomainConfiguration.fromMap(Map<String, dynamic> map) {
    return CustomDomainConfiguration(
      certificateKeyVaultProperties: (() {
        final guardedValue = map['certificateKeyVaultProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CertificateKeyVaultProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      certificatePassword: (() {
        final guardedValue = map['certificatePassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificateValue: (() {
        final guardedValue = map['certificateValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dnsSuffix: (() {
        final guardedValue = map['dnsSuffix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
