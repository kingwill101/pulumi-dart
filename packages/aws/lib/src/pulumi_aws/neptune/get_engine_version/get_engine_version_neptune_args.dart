// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getEngineVersion.
class GetEngineVersionNeptuneArgs {
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

  GetEngineVersionNeptuneArgs({
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
    final map = <String, dynamic>{};
    final defaultOnlyValue = defaultOnly;
    if (defaultOnlyValue != null) {
      map['defaultOnly'] = defaultOnlyValue;
    }
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final hasMajorTargetValue = hasMajorTarget;
    if (hasMajorTargetValue != null) {
      map['hasMajorTarget'] = hasMajorTargetValue;
    }
    final hasMinorTargetValue = hasMinorTarget;
    if (hasMinorTargetValue != null) {
      map['hasMinorTarget'] = hasMinorTargetValue;
    }
    final latestValue = latest;
    if (latestValue != null) {
      map['latest'] = latestValue;
    }
    final parameterGroupFamilyValue = parameterGroupFamily;
    if (parameterGroupFamilyValue != null) {
      map['parameterGroupFamily'] = parameterGroupFamilyValue;
    }
    final preferredMajorTargetsValue = preferredMajorTargets;
    if (preferredMajorTargetsValue != null) {
      map['preferredMajorTargets'] = preferredMajorTargetsValue;
    }
    final preferredUpgradeTargetsValue = preferredUpgradeTargets;
    if (preferredUpgradeTargetsValue != null) {
      map['preferredUpgradeTargets'] = preferredUpgradeTargetsValue;
    }
    final preferredVersionsValue = preferredVersions;
    if (preferredVersionsValue != null) {
      map['preferredVersions'] = preferredVersionsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    return map;
  }

  factory GetEngineVersionNeptuneArgs.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionNeptuneArgs(
      defaultOnly: pulumi.Input.asOptionalInput<bool>(map['defaultOnly']),
      engine: pulumi.Input.asOptionalInput<String>(map['engine']),
      hasMajorTarget: pulumi.Input.asOptionalInput<bool>(map['hasMajorTarget']),
      hasMinorTarget: pulumi.Input.asOptionalInput<bool>(map['hasMinorTarget']),
      latest: pulumi.Input.asOptionalInput<bool>(map['latest']),
      parameterGroupFamily:
          pulumi.Input.asOptionalInput<String>(map['parameterGroupFamily']),
      preferredMajorTargets: pulumi.Input.asOptionalInput<List<String>>(
          map['preferredMajorTargets']),
      preferredUpgradeTargets: pulumi.Input.asOptionalInput<List<String>>(
          map['preferredUpgradeTargets']),
      preferredVersions:
          pulumi.Input.asOptionalInput<List<String>>(map['preferredVersions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
    );
  }
}
