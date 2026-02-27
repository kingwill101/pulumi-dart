import 'package:pulumi/pulumi.dart';
import '../feature_evaluation_rule/feature_evaluation_rule.dart';
import '../feature_variation/feature_variation.dart';
import 'feature_args.dart';

/// Provides a CloudWatch Evidently Feature resource.
///
/// > **Warning:** This resource is deprecated. Use [AWS AppConfig feature flags](https://aws.amazon.com/blogs/mt/using-aws-appconfig-feature-flags/) instead.
///
/// ## Example Usage
///
/// ### Basic
///
///
///
/// ### With default variation
///
///
///
/// ### With entity overrides
///
///
///
/// ### With evaluation strategy
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Evidently Feature using the feature `name` and `name` or `arn` of the hosting CloudWatch Evidently Project separated by a `:`. For example:
///
/// ```sh
/// $ pulumi import aws:evidently/feature:Feature example exampleFeatureName:arn:aws:evidently:us-east-1:123456789012:project/example
/// ```
class Feature extends CustomResource {
  /// The ARN of the feature.
  late final Output<String> arn;

  /// The date and time that the feature is created.
  late final Output<String> createdTime;

  /// The name of the variation to use as the default variation. The default variation is served to users who are not allocated to any ongoing launches or experiments of this feature. This variation must also be listed in the `variations` structure. If you omit `default_variation`, the first variation listed in the `variations` structure is used as the default variation.
  late final Output<String> defaultVariation;

  /// Specifies the description of the feature.
  late final Output<String?> description;

  /// Specify users that should always be served a specific variation of a feature. Each user is specified by a key-value pair . For each key, specify a user by entering their user ID, account ID, or some other identifier. For the value, specify the name of the variation that they are to be served.
  late final Output<Map<String, String>?> entityOverrides;

  /// One or more blocks that define the evaluation rules for the feature. Detailed below
  late final Output<List<FeatureEvaluationRule>> evaluationRules;

  /// Specify `ALL_RULES` to activate the traffic allocation specified by any ongoing launches or experiments. Specify `DEFAULT_VARIATION` to serve the default variation to all users instead.
  late final Output<String> evaluationStrategy;

  /// The date and time that the feature was most recently updated.
  late final Output<String> lastUpdatedTime;

  /// The name for the new feature. Minimum length of `1`. Maximum length of `127`.
  late final Output<String> name;

  /// The name or ARN of the project that is to contain the new feature.
  late final Output<String> project;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The current state of the feature. Valid values are `AVAILABLE` and `UPDATING`.
  late final Output<String> status;

  /// Tags to apply to the feature. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Defines the type of value used to define the different feature variations. Valid Values: `STRING`, `LONG`, `DOUBLE`, `BOOLEAN`.
  late final Output<String> valueType;

  /// One or more blocks that contain the configuration of the feature's different variations. Detailed below
  late final Output<List<FeatureVariation>> variations;

  Feature(
    String name, {
    FeatureArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:evidently/feature:Feature',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.createdTime = registerOutput<String>('createdTime');
    this.defaultVariation = registerOutput<String>('defaultVariation');
    this.description = registerOutput<String?>('description');
    this.entityOverrides =
        registerOutput<Map<String, String>?>('entityOverrides');
    this.evaluationRules =
        registerOutput<List<FeatureEvaluationRule>>('evaluationRules');
    this.evaluationStrategy = registerOutput<String>('evaluationStrategy');
    this.lastUpdatedTime = registerOutput<String>('lastUpdatedTime');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.valueType = registerOutput<String>('valueType');
    this.variations = registerOutput<List<FeatureVariation>>('variations');
  }
}
