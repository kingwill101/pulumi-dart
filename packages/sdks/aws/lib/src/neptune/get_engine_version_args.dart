// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_neptune_get_engine_version_get_engine_version_args_doc}
/// Arguments for getEngineVersion.
/// {@endtemplate}
/// {@macro pulumi_neptune_get_engine_version_get_engine_version_args_doc}
class GetEngineVersionArgs {
  /// Whether to return only default engine versions that match all other criteria. AWS may define multiple default versions for a given engine, so using `default_only` alone does not guarantee that only one version will be returned. To ensure a single version is selected, consider combining this with `latest`. Note that default versions are defined by AWS and may not reflect the most recent engine version available.
  final pulumi.Input<bool>? defaultOnly;
  /// DB engine. Must be `neptune`. Default is `neptune`.
  final pulumi.Input<String>? engine;
  /// Whether to filter for engine versions that have a major target.
  final pulumi.Input<bool>? hasMajorTarget;
  /// Whether to filter for engine versions that have a minor target.
  final pulumi.Input<bool>? hasMinorTarget;
  /// Whether to return only the latest engine version that matches all other criteria. This differs from `default_only`: AWS may define multiple defaults, and the latest version is not always marked as the default. As a result, `default_only` may still return multiple versions, while `latest` selects a single version. The two options can be used together. **Note:** This argument uses a best-effort approach. Because AWS does not consistently provide version dates or standardized identifiers, the result may not always reflect the true latest version.
  final pulumi.Input<bool>? latest;
  /// Name of a specific DB parameter group family. An example parameter group family is `neptune1.4`. For some versions, if this is provided, AWS returns no results.
  final pulumi.Input<String>? parameterGroupFamily;
  /// Ordered list of preferred major engine versions.
  final pulumi.Input<List<String>>? preferredMajorTargets;
  /// Ordered list of preferred upgrade engine versions.
  final pulumi.Input<List<String>>? preferredUpgradeTargets;
  /// Ordered list of preferred engine versions. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. If both the `version` and `preferred_versions` arguments are not configured, the data source will return the default version for the engine.
  final pulumi.Input<List<String>>? preferredVersions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Version of the DB engine. For example, `1.0.1.0`, `1.0.2.2`, and `1.0.3.0`. If both the `version` and `preferred_versions` arguments are not configured, the data source will return the default version for the engine.
  final pulumi.Input<String>? version;

  /// Creates a new [GetEngineVersionArgs].
  /// [defaultOnly] Whether to return only default engine versions that match all other criteria. AWS may define multiple default versions for a given engine, so using `default_only` alone does not guarantee that only one version will be returned. To ensure a single version is selected, consider combining this with `latest`. Note that default versions are defined by AWS and may not reflect the most recent engine version available.
  /// [engine] DB engine. Must be `neptune`. Default is `neptune`.
  /// [hasMajorTarget] Whether to filter for engine versions that have a major target.
  /// [hasMinorTarget] Whether to filter for engine versions that have a minor target.
  /// [latest] Whether to return only the latest engine version that matches all other criteria. This differs from `default_only`: AWS may define multiple defaults, and the latest version is not always marked as the default. As a result, `default_only` may still return multiple versions, while `latest` selects a single version. The two options can be used together. **Note:** This argument uses a best-effort approach. Because AWS does not consistently provide version dates or standardized identifiers, the result may not always reflect the true latest version.
  /// [parameterGroupFamily] Name of a specific DB parameter group family. An example parameter group family is `neptune1.4`. For some versions, if this is provided, AWS returns no results.
  /// [preferredMajorTargets] Ordered list of preferred major engine versions.
  /// [preferredUpgradeTargets] Ordered list of preferred upgrade engine versions.
  /// [preferredVersions] Ordered list of preferred engine versions. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. If both the `version` and `preferred_versions` arguments are not configured, the data source will return the default version for the engine.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [version] Version of the DB engine. For example, `1.0.1.0`, `1.0.2.2`, and `1.0.3.0`. If both the `version` and `preferred_versions` arguments are not configured, the data source will return the default version for the engine.
  GetEngineVersionArgs({
    pulumi.Output<bool>? defaultOnly,
    pulumi.Output<String>? engine,
    pulumi.Output<bool>? hasMajorTarget,
    pulumi.Output<bool>? hasMinorTarget,
    pulumi.Output<bool>? latest,
    pulumi.Output<String>? parameterGroupFamily,
    pulumi.Output<List<String>>? preferredMajorTargets,
    pulumi.Output<List<String>>? preferredUpgradeTargets,
    pulumi.Output<List<String>>? preferredVersions,
    pulumi.Output<String>? region,
    pulumi.Output<String>? version,
  }) :
      defaultOnly = pulumi.Input.asOptionalInput<bool>(defaultOnly),
      engine = pulumi.Input.asOptionalInput<String>(engine),
      hasMajorTarget = pulumi.Input.asOptionalInput<bool>(hasMajorTarget),
      hasMinorTarget = pulumi.Input.asOptionalInput<bool>(hasMinorTarget),
      latest = pulumi.Input.asOptionalInput<bool>(latest),
      parameterGroupFamily = pulumi.Input.asOptionalInput<String>(parameterGroupFamily),
      preferredMajorTargets = pulumi.Input.asOptionalInput<List<String>>(preferredMajorTargets),
      preferredUpgradeTargets = pulumi.Input.asOptionalInput<List<String>>(preferredUpgradeTargets),
      preferredVersions = pulumi.Input.asOptionalInput<List<String>>(preferredVersions),
      region = pulumi.Input.asOptionalInput<String>(region),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultOnly': ?defaultOnly,
      'engine': ?engine,
      'hasMajorTarget': ?hasMajorTarget,
      'hasMinorTarget': ?hasMinorTarget,
      'latest': ?latest,
      'parameterGroupFamily': ?parameterGroupFamily,
      'preferredMajorTargets': ?preferredMajorTargets,
      'preferredUpgradeTargets': ?preferredUpgradeTargets,
      'preferredVersions': ?preferredVersions,
      'region': ?region,
      'version': ?version,
    };
  }

  factory GetEngineVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionArgs(
      defaultOnly: map['defaultOnly'] == null ? null : pulumi.Output.create<bool>(map['defaultOnly'] as bool),
      engine: map['engine'] == null ? null : pulumi.Output.create<String>(map['engine'] as String),
      hasMajorTarget: map['hasMajorTarget'] == null ? null : pulumi.Output.create<bool>(map['hasMajorTarget'] as bool),
      hasMinorTarget: map['hasMinorTarget'] == null ? null : pulumi.Output.create<bool>(map['hasMinorTarget'] as bool),
      latest: map['latest'] == null ? null : pulumi.Output.create<bool>(map['latest'] as bool),
      parameterGroupFamily: map['parameterGroupFamily'] == null ? null : pulumi.Output.create<String>(map['parameterGroupFamily'] as String),
      preferredMajorTargets: map['preferredMajorTargets'] == null ? null : pulumi.Output.create<List<String>>((map['preferredMajorTargets'] as List).cast<String>()),
      preferredUpgradeTargets: map['preferredUpgradeTargets'] == null ? null : pulumi.Output.create<List<String>>((map['preferredUpgradeTargets'] as List).cast<String>()),
      preferredVersions: map['preferredVersions'] == null ? null : pulumi.Output.create<List<String>>((map['preferredVersions'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

