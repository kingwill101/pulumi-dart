// ignore_for_file: unused_element, unnecessary_cast

class CryptoKeyVersionAttestationExternalProtectionLevelOptions {
  /// The path to the external key material on the EKM when using EkmConnection e.g., "v0/my/key". Set this field instead of externalKeyUri when using an EkmConnection.
  final String? ekmConnectionKeyPath;

  /// The URI for an external resource that this CryptoKeyVersion represents.
  final String? externalKeyUri;

  /// Creates a new [CryptoKeyVersionAttestationExternalProtectionLevelOptions].
  /// [ekmConnectionKeyPath] The path to the external key material on the EKM when using EkmConnection e.g., "v0/my/key". Set this field instead of externalKeyUri when using an EkmConnection.
  /// [externalKeyUri] The URI for an external resource that this CryptoKeyVersion represents.
  CryptoKeyVersionAttestationExternalProtectionLevelOptions({
    this.ekmConnectionKeyPath,
    this.externalKeyUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ekmConnectionKeyPath': ?ekmConnectionKeyPath,
      'externalKeyUri': ?externalKeyUri,
    };
  }

  factory CryptoKeyVersionAttestationExternalProtectionLevelOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return CryptoKeyVersionAttestationExternalProtectionLevelOptions(
      ekmConnectionKeyPath: map['ekmConnectionKeyPath'] == null
          ? null
          : map['ekmConnectionKeyPath'] as String,
      externalKeyUri: map['externalKeyUri'] == null
          ? null
          : map['externalKeyUri'] as String,
    );
  }
}
