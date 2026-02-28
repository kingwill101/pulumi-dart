// ignore_for_file: unused_element, unnecessary_cast

import 'crypto_key_version_attestation_cert_chains.dart';
import 'crypto_key_version_attestation_external_protection_level_options.dart';

class CryptoKeyVersionAttestation {
  /// The certificate chains needed to validate the attestation
  /// Structure is documented below.
  final CryptoKeyVersionAttestationCertChains? certChains;
  /// (Output)
  /// The attestation data provided by the HSM when the key operation was performed.
  final String? content;
  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// Structure is documented below.
  final CryptoKeyVersionAttestationExternalProtectionLevelOptions? externalProtectionLevelOptions;
  /// (Output)
  /// The format of the attestation data.
  final String? format;

  /// Creates a new [CryptoKeyVersionAttestation].
  /// [certChains] The certificate chains needed to validate the attestation
  /// [content] (Output)
  /// [externalProtectionLevelOptions] ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// [format] (Output)
  CryptoKeyVersionAttestation({
    this.certChains,
    this.content,
    this.externalProtectionLevelOptions,
    this.format,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certChains': ?certChains == null ? null : certChains!.toMap(),
      'content': ?content,
      'externalProtectionLevelOptions': ?externalProtectionLevelOptions == null ? null : externalProtectionLevelOptions!.toMap(),
      'format': ?format,
    };
  }

  factory CryptoKeyVersionAttestation.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionAttestation(
      certChains: map['certChains'] == null ? null : CryptoKeyVersionAttestationCertChains.fromMap((map['certChains'] as Map).cast<String, dynamic>()),
      content: map['content'] == null ? null : map['content'] as String,
      externalProtectionLevelOptions: map['externalProtectionLevelOptions'] == null ? null : CryptoKeyVersionAttestationExternalProtectionLevelOptions.fromMap((map['externalProtectionLevelOptions'] as Map).cast<String, dynamic>()),
      format: map['format'] == null ? null : map['format'] as String,
    );
  }
}

