// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synthetics_get_runtime_version_get_runtime_version_args_doc}
/// Arguments for getRuntimeVersion.
/// {@endtemplate}
/// {@macro pulumi_synthetics_get_runtime_version_get_runtime_version_args_doc}
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

  /// Creates a new [GetRuntimeVersionArgs].
  /// [latest] Whether the latest version of the runtime should be fetched. Conflicts with `version`. Valid values: `true`.
  /// [prefix] Name prefix of the runtime version (for example, `syn-nodejs-puppeteer`).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [version] Version of the runtime to be fetched (for example, `9.0`). Conflicts with `latest`.
  GetRuntimeVersionArgs({
    pulumi.Output<bool>? latest,
    required pulumi.Output<String> prefix,
    pulumi.Output<String>? region,
    pulumi.Output<String>? version,
  }) :
      latest = pulumi.Input.asOptionalInput<bool>(latest),
      prefix = pulumi.Input.asInput<String>(prefix),
      region = pulumi.Input.asOptionalInput<String>(region),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latest': ?latest,
      'prefix': prefix,
      'region': ?region,
      'version': ?version,
    };
  }

  factory GetRuntimeVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetRuntimeVersionArgs(
      latest: map['latest'] == null ? null : pulumi.Output.create<bool>(map['latest'] as bool),
      prefix: pulumi.Output.create<String>(map['prefix'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

