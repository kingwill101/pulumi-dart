// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_max.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_min.dart';
import 'prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_replacement_value.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket {
  /// Upper bound of the range, exclusive; type must match min.
  /// The `max` block must only contain one argument. See the `bucketing_config` block description for more information about choosing a data type.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMax?
  max;

  /// Lower bound of the range, inclusive. Type should be the same as max if used.
  /// The `min` block must only contain one argument. See the `bucketing_config` block description for more information about choosing a data type.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMin?
  min;

  /// Replacement value for this bucket.
  /// The `replacement_value` block must only contain one argument.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketReplacementValue
  replacementValue;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket].
  /// [max] Upper bound of the range, exclusive; type must match min.
  /// [min] Lower bound of the range, inclusive. Type should be the same as max if used.
  /// [replacementValue] Replacement value for this bucket.
  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket({
    this.max,
    this.min,
    required this.replacementValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max == null ? null : max!.toMap(),
      'min': ?min == null ? null : min!.toMap(),
      'replacementValue': replacementValue.toMap(),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket(
      max: map['max'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMax.fromMap(
              (map['max'] as Map).cast<String, dynamic>(),
            ),
      min: map['min'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMin.fromMap(
              (map['min'] as Map).cast<String, dynamic>(),
            ),
      replacementValue:
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketReplacementValue.fromMap(
            (map['replacementValue'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
