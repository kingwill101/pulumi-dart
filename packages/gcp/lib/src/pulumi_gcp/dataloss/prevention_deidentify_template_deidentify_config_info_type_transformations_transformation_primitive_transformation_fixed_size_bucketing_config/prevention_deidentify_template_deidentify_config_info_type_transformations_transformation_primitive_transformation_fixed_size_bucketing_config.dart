// ignore_for_file: unused_element, unnecessary_cast

import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_fixed_size_bucketing_config_lower_bound/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_fixed_size_bucketing_config_lower_bound.dart';
import '../prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_fixed_size_bucketing_config_upper_bound/prevention_deidentify_template_deidentify_config_info_type_transformations_transformation_primitive_transformation_fixed_size_bucketing_config_upper_bound.dart';

class PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfig {
  /// Size of each bucket (except for minimum and maximum buckets).
  /// So if<span pulumi-lang-nodejs=" lowerBound " pulumi-lang-dotnet=" LowerBound " pulumi-lang-go=" lowerBound " pulumi-lang-python=" lower_bound " pulumi-lang-yaml=" lowerBound " pulumi-lang-java=" lowerBound "> lower_bound </span>= 10,<span pulumi-lang-nodejs=" upperBound " pulumi-lang-dotnet=" UpperBound " pulumi-lang-go=" upperBound " pulumi-lang-python=" upper_bound " pulumi-lang-yaml=" upperBound " pulumi-lang-java=" upperBound "> upper_bound </span>= 89, and bucketSize = 10, then the following buckets would be used: -10, 10-20, 20-30, 30-40, 40-50, 50-60, 60-70, 70-80, 80-89, 89+.
  /// Precision up to 2 decimals works.
  final double bucketSize;

  /// Lower bound value of buckets.
  /// All values less than<span pulumi-lang-nodejs=" lowerBound " pulumi-lang-dotnet=" LowerBound " pulumi-lang-go=" lowerBound " pulumi-lang-python=" lower_bound " pulumi-lang-yaml=" lowerBound " pulumi-lang-java=" lowerBound "> lower_bound </span>are grouped together into a single bucket; for example if<span pulumi-lang-nodejs=" lowerBound " pulumi-lang-dotnet=" LowerBound " pulumi-lang-go=" lowerBound " pulumi-lang-python=" lower_bound " pulumi-lang-yaml=" lowerBound " pulumi-lang-java=" lowerBound "> lower_bound </span>= 10, then all values less than 10 are replaced with the value "-10".
  /// The <span pulumi-lang-nodejs="`lowerBound`" pulumi-lang-dotnet="`LowerBound`" pulumi-lang-go="`lowerBound`" pulumi-lang-python="`lower_bound`" pulumi-lang-yaml="`lowerBound`" pulumi-lang-java="`lowerBound`">`lower_bound`</span> block must only contain one argument. See the <span pulumi-lang-nodejs="`fixedSizeBucketingConfig`" pulumi-lang-dotnet="`FixedSizeBucketingConfig`" pulumi-lang-go="`fixedSizeBucketingConfig`" pulumi-lang-python="`fixed_size_bucketing_config`" pulumi-lang-yaml="`fixedSizeBucketingConfig`" pulumi-lang-java="`fixedSizeBucketingConfig`">`fixed_size_bucketing_config`</span> block description for more information about choosing a data type.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound
      lowerBound;

  /// Upper bound value of buckets.
  /// All values greater than<span pulumi-lang-nodejs=" upperBound " pulumi-lang-dotnet=" UpperBound " pulumi-lang-go=" upperBound " pulumi-lang-python=" upper_bound " pulumi-lang-yaml=" upperBound " pulumi-lang-java=" upperBound "> upper_bound </span>are grouped together into a single bucket; for example if<span pulumi-lang-nodejs=" upperBound " pulumi-lang-dotnet=" UpperBound " pulumi-lang-go=" upperBound " pulumi-lang-python=" upper_bound " pulumi-lang-yaml=" upperBound " pulumi-lang-java=" upperBound "> upper_bound </span>= 89, then all values greater than 89 are replaced with the value "89+".
  /// The <span pulumi-lang-nodejs="`upperBound`" pulumi-lang-dotnet="`UpperBound`" pulumi-lang-go="`upperBound`" pulumi-lang-python="`upper_bound`" pulumi-lang-yaml="`upperBound`" pulumi-lang-java="`upperBound`">`upper_bound`</span> block must only contain one argument. See the <span pulumi-lang-nodejs="`fixedSizeBucketingConfig`" pulumi-lang-dotnet="`FixedSizeBucketingConfig`" pulumi-lang-go="`fixedSizeBucketingConfig`" pulumi-lang-python="`fixed_size_bucketing_config`" pulumi-lang-yaml="`fixedSizeBucketingConfig`" pulumi-lang-java="`fixedSizeBucketingConfig`">`fixed_size_bucketing_config`</span> block description for more information about choosing a data type.
  /// Structure is documented below.
  final PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound
      upperBound;

  PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfig({
    required this.bucketSize,
    required this.lowerBound,
    required this.upperBound,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketSize'] = bucketSize;
    map['lowerBound'] = lowerBound.toMap();
    map['upperBound'] = upperBound.toMap();
    return map;
  }

  factory PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfig.fromMap(
      Map<String, dynamic> map) {
    return PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfig(
      bucketSize: map['bucketSize'] as double,
      lowerBound:
          PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigLowerBound
              .fromMap((map['lowerBound'] as Map).cast<String, dynamic>()),
      upperBound:
          PreventionDeidentifyTemplateDeidentifyConfigInfoTypeTransformationsTransformationPrimitiveTransformationFixedSizeBucketingConfigUpperBound
              .fromMap((map['upperBound'] as Map).cast<String, dynamic>()),
    );
  }
}
