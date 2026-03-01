// ignore_for_file: unused_element, unnecessary_cast

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient {
  /// Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate `TransientCryptoKey` protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated).
  final String name;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient].
  /// [name] Name of the key. This is an arbitrary string used to differentiate different keys. A unique key is generated per name: two separate `TransientCryptoKey` protos share the same generated key if their names are the same. When the data crypto key is generated, this name is not used in any way (repeating the api call will result in a different key being generated).
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigCryptoKeyTransient(
      name: map['name'] as String,
    );
  }
}
