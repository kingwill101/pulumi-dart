// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getRuntimeVersion.
class GetRuntimeVersionArgs {
  /// Whether the latest version of the runtime should be fetched. Conflicts with `version`. Valid values: `true`.
  final pulumi.Input<bool>? latest;

  /// Name prefix of the runtime version (for example, `syn-nodejs-puppeteer`).
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> prefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Version of the runtime to be fetched (for example, `9.0`). Conflicts with `latest`.
  final pulumi.Input<String>? version;

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
      latest: pulumi.Input.asOptionalInput<bool>(map['latest']),
      prefix: pulumi.Input.asInput<String>(map['prefix']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
    );
  }
}
