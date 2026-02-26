// ignore_for_file: unused_element, unnecessary_cast

import '../crypto_key_version_attestation_cert_chains/crypto_key_version_attestation_cert_chains.dart';
import '../crypto_key_version_attestation_external_protection_level_options/crypto_key_version_attestation_external_protection_level_options.dart';

class CryptoKeyVersionAttestation {
  /// The certificate chains needed to validate the attestation
  /// Structure is documented below.
  final CryptoKeyVersionAttestationCertChains? certChains;

  /// (Output)
  /// The attestation data provided by the HSM when the key operation was performed.
  final String? content;

  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// Structure is documented below.
  final CryptoKeyVersionAttestationExternalProtectionLevelOptions?
      externalProtectionLevelOptions;

  /// (Output)
  /// The format of the attestation data.
  final String? format;

  CryptoKeyVersionAttestation({
    this.certChains,
    this.content,
    this.externalProtectionLevelOptions,
    this.format,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certChainsValue = certChains;
    if (certChainsValue != null) {
      map['certChains'] = certChainsValue.toMap();
    }
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final externalProtectionLevelOptionsValue = externalProtectionLevelOptions;
    if (externalProtectionLevelOptionsValue != null) {
      map['externalProtectionLevelOptions'] =
          externalProtectionLevelOptionsValue.toMap();
    }
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = formatValue;
    }
    return map;
  }

  factory CryptoKeyVersionAttestation.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionAttestation(
      certChains: map['certChains'] == null
          ? null
          : CryptoKeyVersionAttestationCertChains.fromMap(
              (map['certChains'] as Map).cast<String, dynamic>()),
      content: map['content'] == null ? null : map['content'] as String,
      externalProtectionLevelOptions: map['externalProtectionLevelOptions'] ==
              null
          ? null
          : CryptoKeyVersionAttestationExternalProtectionLevelOptions.fromMap(
              (map['externalProtectionLevelOptions'] as Map)
                  .cast<String, dynamic>()),
      format: map['format'] == null ? null : map['format'] as String,
    );
  }
}
