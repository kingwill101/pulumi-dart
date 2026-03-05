// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_get_account_alias_get_account_alias_args_doc}
/// Arguments for getAccountAlias.
/// {@endtemplate}
/// {@macro pulumi_ram_get_account_alias_get_account_alias_args_doc}
class GetAccountAliasArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAccountAliasArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetAccountAliasArgs({
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
    };
  }

  factory GetAccountAliasArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountAliasArgs(
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

