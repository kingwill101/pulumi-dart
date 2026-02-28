// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_engine_version_filter.dart';

/// {@template pulumi_rds_get_engine_version_get_engine_version_args_doc}
/// Arguments for getEngineVersion.
/// {@endtemplate}
/// {@macro pulumi_rds_get_engine_version_get_engine_version_args_doc}
class GetEngineVersionArgs {
  /// Whether the engine version must be an AWS-defined default version. Some engines have multiple default versions, such as for each major version. Using `default_only` may help avoid `multiple RDS engine versions` errors. See also `latest`.
  final pulumi.Input<bool>? defaultOnly;

  /// Database engine. Engine values include `aurora`, `aurora-mysql`, `aurora-postgresql`, `docdb`, `mariadb`, `mysql`, `neptune`, `oracle-ee`, `oracle-se`, `oracle-se1`, `oracle-se2`, `postgres`, `sqlserver-ee`, `sqlserver-ex`, `sqlserver-se`, and `sqlserver-web`.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> engine;

  /// One or more name/value pairs to use in filtering versions. There are several valid keys; for a full reference, check out [describe-db-engine-versions in the AWS CLI reference](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/rds/describe-db-engine-versions.html).
  final pulumi.Input<List<GetEngineVersionFilter>>? filters;

  /// Whether the engine version must have one or more major upgrade targets. Not including `has_major_target` or setting it to `false` doesn't imply that there's no corresponding major upgrade target for the engine version.
  final pulumi.Input<bool>? hasMajorTarget;

  /// Whether the engine version must have one or more minor upgrade targets. Not including `has_minor_target` or setting it to `false` doesn't imply that there's no corresponding minor upgrade target for the engine version.
  final pulumi.Input<bool>? hasMinorTarget;

  /// Whether the engine version `status` can either be `deprecated` or `available`. When not set or set to `false`, the engine version `status` will always be `available`.
  final pulumi.Input<bool>? includeAll;

  /// Whether the engine version is the most recent version matching the other criteria. This is different from `default_only` in important ways: "default" relies on AWS-defined defaults, the latest version isn't always the default, and AWS might have multiple default versions for an engine. As a result, `default_only` might not prevent errors from `multiple RDS engine versions`, while `latest` will. (`latest` can be used with `default_only`.) **Note:** The data source uses a best-effort approach at selecting the latest version. Due to the complexity of version identifiers across engines and incomplete version date information provided by AWS, using `latest` may not always result in the engine version being the actual latest version.
  final pulumi.Input<bool>? latest;

  /// Name of a specific database parameter group family. Examples of parameter group families are `mysql8.0`, `mariadb10.4`, and `postgres12`.
  final pulumi.Input<String>? parameterGroupFamily;

  /// Ordered list of preferred major version upgrade targets. The engine version will be the first match in the list unless the `latest` parameter is set to `true`. The engine version will be the default version if you don't include any criteria, such as `preferred_major_targets`.
  final pulumi.Input<List<String>>? preferredMajorTargets;

  /// Ordered list of preferred version upgrade targets. The engine version will be the first match in this list unless the `latest` parameter is set to `true`. The engine version will be the default version if you don't include any criteria, such as `preferred_upgrade_targets`.
  final pulumi.Input<List<String>>? preferredUpgradeTargets;

  /// Ordered list of preferred versions. The engine version will be the first match in this list unless the `latest` parameter is set to `true`. The engine version will be the default version if you don't include any criteria, such as `preferred_versions`.
  final pulumi.Input<List<String>>? preferredVersions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Engine version. For example, `5.7.22`, `10.1.34`, or `12.3`. `version` can be a partial version identifier which can result in `multiple RDS engine versions` errors unless the `latest` parameter is set to `true`. The engine version will be the default version if you don't include any criteria, such as `version`. **NOTE:** In a future Terraform AWS provider version, `version` will only contain the version information you configure and not the complete version information that the data source gets from AWS. Instead, that version information will be available in the `version_actual` attribute.
  final pulumi.Input<String>? version;

  /// Creates a new [GetEngineVersionArgs].
  /// [defaultOnly] Whether the engine version must be an AWS-defined default version. Some engines have multiple default versions, such as for each major version. Using `default_only` may help avoid `multiple RDS engine versions` errors. See also `latest`.
  /// [engine] Database engine. Engine values include `aurora`, `aurora-mysql`, `aurora-postgresql`, `docdb`, `mariadb`, `mysql`, `neptune`, `oracle-ee`, `oracle-se`, `oracle-se1`, `oracle-se2`, `postgres`, `sqlserver-ee`, `sqlserver-ex`, `sqlserver-se`, and `sqlserver-web`.
  /// [filters] One or more name/value pairs to use in filtering versions. There are several valid keys; for a full reference, check out [describe-db-engine-versions in the AWS CLI reference](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/rds/describe-db-engine-versions.html).
  /// [hasMajorTarget] Whether the engine version must have one or more major upgrade targets. Not including `has_major_target` or setting it to `false` doesn't imply that there's no corresponding major upgrade target for the engine version.
  /// [hasMinorTarget] Whether the engine version must have one or more minor upgrade targets. Not including `has_minor_target` or setting it to `false` doesn't imply that there's no corresponding minor upgrade target for the engine version.
  /// [includeAll] Whether the engine version `status` can either be `deprecated` or `available`. When not set or set to `false`, the engine version `status` will always be `available`.
  /// [latest] Whether the engine version is the most recent version matching the other criteria. This is different from `default_only` in important ways: "default" relies on AWS-defined defaults, the latest version isn't always the default, and AWS might have multiple default versions for an engine. As a result, `default_only` might not prevent errors from `multiple RDS engine versions`, while `latest` will. (`latest` can be used with `default_only`.) **Note:** The data source uses a best-effort approach at selecting the latest version. Due to the complexity of version identifiers across engines and incomplete version date information provided by AWS, using `latest` may not always result in the engine version being the actual latest version.
  /// [parameterGroupFamily] Name of a specific database parameter group family. Examples of parameter group families are `mysql8.0`, `mariadb10.4`, and `postgres12`.
  /// [preferredMajorTargets] Ordered list of preferred major version upgrade targets. The engine version will be the first match in the list unless the `latest` parameter is set to `true`. The engine version will be the default version if you don't include any criteria, such as `preferred_major_targets`.
  /// [preferredUpgradeTargets] Ordered list of preferred version upgrade targets. The engine version will be the first match in this list unless the `latest` parameter is set to `true`. The engine version will be the default version if you don't include any criteria, such as `preferred_upgrade_targets`.
  /// [preferredVersions] Ordered list of preferred versions. The engine version will be the first match in this list unless the `latest` parameter is set to `true`. The engine version will be the default version if you don't include any criteria, such as `preferred_versions`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [version] Engine version. For example, `5.7.22`, `10.1.34`, or `12.3`. `version` can be a partial version identifier which can result in `multiple RDS engine versions` errors unless the `latest` parameter is set to `true`. The engine version will be the default version if you don't include any criteria, such as `version`. **NOTE:** In a future Terraform AWS provider version, `version` will only contain the version information you configure and not the complete version information that the data source gets from AWS. Instead, that version information will be available in the `version_actual` attribute.
  GetEngineVersionArgs({
    bool? defaultOnly,
    required String engine,
    List<GetEngineVersionFilter>? filters,
    bool? hasMajorTarget,
    bool? hasMinorTarget,
    bool? includeAll,
    bool? latest,
    String? parameterGroupFamily,
    List<String>? preferredMajorTargets,
    List<String>? preferredUpgradeTargets,
    List<String>? preferredVersions,
    String? region,
    String? version,
  })  : defaultOnly = pulumi.Input.asOptionalInput<bool>(defaultOnly),
        engine = pulumi.Input.asInput<String>(engine),
        filters =
            pulumi.Input.asOptionalInput<List<GetEngineVersionFilter>>(filters),
        hasMajorTarget = pulumi.Input.asOptionalInput<bool>(hasMajorTarget),
        hasMinorTarget = pulumi.Input.asOptionalInput<bool>(hasMinorTarget),
        includeAll = pulumi.Input.asOptionalInput<bool>(includeAll),
        latest = pulumi.Input.asOptionalInput<bool>(latest),
        parameterGroupFamily =
            pulumi.Input.asOptionalInput<String>(parameterGroupFamily),
        preferredMajorTargets =
            pulumi.Input.asOptionalInput<List<String>>(preferredMajorTargets),
        preferredUpgradeTargets =
            pulumi.Input.asOptionalInput<List<String>>(preferredUpgradeTargets),
        preferredVersions =
            pulumi.Input.asOptionalInput<List<String>>(preferredVersions),
        region = pulumi.Input.asOptionalInput<String>(region),
        version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultOnlyValue = defaultOnly;
    if (defaultOnlyValue != null) {
      map['defaultOnly'] = defaultOnlyValue;
    }
    map['engine'] = engine;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetEngineVersionFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetEngineVersionFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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

  factory GetEngineVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionArgs(
      defaultOnly:
          map['defaultOnly'] == null ? null : map['defaultOnly'] as bool,
      engine: map['engine'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetEngineVersionFilter>(
              map['filters'],
              (value) => GetEngineVersionFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      hasMajorTarget:
          map['hasMajorTarget'] == null ? null : map['hasMajorTarget'] as bool,
      hasMinorTarget:
          map['hasMinorTarget'] == null ? null : map['hasMinorTarget'] as bool,
      includeAll: map['includeAll'] == null ? null : map['includeAll'] as bool,
      latest: map['latest'] == null ? null : map['latest'] as bool,
      parameterGroupFamily: map['parameterGroupFamily'] == null
          ? null
          : map['parameterGroupFamily'] as String,
      preferredMajorTargets: map['preferredMajorTargets'] == null
          ? null
          : (map['preferredMajorTargets'] as List).cast<String>(),
      preferredUpgradeTargets: map['preferredUpgradeTargets'] == null
          ? null
          : (map['preferredUpgradeTargets'] as List).cast<String>(),
      preferredVersions: map['preferredVersions'] == null
          ? null
          : (map['preferredVersions'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
