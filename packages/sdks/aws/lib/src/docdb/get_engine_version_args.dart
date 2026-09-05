// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_docdb_get_engine_version_get_engine_version_args_doc}
/// Arguments for getEngineVersion.
/// {@endtemplate}
/// {@macro pulumi_docdb_get_engine_version_get_engine_version_args_doc}
class GetEngineVersionArgs {
  /// DB engine. (Default: `docdb`)
  final pulumi.Input<String?>? engine;
  /// Name of a specific DB parameter group family. An example parameter group family is `docdb3.6`.
  final pulumi.Input<String?>? parameterGroupFamily;
  /// Ordered list of preferred engine versions. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. If both the `version` and `preferredVersions` arguments are not configured, the data source will return the default version for the engine.
  final pulumi.Input<List<String>?>? preferredVersions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Version of the DB engine. For example, `3.6.0`. If `version` and `preferredVersions` are not set, the data source will provide information for the AWS-defined default version. If both the `version` and `preferredVersions` arguments are not configured, the data source will return the default version for the engine.
  final pulumi.Input<String?>? version;

  /// Creates a new [GetEngineVersionArgs].
  /// [engine] DB engine. (Default: `docdb`)
  /// [parameterGroupFamily] Name of a specific DB parameter group family. An example parameter group family is `docdb3.6`.
  /// [preferredVersions] Ordered list of preferred engine versions. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. If both the `version` and `preferredVersions` arguments are not configured, the data source will return the default version for the engine.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [version] Version of the DB engine. For example, `3.6.0`. If `version` and `preferredVersions` are not set, the data source will provide information for the AWS-defined default version. If both the `version` and `preferredVersions` arguments are not configured, the data source will return the default version for the engine.
  const GetEngineVersionArgs({
    this.engine,
    this.parameterGroupFamily,
    this.preferredVersions,
    this.region,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'parameterGroupFamily': ?parameterGroupFamily,
      'preferredVersions': ?preferredVersions,
      'region': ?region,
      'version': ?version,
    };
  }

  factory GetEngineVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetEngineVersionArgs(
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterGroupFamily: (() { final guardedValue = map['parameterGroupFamily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredVersions: (() { final guardedValue = map['preferredVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
