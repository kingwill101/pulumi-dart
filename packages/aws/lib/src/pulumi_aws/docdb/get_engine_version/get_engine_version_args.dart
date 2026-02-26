// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEngineVersion.
class GetEngineVersionArgs {
  /// DB engine. (Default: <span pulumi-lang-nodejs="`docdb`" pulumi-lang-dotnet="`Docdb`" pulumi-lang-go="`docdb`" pulumi-lang-python="`docdb`" pulumi-lang-yaml="`docdb`" pulumi-lang-java="`docdb`">`docdb`</span>)
  final Input<String>? engine;

  /// Name of a specific DB parameter group family. An example parameter group family is `docdb3.6`.
  final Input<String>? parameterGroupFamily;

  /// Ordered list of preferred engine versions. The first match in this list will be returned. If no preferred matches are found and the original search returned more than one result, an error is returned. If both the <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span> and <span pulumi-lang-nodejs="`preferredVersions`" pulumi-lang-dotnet="`PreferredVersions`" pulumi-lang-go="`preferredVersions`" pulumi-lang-python="`preferred_versions`" pulumi-lang-yaml="`preferredVersions`" pulumi-lang-java="`preferredVersions`">`preferred_versions`</span> arguments are not configured, the data source will return the default version for the engine.
  final Input<List<String>>? preferredVersions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Version of the DB engine. For example, `3.6.0`. If <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span> and <span pulumi-lang-nodejs="`preferredVersions`" pulumi-lang-dotnet="`PreferredVersions`" pulumi-lang-go="`preferredVersions`" pulumi-lang-python="`preferred_versions`" pulumi-lang-yaml="`preferredVersions`" pulumi-lang-java="`preferredVersions`">`preferred_versions`</span> are not set, the data source will provide information for the AWS-defined default version. If both the <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span> and <span pulumi-lang-nodejs="`preferredVersions`" pulumi-lang-dotnet="`PreferredVersions`" pulumi-lang-go="`preferredVersions`" pulumi-lang-python="`preferred_versions`" pulumi-lang-yaml="`preferredVersions`" pulumi-lang-java="`preferredVersions`">`preferred_versions`</span> arguments are not configured, the data source will return the default version for the engine.
  final Input<String>? version;

  GetEngineVersionArgs({
    this.engine,
    this.parameterGroupFamily,
    this.preferredVersions,
    this.region,
    this.version,
  });

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
      engine: Input.asOptionalInput<String>(map['engine']),
      parameterGroupFamily:
          Input.asOptionalInput<String>(map['parameterGroupFamily']),
      preferredVersions:
          Input.asOptionalInput<List<String>>(map['preferredVersions']),
      region: Input.asOptionalInput<String>(map['region']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
