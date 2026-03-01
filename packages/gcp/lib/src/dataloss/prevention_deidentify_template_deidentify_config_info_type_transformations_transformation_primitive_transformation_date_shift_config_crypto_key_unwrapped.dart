// ignore_for_file: unused_element, unnecessary_cast

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped {
  /// A 128/192/256 bit key.
  /// A base64-encoded string.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String key;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped].
  /// [key] A 128/192/256 bit key.
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped({
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key};
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationDateShiftConfigCryptoKeyUnwrapped(
      key: map['key'] as String,
    );
  }
}
