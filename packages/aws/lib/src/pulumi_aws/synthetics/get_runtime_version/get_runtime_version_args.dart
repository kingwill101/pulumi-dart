// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRuntimeVersion.
class GetRuntimeVersionArgs {
  /// Whether the latest version of the runtime should be fetched. Conflicts with <span pulumi-lang-nodejs="`version`" pulumi-lang-dotnet="`Version`" pulumi-lang-go="`version`" pulumi-lang-python="`version`" pulumi-lang-yaml="`version`" pulumi-lang-java="`version`">`version`</span>. Valid values: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? latest;

  /// Name prefix of the runtime version (for example, `syn-nodejs-puppeteer`).
  ///
  /// The following arguments are optional:
  final Input<String> prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Version of the runtime to be fetched (for example, `9.0`). Conflicts with <span pulumi-lang-nodejs="`latest`" pulumi-lang-dotnet="`Latest`" pulumi-lang-go="`latest`" pulumi-lang-python="`latest`" pulumi-lang-yaml="`latest`" pulumi-lang-java="`latest`">`latest`</span>.
  final Input<String>? version;

  GetRuntimeVersionArgs({
    this.latest,
    required this.prefix,
    this.region,
    this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final latestValue = latest;
    if (latestValue != null) {
      map['latest'] = latestValue;
    }
    map['prefix'] = prefix;
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

  factory GetRuntimeVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetRuntimeVersionArgs(
      latest: Input.asOptionalInput<bool>(map['latest']),
      prefix: Input.asInput<String>(map['prefix']),
      region: Input.asOptionalInput<String>(map['region']),
      version: Input.asOptionalInput<String>(map['version']),
    );
  }
}
