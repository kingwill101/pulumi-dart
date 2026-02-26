// ignore_for_file: unused_element, unnecessary_cast

/// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
class ExternalProtectionLevelOptions {
  /// The path to the external key material on the EKM when using EkmConnection e.g., "v0/my/key". Set this field instead of external_key_uri when using an EkmConnection.
  final String? ekmConnectionKeyPath;

  /// The URI for an external resource that this CryptoKeyVersion represents.
  final String? externalKeyUri;

  ExternalProtectionLevelOptions({
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

  factory ExternalProtectionLevelOptions.fromMap(Map<String, dynamic> map) {
    return ExternalProtectionLevelOptions(
      ekmConnectionKeyPath: map['ekmConnectionKeyPath'] == null
          ? null
          : map['ekmConnectionKeyPath'] as String,
      externalKeyUri: map['externalKeyUri'] == null
          ? null
          : map['externalKeyUri'] as String,
    );
  }
}
