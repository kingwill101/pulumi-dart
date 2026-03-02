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
    this.arn,
    this.createdTime,
    this.defaultVariation,
    this.description,
    this.entityOverrides,
    this.evaluationRules,
    this.evaluationStrategy,
    this.lastUpdatedTime,
    this.name,
    this.project,
    this.region,
    this.status,
    this.tags,
    this.tagsAll,
    this.valueType,
    this.variations,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      createdTime: map['createdTime'] == null ? null : ((map['createdTime'] as String).input()).input(),
      defaultVariation: map['defaultVariation'] == null ? null : ((map['defaultVariation'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      entityOverrides: map['entityOverrides'] == null ? null : (((map['entityOverrides'] as Map).cast<String, String>()).input()).input(),
      evaluationRules: map['evaluationRules'] == null ? null : ((pulumi.Input.decodeList<FeatureEvaluationRule>(map['evaluationRules']!, (value) => FeatureEvaluationRule.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      evaluationStrategy: map['evaluationStrategy'] == null ? null : ((map['evaluationStrategy'] as String).input()).input(),
      lastUpdatedTime: map['lastUpdatedTime'] == null ? null : ((map['lastUpdatedTime'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      project: map['project'] == null ? null : ((map['project'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      valueType: map['valueType'] == null ? null : ((map['valueType'] as String).input()).input(),
      variations: map['variations'] == null ? null : ((pulumi.Input.decodeList<FeatureVariation>(map['variations']!, (value) => FeatureVariation.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

