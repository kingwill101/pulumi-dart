// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_variation.dart';

/// {@template pulumi_evidently_feature_feature_args_doc}
/// The set of arguments for Feature.
/// {@endtemplate}
/// {@macro pulumi_evidently_feature_feature_args_doc}
class FeatureArgs {
  /// The name of the variation to use as the default variation. The default variation is served to users who are not allocated to any ongoing launches or experiments of this feature. This variation must also be listed in the `variations` structure. If you omit `default_variation`, the first variation listed in the `variations` structure is used as the default variation.
  final pulumi.Input<String>? defaultVariation;
  /// Specifies the description of the feature.
  final pulumi.Input<String>? description;
  /// Specify users that should always be served a specific variation of a feature. Each user is specified by a key-value pair . For each key, specify a user by entering their user ID, account ID, or some other identifier. For the value, specify the name of the variation that they are to be served.
  final pulumi.Input<Map<String, String>>? entityOverrides;
  /// Specify `ALL_RULES` to activate the traffic allocation specified by any ongoing launches or experiments. Specify `DEFAULT_VARIATION` to serve the default variation to all users instead.
  final pulumi.Input<String>? evaluationStrategy;
  /// The name for the new feature. Minimum length of `1`. Maximum length of `127`.
  final pulumi.Input<String>? name;
  /// The name or ARN of the project that is to contain the new feature.
  final pulumi.Input<String> project;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Tags to apply to the feature. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// One or more blocks that contain the configuration of the feature's different variations. Detailed below
  final pulumi.Input<List<FeatureVariation>> variations;

  /// Creates a new [FeatureArgs].
  /// [defaultVariation] The name of the variation to use as the default variation. The default variation is served to users who are not allocated to any ongoing launches or experiments of this feature. This variation must also be listed in the `variations` structure. If you omit `default_variation`, the first variation listed in the `variations` structure is used as the default variation.
  /// [description] Specifies the description of the feature.
  /// [entityOverrides] Specify users that should always be served a specific variation of a feature. Each user is specified by a key-value pair . For each key, specify a user by entering their user ID, account ID, or some other identifier. For the value, specify the name of the variation that they are to be served.
  /// [evaluationStrategy] Specify `ALL_RULES` to activate the traffic allocation specified by any ongoing launches or experiments. Specify `DEFAULT_VARIATION` to serve the default variation to all users instead.
  /// [name] The name for the new feature. Minimum length of `1`. Maximum length of `127`.
  /// [project] The name or ARN of the project that is to contain the new feature.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Tags to apply to the feature. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [variations] One or more blocks that contain the configuration of the feature's different variations. Detailed below
  const FeatureArgs({
    this.defaultVariation,
    this.description,
    this.entityOverrides,
    this.evaluationStrategy,
    this.name,
    required this.project,
    this.region,
    this.tags,
    required this.variations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultVariation': ?defaultVariation,
      'description': ?description,
      'entityOverrides': ?entityOverrides,
      'evaluationStrategy': ?evaluationStrategy,
      'name': ?name,
      'project': project,
      'region': ?region,
      'tags': ?tags,
      'variations': pulumi.Input.mapInputValue<List<FeatureVariation>, List<Map<String, dynamic>>>(variations, (value) => pulumi.Input.encodeList<FeatureVariation, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory FeatureArgs.fromMap(Map<String, dynamic> map) {
    return FeatureArgs(
      defaultVariation: (() { final guardedValue = map['defaultVariation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityOverrides: (() { final guardedValue = map['entityOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      evaluationStrategy: (() { final guardedValue = map['evaluationStrategy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: pulumi.Input.fromValue(map['project'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      variations: pulumi.Input.fromValue(pulumi.Input.decodeList<FeatureVariation>(map['variations']!, (value) => FeatureVariation.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

