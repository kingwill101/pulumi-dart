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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultVariation: (() { final guardedValue = map['defaultVariation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityOverrides: (() { final guardedValue = map['entityOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      evaluationRules: (() { final guardedValue = map['evaluationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeatureEvaluationRule>(guardedValue, (value) => FeatureEvaluationRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      evaluationStrategy: (() { final guardedValue = map['evaluationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      valueType: (() { final guardedValue = map['valueType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variations: (() { final guardedValue = map['variations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FeatureVariation>(guardedValue, (value) => FeatureVariation.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

