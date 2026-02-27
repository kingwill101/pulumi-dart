// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_bucketing_config_bucket.dart';

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfig {
  /// Set of buckets. Ranges must be non-overlapping.
  /// Bucket is represented as a range, along with replacement values.
  /// Structure is documented below.
  final List<
          PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket>?
      buckets;

  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfig({
    this.buckets,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketsValue = buckets;
    if (bucketsValue != null) {
      map['buckets'] = pulumi.Input.encodeList<
          PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket,
          Map<String, dynamic>>(bucketsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfig.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfig(
      buckets: map['buckets'] == null
          ? null
          : pulumi.Input.decodeList<
                  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket>(
              map['buckets'],
              (value) =>
                  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationBucketingConfigBucket
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
