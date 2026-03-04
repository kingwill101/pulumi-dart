// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_aliases_get_aliases_args_doc}
/// Arguments for getAliases.
/// {@endtemplate}
/// {@macro pulumi_kms_get_aliases_get_aliases_args_doc}
class GetAliasesArgs {
  /// A list of KMS aliases IDs. The value is same as KMS alias_name.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter the results by the KMS alias name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAliasesArgs].
  /// [ids] A list of KMS aliases IDs. The value is same as KMS alias_name.
  /// [nameRegex] A regex string to filter the results by the KMS alias name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAliasesArgs({this.ids, this.nameRegex, this.outputFile});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetAliasesArgs.fromMap(Map<String, dynamic> map) {
    return GetAliasesArgs(
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
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
