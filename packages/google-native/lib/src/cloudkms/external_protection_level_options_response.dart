// ignore_for_file: unused_element, unnecessary_cast

/// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
class ExternalProtectionLevelOptionsResponse {
  /// The path to the external key material on the EKM when using EkmConnection e.g., "v0/my/key". Set this field instead of external_key_uri when using an EkmConnection.
  final String ekmConnectionKeyPath;

  /// The URI for an external resource that this CryptoKeyVersion represents.
  final String externalKeyUri;

  /// Creates a new [ExternalProtectionLevelOptionsResponse].
  /// [ekmConnectionKeyPath] The path to the external key material on the EKM when using EkmConnection e.g., "v0/my/key". Set this field instead of external_key_uri when using an EkmConnection.
  /// [externalKeyUri] The URI for an external resource that this CryptoKeyVersion represents.
  ExternalProtectionLevelOptionsResponse({
    required this.ekmConnectionKeyPath,
    required this.externalKeyUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ekmConnectionKeyPath': ekmConnectionKeyPath,
      'externalKeyUri': externalKeyUri,
    };
  }

  factory ExternalProtectionLevelOptionsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExternalProtectionLevelOptionsResponse(
      ekmConnectionKeyPath: map['ekmConnectionKeyPath'] as String,
      externalKeyUri: map['externalKeyUri'] as String,
    );
  }
}
