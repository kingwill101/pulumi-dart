// ignore_for_file: unused_element, unnecessary_cast

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigContext {
  /// Name describing the field.
  final String? name;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigContext].
  /// [name] Name describing the field.
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigContext({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigContext.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationCryptoReplaceFfxFpeConfigContext(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
