// ignore_for_file: unused_element, unnecessary_cast

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped {
  /// A 128/192/256 bit key.
  /// A base64-encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String key;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped].
  /// [key] A 128/192/256 bit key.
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key};
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoDeterministicConfigCryptoKeyUnwrapped(
      key: map['key'] as String,
    );
  }
}
