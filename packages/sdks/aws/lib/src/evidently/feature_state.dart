// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_evaluation_rule.dart';
import 'feature_variation.dart';

/// Input properties used for looking up and filtering Feature resources.
class FeatureState {
  /// The ARN of the feature.
  final pulumi.Input<String>? arn;
  /// The date and time that the feature is created.
  final pulumi.Input<String>? createdTime;
  /// The name of the variation to use as the default variation. The default variation is served to users who are not allocated to any ongoing launches or experiments of this feature. This variation must also be listed in the `variations` structure. If you omit `default_variation`, the first variation listed in the `variations` structure is used as the default variation.
  final pulumi.Input<String>? defaultVariation;
  /// Specifies the description of the feature.
  final pulumi.Input<String>? description;
  /// Specify users that should always be served a specific variation of a feature. Each user is specified by a key-value pair . For each key, specify a user by entering their user ID, account ID, or some other identifier. For the value, specify the name of the variation that they are to be served.
  final pulumi.Input<Map<String, String>>? entityOverrides;
  /// One or more blocks that define the evaluation rules for the feature. Detailed below
  final pulumi.Input<List<FeatureEvaluationRule>>? evaluationRules;
  /// Specify `ALL_RULES` to activate the traffic allocation specified by any ongoing launches or experiments. Specify `DEFAULT_VARIATION` to serve the default variation to all users instead.
  final pulumi.Input<String>? evaluationStrategy;
  /// The date and time that the feature was most recently updated.
  final pulumi.Input<String>? lastUpdatedTime;
  /// The name for the new feature. Minimum length of `1`. Maximum length of `127`.
  final pulumi.Input<String>? name;
  /// The name or ARN of the project that is to contain the new feature.
  final pulumi.Input<String>? project;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The current state of the feature. Valid values are `AVAILABLE` and `UPDATING`.
  final pulumi.Input<String>? status;
  /// Tags to apply to the feature. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Defines the type of value used to define the different feature variations. Valid Values: `STRING`, `LONG`, `DOUBLE`, `BOOLEAN`.
  final pulumi.Input<String>? valueType;
  /// One or more blocks that contain the configuration of the feature's different variations. Detailed below
  final pulumi.Input<List<FeatureVariation>>? variations;

  /// Creates a new [FeatureState].
  /// [arn] The ARN of the feature.
  /// [createdTime] The date and time that the feature is created.
  /// [defaultVariation] The name of the variation to use as the default variation. The default variation is served to users who are not allocated to any ongoing launches or experiments of this feature. This variation must also be listed in the `variations` structure. If you omit `default_variation`, the first variation listed in the `variations` structure is used as the default variation.
  /// [description] Specifies the description of the feature.
  /// [entityOverrides] Specify users that should always be served a specific variation of a feature. Each user is specified by a key-value pair . For each key, specify a user by entering their user ID, account ID, or some other identifier. For the value, specify the name of the variation that they are to be served.
  /// [evaluationRules] One or more blocks that define the evaluation rules for the feature. Detailed below
  /// [evaluationStrategy] Specify `ALL_RULES` to activate the traffic allocation specified by any ongoing launches or experiments. Specify `DEFAULT_VARIATION` to serve the default variation to all users instead.
  /// [lastUpdatedTime] The date and time that the feature was most recently updated.
  /// [name] The name for the new feature. Minimum length of `1`. Maximum length of `127`.
  /// [project] The name or ARN of the project that is to contain the new feature.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] The current state of the feature. Valid values are `AVAILABLE` and `UPDATING`.
  /// [tags] Tags to apply to the feature. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [valueType] Defines the type of value used to define the different feature variations. Valid Values: `STRING`, `LONG`, `DOUBLE`, `BOOLEAN`.
  /// [variations] One or more blocks that contain the configuration of the feature's different variations. Detailed below
  FeatureState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdTime,
    pulumi.Output<String>? defaultVariation,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? entityOverrides,
    pulumi.Output<List<FeatureEvaluationRule>>? evaluationRules,
    pulumi.Output<String>? evaluationStrategy,
    pulumi.Output<String>? lastUpdatedTime,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? valueType,
    pulumi.Output<List<FeatureVariation>>? variations,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      defaultVariation = pulumi.Input.asOptionalInput<String>(defaultVariation),
      description = pulumi.Input.asOptionalInput<String>(description),
      entityOverrides = pulumi.Input.asOptionalInput<Map<String, String>>(entityOverrides),
      evaluationRules = pulumi.Input.asOptionalInput<List<FeatureEvaluationRule>>(evaluationRules),
      evaluationStrategy = pulumi.Input.asOptionalInput<String>(evaluationStrategy),
      lastUpdatedTime = pulumi.Input.asOptionalInput<String>(lastUpdatedTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      valueType = pulumi.Input.asOptionalInput<String>(valueType),
      variations = pulumi.Input.asOptionalInput<List<FeatureVariation>>(variations);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'createdTime': ?createdTime,
      'defaultVariation': ?defaultVariation,
      'description': ?description,
      'entityOverrides': ?entityOverrides,
      'evaluationRules': ?pulumi.Input.mapOptionalInputValue<List<FeatureEvaluationRule>, List<Map<String, dynamic>>>(evaluationRules, (value) => pulumi.Input.encodeList<FeatureEvaluationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'evaluationStrategy': ?evaluationStrategy,
      'lastUpdatedTime': ?lastUpdatedTime,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'valueType': ?valueType,
      'variations': ?pulumi.Input.mapOptionalInputValue<List<FeatureVariation>, List<Map<String, dynamic>>>(variations, (value) => pulumi.Input.encodeList<FeatureVariation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeatureState.fromMap(Map<String, dynamic> map) {
    return FeatureState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      defaultVariation: map['defaultVariation'] == null ? null : pulumi.Output.create<String>(map['defaultVariation'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      entityOverrides: map['entityOverrides'] == null ? null : pulumi.Output.create<Map<String, String>>((map['entityOverrides'] as Map).cast<String, String>()),
      evaluationRules: map['evaluationRules'] == null ? null : pulumi.Output.create<List<FeatureEvaluationRule>>(pulumi.Input.decodeList<FeatureEvaluationRule>(map['evaluationRules'], (value) => FeatureEvaluationRule.fromMap((value as Map).cast<String, dynamic>()))),
      evaluationStrategy: map['evaluationStrategy'] == null ? null : pulumi.Output.create<String>(map['evaluationStrategy'] as String),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      valueType: map['valueType'] == null ? null : pulumi.Output.create<String>(map['valueType'] as String),
      variations: map['variations'] == null ? null : pulumi.Output.create<List<FeatureVariation>>(pulumi.Input.decodeList<FeatureVariation>(map['variations'], (value) => FeatureVariation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

