// ignore_for_file: unused_element, unnecessary_cast

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped {
  /// The resource name of the KMS CryptoKey to use for unwrapping.
  final String cryptoKeyName;

  /// The wrapped data crypto key.
  /// A base64-encoded string.
  final String wrappedKey;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped].
  /// [cryptoKeyName] The resource name of the KMS CryptoKey to use for unwrapping.
  /// [wrappedKey] The wrapped data crypto key.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped({
    required this.cryptoKeyName,
    required this.wrappedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyName': cryptoKeyName,
      'wrappedKey': wrappedKey,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationPrimitiveTransformationCryptoHashConfigCryptoKeyKmsWrapped(
      cryptoKeyName: map['cryptoKeyName'] as String,
      wrappedKey: map['wrappedKey'] as String,
    );
  }
}
