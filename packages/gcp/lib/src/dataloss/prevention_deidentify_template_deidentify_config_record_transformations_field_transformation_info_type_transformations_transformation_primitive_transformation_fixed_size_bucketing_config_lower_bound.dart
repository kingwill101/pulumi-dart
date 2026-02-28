// ignore_for_file: unused_element, unnecessary_cast

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound {
  /// A float value.
  final double? floatValue;

  /// An integer value (int64 format)
  final String? integerValue;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound].
  /// [floatValue] A float value.
  /// [integerValue] An integer value (int64 format)
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound({
    this.floatValue,
    this.integerValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final floatValueValue = floatValue;
    if (floatValueValue != null) {
      map['floatValue'] = floatValueValue;
    }
    final integerValueValue = integerValue;
    if (integerValueValue != null) {
      map['integerValue'] = integerValueValue;
    }
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound(
      floatValue:
          map['floatValue'] == null ? null : map['floatValue'] as double,
      integerValue:
          map['integerValue'] == null ? null : map['integerValue'] as String,
    );
  }
}
