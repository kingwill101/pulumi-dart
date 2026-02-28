// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_docdb_get_engine_version_get_engine_version_args_doc}
/// Arguments for getEngineVersion.
/// {@endtemplate}
/// {@macro pulumi_docdb_get_engine_version_get_engine_version_args_doc}
class GetEngineVersionArgs {
  /// DB engine. (Default: `docdb`)
  final pulumi.Input<String>? engine;

  /// Name of a specific DB parameter group family. An example parameter group family is `docdb3.6`.
  final pulumi.Input<String>? parameterGroupFamily;

  /// Ordered list of preferred engine versions. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. If both the `version` and `preferred_versions` arguments are not configured, the data source will return the default version for the engine.
  final pulumi.Input<List<String>>? preferredVersions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Version of the DB engine. For example, `3.6.0`. If `version` and `preferred_versions` are not set, the data source will provide information for the AWS-defined default version. If both the `version` and `preferred_versions` arguments are not configured, the data source will return the default version for the engine.
  final pulumi.Input<String>? version;

  /// Creates a new [GetEngineVersionArgs].
  /// [engine] DB engine. (Default: `docdb`)
  /// [parameterGroupFamily] Name of a specific DB parameter group family. An example parameter group family is `docdb3.6`.
  /// [preferredVersions] Ordered list of preferred engine versions. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. If both the `version` and `preferred_versions` arguments are not configured, the data source will return the default version for the engine.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [version] Version of the DB engine. For example, `3.6.0`. If `version` and `preferred_versions` are not set, the data source will provide information for the AWS-defined default version. If both the `version` and `preferred_versions` arguments are not configured, the data source will return the default version for the engine.
  GetEngineVersionArgs({
    String? engine,
    String? parameterGroupFamily,
    List<String>? preferredVersions,
    String? region,
    String? version,
  })  : engine = pulumi.Input.asOptionalInput<String>(engine),
        parameterGroupFamily =
            pulumi.Input.asOptionalInput<String>(parameterGroupFamily),
        preferredVersions =
            pulumi.Input.asOptionalInput<List<String>>(preferredVersions),
        region = pulumi.Input.asOptionalInput<String>(region),
        version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue;
    }
    final parameterGroupFamilyValue = parameterGroupFamily;
    if (parameterGroupFamilyValue != null) {
      map['parameterGroupFamily'] = parameterGroupFamilyValue;
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
      engine: map['engine'] == null ? null : map['engine'] as String,
      parameterGroupFamily: map['parameterGroupFamily'] == null
          ? null
          : map['parameterGroupFamily'] as String,
      preferredVersions: map['preferredVersions'] == null
          ? null
          : (map['preferredVersions'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}
