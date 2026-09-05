// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_neptune_get_engine_version_get_engine_version_args_doc}
/// Arguments for getEngineVersion.
/// {@endtemplate}
/// {@macro pulumi_neptune_get_engine_version_get_engine_version_args_doc}
class GetEngineVersionArgs {
  /// Whether to return only default engine versions that match all other criteria. AWS may define multiple default versions for a given engine, so using `defaultOnly` alone does not guarantee that only one version will be returned. To ensure a single version is selected, consider combining this with `latest`. Note that default versions are defined by AWS and may not reflect the most recent engine version available.
  final pulumi.Input<bool?>? defaultOnly;
  /// DB engine. Must be `neptune`. Default is `neptune`.
  final pulumi.Input<String?>? engine;
  /// Whether to filter for engine versions that have a major target.
  final pulumi.Input<bool?>? hasMajorTarget;
  /// Whether to filter for engine versions that have a minor target.
  final pulumi.Input<bool?>? hasMinorTarget;
  /// Whether to return only the latest engine version that matches all other criteria. This differs from `defaultOnly`: AWS may define multiple defaults, and the latest version is not always marked as the default. As a result, `defaultOnly` may still return multiple versions, while `latest` selects a single version. The two options can be used together. **Note:** This argument uses a best-effort approach. Because AWS does not consistently provide version dates or standardized identifiers, the result may not always reflect the true latest version.
  final pulumi.Input<bool?>? latest;
  /// Name of a specific DB parameter group family. An example parameter group family is `neptune1.4`. For some versions, if this is provided, AWS returns no results.
  final pulumi.Input<String?>? parameterGroupFamily;
  /// Ordered list of preferred major engine versions.
  final pulumi.Input<List<String>?>? preferredMajorTargets;
  /// Ordered list of preferred upgrade engine versions.
  final pulumi.Input<List<String>?>? preferredUpgradeTargets;
  /// Ordered list of preferred engine versions. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. If both the `version` and `preferredVersions` arguments are not configured, the data source will return the default version for the engine.
  final pulumi.Input<List<String>?>? preferredVersions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Version of the DB engine. For example, `1.0.1.0`, `1.0.2.2`, and `1.0.3.0`. If both the `version` and `preferredVersions` arguments are not configured, the data source will return the default version for the engine.
  final pulumi.Input<String?>? version;

  /// Creates a new [GetEngineVersionArgs].
  /// [defaultOnly] Whether to return only default engine versions that match all other criteria. AWS may define multiple default versions for a given engine, so using `defaultOnly` alone does not guarantee that only one version will be returned. To ensure a single version is selected, consider combining this with `latest`. Note that default versions are defined by AWS and may not reflect the most recent engine version available.
  /// [engine] DB engine. Must be `neptune`. Default is `neptune`.
  /// [hasMajorTarget] Whether to filter for engine versions that have a major target.
  /// [hasMinorTarget] Whether to filter for engine versions that have a minor target.
  /// [latest] Whether to return only the latest engine version that matches all other criteria. This differs from `defaultOnly`: AWS may define multiple defaults, and the latest version is not always marked as the default. As a result, `defaultOnly` may still return multiple versions, while `latest` selects a single version. The two options can be used together. **Note:** This argument uses a best-effort approach. Because AWS does not consistently provide version dates or standardized identifiers, the result may not always reflect the true latest version.
  /// [parameterGroupFamily] Name of a specific DB parameter group family. An example parameter group family is `neptune1.4`. For some versions, if this is provided, AWS returns no results.
  /// [preferredMajorTargets] Ordered list of preferred major engine versions.
  /// [preferredUpgradeTargets] Ordered list of preferred upgrade engine versions.
  /// [preferredVersions] Ordered list of preferred engine versions. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. If both the `version` and `preferredVersions` arguments are not configured, the data source will return the default version for the engine.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [version] Version of the DB engine. For example, `1.0.1.0`, `1.0.2.2`, and `1.0.3.0`. If both the `version` and `preferredVersions` arguments are not configured, the data source will return the default version for the engine.
  const GetEngineVersionArgs({
    this.defaultOnly,
    this.engine,
    this.hasMajorTarget,
    this.hasMinorTarget,
    this.latest,
    this.parameterGroupFamily,
    this.preferredMajorTargets,
    this.preferredUpgradeTargets,
    this.preferredVersions,
    this.region,
    this.version,
  });

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
      defaultOnly: (() { final guardedValue = map['defaultOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hasMajorTarget: (() { final guardedValue = map['hasMajorTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hasMinorTarget: (() { final guardedValue = map['hasMinorTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      latest: (() { final guardedValue = map['latest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      parameterGroupFamily: (() { final guardedValue = map['parameterGroupFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredMajorTargets: (() { final guardedValue = map['preferredMajorTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      preferredUpgradeTargets: (() { final guardedValue = map['preferredUpgradeTargets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      preferredVersions: (() { final guardedValue = map['preferredVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
