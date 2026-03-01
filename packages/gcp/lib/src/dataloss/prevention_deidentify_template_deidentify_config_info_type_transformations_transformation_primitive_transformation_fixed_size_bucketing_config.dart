// ignore_for_file: unused_element, unnecessary_cast

import 'prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_fixed_size_bucketing_config_lower_bound.dart';
import 'prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_fixed_size_bucketing_config_upper_bound.dart';

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfig {
  /// Size of each bucket (except for minimum and maximum buckets).
  /// So if lower_bound = 10, upper_bound = 89, and bucketSize = 10, then the following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50, 50-60, 60-70, 70-80, 80-89, 89+.
  /// Precision up to 2 decimals works.
  final double bucketSize;

  /// Lower bound value of buckets.
  /// All values less than lower_bound are grouped together into a single bucket; for example if lower_bound = 10, then all values less than 10 are replaced with the value "-10".
  /// The `lower_bound` block must only contain one argument. See the `fixed_size_bucketing_config` block description for more information about choosing a data type.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound
  lowerBound;

  /// Upper bound value of buckets.
  /// All values greater than upper_bound are grouped together into a single bucket; for example if upper_bound = 89, then all values greater than 89 are replaced with the value "89+".
  /// The `upper_bound` block must only contain one argument. See the `fixed_size_bucketing_config` block description for more information about choosing a data type.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound
  upperBound;

  /// Creates a new [PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfig].
  /// [bucketSize] Size of each bucket (except for minimum and maximum buckets).
  /// [lowerBound] Lower bound value of buckets.
  /// [upperBound] Upper bound value of buckets.
  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfig({
    required this.bucketSize,
    required this.lowerBound,
    required this.upperBound,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketSize': bucketSize,
      'lowerBound': lowerBound.toMap(),
      'upperBound': upperBound.toMap(),
    };
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfig(
      bucketSize: map['bucketSize'] as double,
      lowerBound:
          PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound.fromMap(
            (map['lowerBound'] as Map).cast<String, dynamic>(),
          ),
      upperBound:
          PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound.fromMap(
            (map['upperBound'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
