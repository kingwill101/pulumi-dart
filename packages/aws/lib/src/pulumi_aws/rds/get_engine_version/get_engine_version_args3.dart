// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_engine_version_filter/get_engine_version_filter.dart';

/// Arguments for getEngineVersion.
class GetEngineVersionArgs3 {
  /// Whether the engine version must be an AWS-defined default version. Some engines have multiple default versions, such as for each major version. Using `default_only` may help avoid `multiple RDS engine versions` errors. See also `latest`.
  final Input<bool>? defaultOnly;

  /// Database engine. Engine values include `aurora`, `aurora-mysql`, `aurora-postgresql`, `docdb`, `mariadb`, `mysql`, `neptune`, `oracle-ee`, `oracle-se`, `oracle-se1`, `oracle-se2`, `postgres`, `sqlserver-ee`, `sqlserver-ex`, `sqlserver-se`, and `sqlserver-web`.
  ///
  /// The following arguments are optional:
  final Input<String> engine;

  /// One or more name/value pairs to use in filtering versions. There are several valid keys; for a full reference, check out [describe-db-engine-versions in the AWS CLI reference](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/rds/describe-db-engine-versions.html).
  final Input<List<GetEngineVersionFilter>>? filters;

  /// Whether the engine version must have one or more major upgrade targets. Not including `has_major_target` or setting it to `false` doesn't imply that there's no corresponding major upgrade target for the engine version.
  final Input<bool>? hasMajorTarget;

  /// Whether the engine version must have one or more minor upgrade targets. Not including `has_minor_target` or setting it to `false` doesn't imply that there's no corresponding minor upgrade target for the engine version.
  final Input<bool>? hasMinorTarget;

  /// Whether the engine version `status` can either be `deprecated` or `available`. When not set or set to `false`, the engine version `status` will always be `available`.
  final Input<bool>? includeAll;

  /// Whether the engine version is the most recent version matching the other criteria. This is different from `default_only` in important ways: "default" relies on AWS-defined defaults, the latest version isn't always the default, and AWS might have multiple default versions for an engine. As a result, `default_only` might not prevent errors from `multiple RDS engine versions`, while `latest` will. (`latest` can be used with `default_only`.) **Note:** The data source uses a best-effort approach at selecting the latest version. Due to the complexity of version identifiers across engines and incomplete version date information provided by AWS, using `latest` may not always result in the engine version being the actual latest version.
  final Input<bool>? latest;

  /// Name of a specific database parameter group family. Examples of parameter group families are `mysql8.0`, `mariadb10.4`, and `postgres12`.
  final Input<String>? parameterGroupFamily;

  /// Ordered list of preferred major version upgrade targets. The engine version will be the first match in the list unless the `latest` parameter is set to `true`. The engine version will be the default version if you don't include any criteria, such as `preferred_major_targets`.
  final Input<List<String>>? preferredMajorTargets;

  /// Ordered list of preferred version upgrade targets. The engine version will be the first match in this list unless the `latest` parameter is set to `true`. The engine version will be the default version if you don't include any criteria, such as `preferred_upgrade_targets`.
  final Input<List<String>>? preferredUpgradeTargets;

  /// Ordered list of preferred versions. The engine version will be the first match in this list unless the `latest` parameter is set to `true`. The engine version will be the default version if you don't include any criteria, such as `preferred_versions`.
  final Input<List<String>>? preferredVersions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Engine version. For example, `5.7.22`, `10.1.34`, or `12.3`. `version` can be a partial version identifier which can result in `multiple RDS engine versions` errors unless the `latest` parameter is set to `true`. The engine version will be the default version if you don't include any criteria, such as `version`. **NOTE:** In a future Terraform AWS provider version, `version` will only contain the version information you configure and not the complete version information that the data source gets from AWS. Instead, that version information will be available in the `version_actual` attribute.
  final Input<String>? version;

  GetEngineVersionArgs3({
    this.defaultOnly,
    required this.engine,
    this.filters,
    this.hasMajorTarget,
    this.hasMinorTarget,
    this.includeAll,
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
    map['engine'] = engine;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetEngineVersionFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetEngineVersionFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final hasMajorTargetValue = hasMajorTarget;
    if (hasMajorTargetValue != null) {
      map['hasMajorTarget'] = hasMajorTargetValue;
    }
    final hasMinorTargetValue = hasMinorTarget;
    if (hasMinorTargetValue != null) {
      map['hasMinorTarget'] = hasMinorTargetValue;
    }
    final includeAllValue = includeAll;
    if (includeAllValue != null) {
      map['includeAll'] = includeAllValue;
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

  factory GetEngineVersionArgs3.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionArgs3(
      defaultOnly: Input.asOptionalInput<bool>(map['defaultOnly']),
      engine: Input.asInput<String>(map['engine']),
      filters:
          Input.asOptionalInput<List<GetEngineVersionFilter>>(map['filters']),
      hasMajorTarget: Input.asOptionalInput<bool>(map['hasMajorTarget']),
      hasMinorTarget: Input.asOptionalInput<bool>(map['hasMinorTarget']),
      includeAll: Input.asOptionalInput<bool>(map['includeAll']),
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
