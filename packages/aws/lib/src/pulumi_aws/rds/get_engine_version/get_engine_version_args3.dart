// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_engine_version_filter/get_engine_version_filter.dart';

/// Arguments for getEngineVersion.
class GetEngineVersionArgs3 {
  /// Whether the engine version must be an AWS-defined default version. Some engines have multiple default versions, such as for each major version. Using <span pulumi-lang-nodejs="`defaultOnly`" pulumi-lang-dotnet="`DefaultOnly`" pulumi-lang-go="`defaultOnly`" pulumi-lang-python="`default_only`" pulumi-lang-yaml="`defaultOnly`" pulumi-lang-java="`defaultOnly`">`default_only`</span> may help avoid `multiple RDS engine versions` errors. See also <span pulumi-lang-nodejs="`latest`" pulumi-lang-dotnet="`Latest`" pulumi-lang-go="`latest`" pulumi-lang-python="`latest`" pulumi-lang-yaml="`latest`" pulumi-lang-java="`latest`">`latest`</span>.
  final Input<bool>? defaultOnly;

  /// Database engine. Engine values include <span pulumi-lang-nodejs="`aurora`" pulumi-lang-dotnet="`Aurora`" pulumi-lang-go="`aurora`" pulumi-lang-python="`aurora`" pulumi-lang-yaml="`aurora`" pulumi-lang-java="`aurora`">`aurora`</span>, `aurora-mysql`, `aurora-postgresql`, <span pulumi-lang-nodejs="`docdb`" pulumi-lang-dotnet="`Docdb`" pulumi-lang-go="`docdb`" pulumi-lang-python="`docdb`" pulumi-lang-yaml="`docdb`" pulumi-lang-java="`docdb`">`docdb`</span>, <span pulumi-lang-nodejs="`mariadb`" pulumi-lang-dotnet="`Mariadb`" pulumi-lang-go="`mariadb`" pulumi-lang-python="`mariadb`" pulumi-lang-yaml="`mariadb`" pulumi-lang-java="`mariadb`">`mariadb`</span>, <span pulumi-lang-nodejs="`mysql`" pulumi-lang-dotnet="`Mysql`" pulumi-lang-go="`mysql`" pulumi-lang-python="`mysql`" pulumi-lang-yaml="`mysql`" pulumi-lang-java="`mysql`">`mysql`</span>, <span pulumi-lang-nodejs="`neptune`" pulumi-lang-dotnet="`Neptune`" pulumi-lang-go="`neptune`" pulumi-lang-python="`neptune`" pulumi-lang-yaml="`neptune`" pulumi-lang-java="`neptune`">`neptune`</span>, `oracle-ee`, `oracle-se`, `oracle-se1`, `oracle-se2`, <span pulumi-lang-nodejs="`postgres`" pulumi-lang-dotnet="`Postgres`" pulumi-lang-go="`postgres`" pulumi-lang-python="`postgres`" pulumi-lang-yaml="`postgres`" pulumi-lang-java="`postgres`">`postgres`</span>, `sqlserver-ee`, `sqlserver-ex`, `sqlserver-se`, and `sqlserver-web`.
  ///
  /// The following arguments are optional:
  final Input<String> engine;

  /// One or more name/value pairs to use in filtering versions. There are several valid keys; for a full reference, check out [describe-db-engine-versions in the AWS CLI reference](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/rds/describe-db-engine-versions.html).
  final Input<List<GetEngineVersionFilter>>? filters;

  /// Whether the engine version must have one or more major upgrade targets. Not including <span pulumi-lang-nodejs="`hasMajorTarget`" pulumi-lang-dotnet="`HasMajorTarget`" pulumi-lang-go="`hasMajorTarget`" pulumi-lang-python="`has_major_target`" pulumi-lang-yaml="`hasMajorTarget`" pulumi-lang-java="`hasMajorTarget`">`has_major_target`</span> or setting it to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> doesn't imply that there's no corresponding major upgrade target for the engine version.
  final Input<bool>? hasMajorTarget;

  /// Whether the engine version must have one or more minor upgrade targets. Not including <span pulumi-lang-nodejs="`hasMinorTarget`" pulumi-lang-dotnet="`HasMinorTarget`" pulumi-lang-go="`hasMinorTarget`" pulumi-lang-python="`has_minor_target`" pulumi-lang-yaml="`hasMinorTarget`" pulumi-lang-java="`hasMinorTarget`">`has_minor_target`</span> or setting it to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> doesn't imply that there's no corresponding minor upgrade target for the engine version.
  final Input<bool>? hasMinorTarget;

  /// Whether the engine version <span pulumi-lang-nodejs="`status`" pulumi-lang-dotnet="`Status`" pulumi-lang-go="`status`" pulumi-lang-python="`status`" pulumi-lang-yaml="`status`" pulumi-lang-java="`status`">`status`</span> can either be <span pulumi-lang-nodejs="`deprecated`" pulumi-lang-dotnet="`Deprecated`" pulumi-lang-go="`deprecated`" pulumi-lang-python="`deprecated`" pulumi-lang-yaml="`deprecated`" pulumi-lang-java="`deprecated`">`deprecated`</span> or <span pulumi-lang-nodejs="`available`" pulumi-lang-dotnet="`Available`" pulumi-lang-go="`available`" pulumi-lang-python="`available`" pulumi-lang-yaml="`available`" pulumi-lang-java="`available`">`available`</span>. When not set or set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, the engine version <span pulumi-lang-nodejs="`status`" pulumi-lang-dotnet="`Status`" pulumi-lang-go="`status`" pulumi-lang-python="`status`" pulumi-lang-yaml="`status`" pulumi-lang-java="`status`">`status`</span> will always be <span pulumi-lang-nodejs="`available`" pulumi-lang-dotnet="`Available`" pulumi-lang-go="`available`" pulumi-lang-python="`available`" pulumi-lang-yaml="`available`" pulumi-lang-java="`available`">`available`</span>.
  final Input<bool>? includeAll;

  /// Whether the engine version is the most recent version matching the other criteria. This is different from <span pulumi-lang-nodejs="`defaultOnly`" pulumi-lang-dotnet="`DefaultOnly`" pulumi-lang-go="`defaultOnly`" pulumi-lang-python="`default_only`" pulumi-lang-yaml="`defaultOnly`" pulumi-lang-java="`defaultOnly`">`default_only`</span> in important ways: "default" relies on AWS-defined defaults, the latest version isn't always the default, and AWS might have multiple default versions for an engine. As a result, <span pulumi-lang-nodejs="`defaultOnly`" pulumi-lang-dotnet="`DefaultOnly`" pulumi-lang-go="`defaultOnly`" pulumi-lang-python="`default_only`" pulumi-lang-yaml="`defaultOnly`" pulumi-lang-java="`defaultOnly`">`default_only`</span> might not prevent errors from `multiple RDS engine versions`, while <span pulumi-lang-nodejs="`latest`" pulumi-lang-dotnet="`Latest`" pulumi-lang-go="`latest`" pulumi-lang-python="`latest`" pulumi-lang-yaml="`latest`" pulumi-lang-java="`latest`">`latest`</span> will. (<span pulumi-lang-nodejs="`latest`" pulumi-lang-dotnet="`Latest`" pulumi-lang-go="`latest`" pulumi-lang-python="`latest`" pulumi-lang-yaml="`latest`" pulumi-lang-java="`latest`">`latest`</span> can be used with <span pulumi-lang-nodejs="`defaultOnly`" pulumi-lang-dotnet="`DefaultOnly`" pulumi-lang-go="`defaultOnly`" pulumi-lang-python="`default_only`" pulumi-lang-yaml="`defaultOnly`" pulumi-lang-java="`defaultOnly`">`default_only`</span>.) **Note:** The data source uses a best-effort approach at selecting the latest version. Due to the complexity of version identifiers across engines and incomplete version date information provided by AWS, using <span pulumi-lang-nodejs="`latest`" pulumi-lang-dotnet="`Latest`" pulumi-lang-go="`latest`" pulumi-lang-python="`latest`" pulumi-lang-yaml="`latest`" pulumi-lang-java="`latest`">`latest`</span> may not always result in the engine version being the actual latest version.
  final Input<bool>? latest;

  /// Name of a specific database parameter group family. Examples of parameter group families are `mysql8.0`, `mariadb10.4`, and <span pulumi-lang-nodejs="`postgres12`" pulumi-lang-dotnet="`Postgres12`" pulumi-lang-go="`postgres12`" pulumi-lang-python="`postgres12`" pulumi-lang-yaml="`postgres12`" pulumi-lang-java="`postgres12`">`postgres12`</span>.
  final Input<String>? parameterGroupFamily;

  /// Ordered list of preferred major version upgrade targets. The engine version will be the first match in the list unless the <span pulumi-lang-nodejs="`latest`" pulumi-lang-dotnet="`Latest`" pulumi-lang-go="`latest`" pulumi-lang-python="`latest`" pulumi-lang-yaml="`latest`" pulumi-lang-java="`latest`">`latest`</span> parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. The engine version will be the default version if you don't include any criteria, such as <span pulumi-lang-nodejs="`preferredMajorTargets`" pulumi-lang-dotnet="`PreferredMajorTargets`" pulumi-lang-go="`preferredMajorTargets`" pulumi-lang-python="`preferred_major_targets`" pulumi-lang-yaml="`preferredMajorTargets`" pulumi-lang-java="`preferredMajorTargets`">`preferred_major_targets`</span>.
  final Input<List<String>>? preferredMajorTargets;

  /// Ordered list of preferred version upgrade targets. The engine version will be the first match in this list unless the <span pulumi-lang-nodejs="`latest`" pulumi-lang-dotnet="`Latest`" pulumi-lang-go="`latest`" pulumi-lang-python="`latest`" pulumi-lang-yaml="`latest`" pulumi-lang-java="`latest`">`latest`</span> parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. The engine version will be the default version if you don't include any criteria, such as <span pulumi-lang-nodejs="`preferredUpgradeTargets`" pulumi-lang-dotnet="`PreferredUpgradeTargets`" pulumi-lang-go="`preferredUpgradeTargets`" pulumi-lang-python="`preferred_upgrade_targets`" pulumi-lang-yaml="`preferredUpgradeTargets`" pulumi-lang-java="`preferredUpgradeTargets`">`preferred_upgrade_targets`</span>.
  final Input<List<String>>? preferredUpgradeTargets;

  /// Ordered list of preferred versions. The engine version will be the first match in this list unless the <span pulumi-lang-nodejs="`latest`" pulumi-lang-dotnet="`Latest`" pulumi-lang-go="`latest`" pulumi-lang-python="`latest`" pulumi-lang-yaml="`latest`" pulumi-lang-java="`latest`">`latest`</span> parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. The engine version will be the default version if you don't include any criteria, such as <span pulumi-lang-nodejs="`preferredVersions`" pulumi-lang-dotnet="`PreferredVersions`" pulumi-lang-go="`preferredVersions`" pulumi-lang-python="`preferred_versions`" pulumi-lang-yaml="`preferredVersions`" pulumi-lang-java="`preferredVersions`">`preferred_versions`</span>.
  final Input<List<String>>? preferredVersions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Engine version. For example, `5.7.22`, `10.1.34`, or `12.3`. <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span> can be a partial version identifier which can result in `multiple RDS engine versions` errors unless the <span pulumi-lang-nodejs="`latest`" pulumi-lang-dotnet="`Latest`" pulumi-lang-go="`latest`" pulumi-lang-python="`latest`" pulumi-lang-yaml="`latest`" pulumi-lang-java="`latest`">`latest`</span> parameter is set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. The engine version will be the default version if you don't include any criteria, such as <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span>. **NOTE:** In a future Terraform AWS provider version, <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span> will only contain the version information you configure and not the complete version information that the data source gets from AWS. Instead, that version information will be available in the <span pulumi-lang-nodejs="`versionActual`" pulumi-lang-dotnet="`VersionActual`" pulumi-lang-go="`versionActual`" pulumi-lang-python="`version_actual`" pulumi-lang-yaml="`versionActual`" pulumi-lang-java="`versionActual`">`version_actual`</span> attribute.
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
