// ignore_for_file: unused_element, unnecessary_cast

class CryptoKeyVersionExternalProtectionLevelOptions {
  /// The path to the external key material on the EKM when using EkmConnection e.g., "v0/my/key". Set this field instead of externalKeyUri when using an EkmConnection.
  final String? ekmConnectionKeyPath;

  /// The URI for an external resource that this CryptoKeyVersion represents.
  final String? externalKeyUri;

  /// Creates a new [CryptoKeyVersionExternalProtectionLevelOptions].
  /// [ekmConnectionKeyPath] The path to the external key material on the EKM when using EkmConnection e.g., "v0/my/key". Set this field instead of externalKeyUri when using an EkmConnection.
  /// [externalKeyUri] The URI for an external resource that this CryptoKeyVersion represents.
  CryptoKeyVersionExternalProtectionLevelOptions({
    this.ekmConnectionKeyPath,
    this.externalKeyUri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ekmConnectionKeyPathValue = ekmConnectionKeyPath;
    if (ekmConnectionKeyPathValue != null) {
      map['ekmConnectionKeyPath'] = ekmConnectionKeyPathValue;
    }
    final externalKeyUriValue = externalKeyUri;
    if (externalKeyUriValue != null) {
      map['externalKeyUri'] = externalKeyUriValue;
    }
    return map;
  }

  factory CryptoKeyVersionExternalProtectionLevelOptions.fromMap(
      Map<String, dynamic> map) {
    return CryptoKeyVersionExternalProtectionLevelOptions(
      ekmConnectionKeyPath: map['ekmConnectionKeyPath'] == null
          ? null
          : map['ekmConnectionKeyPath'] as String,
      externalKeyUri: map['externalKeyUri'] == null
          ? null
          : map['externalKeyUri'] as String,
    );
  }
}
