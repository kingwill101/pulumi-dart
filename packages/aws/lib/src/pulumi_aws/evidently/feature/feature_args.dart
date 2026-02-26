// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../feature_variation/feature_variation.dart';

/// The set of arguments for Feature.
class FeatureArgs {
  /// The name of the variation to use as the default variation. The default variation is served to users who are not allocated to any ongoing launches or experiments of this feature. This variation must also be listed in the <span pulumi-lang-nodejs="`variations`" pulumi-lang-dotnet="`Variations`" pulumi-lang-go="`variations`" pulumi-lang-python="`variations`" pulumi-lang-yaml="`variations`" pulumi-lang-java="`variations`">`variations`</span> structure. If you omit <span pulumi-lang-nodejs="`defaultVariation`" pulumi-lang-dotnet="`DefaultVariation`" pulumi-lang-go="`defaultVariation`" pulumi-lang-python="`default_variation`" pulumi-lang-yaml="`defaultVariation`" pulumi-lang-java="`defaultVariation`">`default_variation`</span>, the first variation listed in the <span pulumi-lang-nodejs="`variations`" pulumi-lang-dotnet="`Variations`" pulumi-lang-go="`variations`" pulumi-lang-python="`variations`" pulumi-lang-yaml="`variations`" pulumi-lang-java="`variations`">`variations`</span> structure is used as the default variation.
  final Input<String>? defaultVariation;

  /// Specifies the description of the feature.
  final Input<String>? description;

  /// Specify users that should always be served a specific variation of a feature. Each user is specified by a key-value pair . For each key, specify a user by entering their user ID, account ID, or some other identifier. For the value, specify the name of the variation that they are to be served.
  final Input<Map<String, String>>? entityOverrides;

  /// Specify `ALL_RULES` to activate the traffic allocation specified by any ongoing launches or experiments. Specify `DEFAULT_VARIATION` to serve the default variation to all users instead.
  final Input<String>? evaluationStrategy;

  /// The name for the new feature. Minimum length of <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>. Maximum length of <span pulumi-lang-nodejs="`127`" pulumi-lang-dotnet="`127`" pulumi-lang-go="`127`" pulumi-lang-python="`127`" pulumi-lang-yaml="`127`" pulumi-lang-java="`127`">`127`</span>.
  final Input<String>? name;

  /// The name or ARN of the project that is to contain the new feature.
  final Input<String> project;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Tags to apply to the feature. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// One or more blocks that contain the configuration of the feature's different variations. Detailed below
  final Input<List<FeatureVariation>> variations;

  FeatureArgs({
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
    final map = <String, dynamic>{};
    final defaultVariationValue = defaultVariation;
    if (defaultVariationValue != null) {
      map['defaultVariation'] = defaultVariationValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final entityOverridesValue = entityOverrides;
    if (entityOverridesValue != null) {
      map['entityOverrides'] = entityOverridesValue;
    }
    final evaluationStrategyValue = evaluationStrategy;
    if (evaluationStrategyValue != null) {
      map['evaluationStrategy'] = evaluationStrategyValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['project'] = project;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['variations'] =
        Input.mapInputValue<List<FeatureVariation>, List<Map<String, dynamic>>>(
            variations,
            (value) => Input.encodeList<FeatureVariation, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    return map;
  }

  factory FeatureArgs.fromMap(Map<String, dynamic> map) {
    return FeatureArgs(
      defaultVariation: Input.asOptionalInput<String>(map['defaultVariation']),
      description: Input.asOptionalInput<String>(map['description']),
      entityOverrides:
          Input.asOptionalInput<Map<String, String>>(map['entityOverrides']),
      evaluationStrategy:
          Input.asOptionalInput<String>(map['evaluationStrategy']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      variations: Input.asInput<List<FeatureVariation>>(map['variations']),
    );
  }
}
