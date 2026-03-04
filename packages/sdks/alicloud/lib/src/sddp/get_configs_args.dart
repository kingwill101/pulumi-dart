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
  GetConfigsArgs({this.ids, this.lang, this.outputFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'lang': ?lang,
      'outputFile': ?outputFile,
    };
  }

  factory GetConfigsArgs.fromMap(Map<String, dynamic> map) {
    return GetConfigsArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      lang: (() {
        final guardedValue = map['lang'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
