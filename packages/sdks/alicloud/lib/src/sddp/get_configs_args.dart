// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sddp_get_configs_get_configs_args_doc}
/// Arguments for getConfigs.
/// {@endtemplate}
/// {@macro pulumi_sddp_get_configs_get_configs_args_doc}
class GetConfigsArgs {
  /// A list of Config IDs.
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? lang;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetConfigsArgs].
  /// [ids] A list of Config IDs.
  /// [lang] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetConfigsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? lang,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      lang = pulumi.Input.asOptionalInput<String>(lang),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'lang': ?lang,
      'outputFile': ?outputFile,
    };
  }

  factory GetConfigsArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      lang: map['lang'] == null ? null : pulumi.Output.create<String>(map['lang'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

