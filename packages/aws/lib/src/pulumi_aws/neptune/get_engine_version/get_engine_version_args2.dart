// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEngineVersion.
class GetEngineVersionArgs2 {
  /// Whether to return only default engine versions that match all other criteria. AWS may define multiple default versions for a given engine, so using <span pulumi-lang-nodejs="`defaultOnly`" pulumi-lang-dotnet="`DefaultOnly`" pulumi-lang-go="`defaultOnly`" pulumi-lang-python="`default_only`" pulumi-lang-yaml="`defaultOnly`" pulumi-lang-java="`defaultOnly`">`default_only`</span> alone does not guarantee that only one version will be returned. To ensure a single version is selected, consider combining this with <span pulumi-lang-nodejs="`latest`" pulumi-lang-dotnet="`Latest`" pulumi-lang-go="`latest`" pulumi-lang-python="`latest`" pulumi-lang-yaml="`latest`" pulumi-lang-java="`latest`">`latest`</span>. Note that default versions are defined by AWS and may not reflect the most recent engine version available.
  final Input<bool>? defaultOnly;

  /// DB engine. Must be <span pulumi-lang-nodejs="`neptune`" pulumi-lang-dotnet="`Neptune`" pulumi-lang-go="`neptune`" pulumi-lang-python="`neptune`" pulumi-lang-yaml="`neptune`" pulumi-lang-java="`neptune`">`neptune`</span>. Default is <span pulumi-lang-nodejs="`neptune`" pulumi-lang-dotnet="`Neptune`" pulumi-lang-go="`neptune`" pulumi-lang-python="`neptune`" pulumi-lang-yaml="`neptune`" pulumi-lang-java="`neptune`">`neptune`</span>.
  final Input<String>? engine;

  /// Whether to filter for engine versions that have a major target.
  final Input<bool>? hasMajorTarget;

  /// Whether to filter for engine versions that have a minor target.
  final Input<bool>? hasMinorTarget;

  /// Whether to return only the latest engine version that matches all other criteria. This differs from <span pulumi-lang-nodejs="`defaultOnly`" pulumi-lang-dotnet="`DefaultOnly`" pulumi-lang-go="`defaultOnly`" pulumi-lang-python="`default_only`" pulumi-lang-yaml="`defaultOnly`" pulumi-lang-java="`defaultOnly`">`default_only`</span>: AWS may define multiple defaults, and the latest version is not always marked as the default. As a result, <span pulumi-lang-nodejs="`defaultOnly`" pulumi-lang-dotnet="`DefaultOnly`" pulumi-lang-go="`defaultOnly`" pulumi-lang-python="`default_only`" pulumi-lang-yaml="`defaultOnly`" pulumi-lang-java="`defaultOnly`">`default_only`</span> may still return multiple versions, while <span pulumi-lang-nodejs="`latest`" pulumi-lang-dotnet="`Latest`" pulumi-lang-go="`latest`" pulumi-lang-python="`latest`" pulumi-lang-yaml="`latest`" pulumi-lang-java="`latest`">`latest`</span> selects a single version. The two options can be used together. **Note:** This argument uses a best-effort approach. Because AWS does not consistently provide version dates or standardized identifiers, the result may not always reflect the true latest version.
  final Input<bool>? latest;

  /// Name of a specific DB parameter group family. An example parameter group family is `neptune1.4`. For some versions, if this is provided, AWS returns no results.
  final Input<String>? parameterGroupFamily;

  /// Ordered list of preferred major engine versions.
  final Input<List<String>>? preferredMajorTargets;

  /// Ordered list of preferred upgrade engine versions.
  final Input<List<String>>? preferredUpgradeTargets;

  /// Ordered list of preferred engine versions. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. If both the <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span> and <span pulumi-lang-nodejs="`preferredVersions`" pulumi-lang-dotnet="`PreferredVersions`" pulumi-lang-go="`preferredVersions`" pulumi-lang-python="`preferred_versions`" pulumi-lang-yaml="`preferredVersions`" pulumi-lang-java="`preferredVersions`">`preferred_versions`</span> arguments are not configured, the data source will return the default version for the engine.
  final Input<List<String>>? preferredVersions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Version of the DB engine. For example, `1.0.1.0`, `1.0.2.2`, and `1.0.3.0`. If both the <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span> and <span pulumi-lang-nodejs="`preferredVersions`" pulumi-lang-dotnet="`PreferredVersions`" pulumi-lang-go="`preferredVersions`" pulumi-lang-python="`preferred_versions`" pulumi-lang-yaml="`preferredVersions`" pulumi-lang-java="`preferredVersions`">`preferred_versions`</span> arguments are not configured, the data source will return the default version for the engine.
  final Input<String>? version;

  GetEngineVersionArgs2({
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

  factory GetEngineVersionArgs2.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionArgs2(
      defaultOnly: Input.asOptionalInput<bool>(map['defaultOnly']),
      engine: Input.asOptionalInput<String>(map['engine']),
      hasMajorTarget: Input.asOptionalInput<bool>(map['hasMajorTarget']),
      hasMinorTarget: Input.asOptionalInput<bool>(map['hasMinorTarget']),
      latest: Input.asOptionalInput<bool>(map['latest']),
      parameterGroupFamily:
          Input.asOptionalInput<String>(map['parameterGroupFamily']),
      preferredMajorTargets:
          Input.asOptionalInput<List<String>>(map['preferredMajorTargets']),
      preferredUpgradeTargets:
          Input.asOptionalInput<List<String>>(map['preferredUpgradeTargets']),
      preferredVersions:
          Input.asOptionalInput<List<String>>(map['preferredVersions']),
      region: Input.asOptionalInput<String>(map['region']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
