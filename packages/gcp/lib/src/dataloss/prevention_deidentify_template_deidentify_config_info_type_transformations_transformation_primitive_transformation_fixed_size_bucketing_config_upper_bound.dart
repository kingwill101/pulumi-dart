// ignore_for_file: unused_element, unnecessary_cast

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound {
  /// A float value.
  final double? floatValue;

  /// An integer value (int64 format)
  final String? integerValue;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound].
  /// [floatValue] A float value.
  /// [integerValue] An integer value (int64 format)
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound({
    this.floatValue,
    this.integerValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'floatValue': ?floatValue,
      'integerValue': ?integerValue,
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound(
      floatValue: map['floatValue'] == null
          ? null
          : map['floatValue'] as double,
      integerValue: map['integerValue'] == null
          ? null
          : map['integerValue'] as String,
    );
  }
}
