// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_max/prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_max.dart';
import '../prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_min/prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_min.dart';
import '../prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_replacement_value/prevention_deidentify_template_deidentify_config_record_transformations_field_transformation_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket_replacement_value.dart';

class PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket {
  /// Upper bound of the range, exclusive; type must match min.
  /// The <span pulumi-lang-nodejs="`max`" pulumi-lang-dotnet="`Max`" pulumi-lang-go="`max`" pulumi-lang-python="`max`" pulumi-lang-yaml="`max`" pulumi-lang-java="`max`">`max`</span> block must only contain one argument. See the <span pulumi-lang-nodejs="`bucketingConfig`" pulumi-lang-dotnet="`BucketingConfig`" pulumi-lang-go="`bucketingConfig`" pulumi-lang-python="`bucketing_config`" pulumi-lang-yaml="`bucketingConfig`" pulumi-lang-java="`bucketingConfig`">`bucketing_config`</span> block description for more information about choosing a data type.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMax?
      max;

  /// Lower bound of the range, inclusive. Type should be the same as max if used.
  /// The <span pulumi-lang-nodejs="`min`" pulumi-lang-dotnet="`Min`" pulumi-lang-go="`min`" pulumi-lang-python="`min`" pulumi-lang-yaml="`min`" pulumi-lang-java="`min`">`min`</span> block must only contain one argument. See the <span pulumi-lang-nodejs="`bucketingConfig`" pulumi-lang-dotnet="`BucketingConfig`" pulumi-lang-go="`bucketingConfig`" pulumi-lang-python="`bucketing_config`" pulumi-lang-yaml="`bucketingConfig`" pulumi-lang-java="`bucketingConfig`">`bucketing_config`</span> block description for more information about choosing a data type.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMin?
      min;

  /// Replacement value for this bucket.
  /// The <span pulumi-lang-nodejs="`replacementValue`" pulumi-lang-dotnet="`ReplacementValue`" pulumi-lang-go="`replacementValue`" pulumi-lang-python="`replacement_value`" pulumi-lang-yaml="`replacementValue`" pulumi-lang-java="`replacementValue`">`replacement_value`</span> block must only contain one argument.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketReplacementValue
      replacementValue;

  PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket({
    this.max,
    this.min,
    required this.replacementValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxValue = max;
    if (maxValue != null) {
      map['max'] = maxValue.toMap();
    }
    final minValue = min;
    if (minValue != null) {
      map['min'] = minValue.toMap();
    }
    map['replacementValue'] = replacementValue.toMap();
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket(
      max: map['max'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMax
              .fromMap((map['max'] as Map).cast<String, dynamic>()),
      min: map['min'] == null
          ? null
          : PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketMin
              .fromMap((map['min'] as Map).cast<String, dynamic>()),
      replacementValue:
          PreventionDeidentifyTemplateDeidentifyConfigRecordTransformationsFieldTransformationInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucketReplacementValue
              .fromMap(
                  (map['replacementValue'] as Map).cast<String, dynamic>()),
    );
  }
}
