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
    String? outputFile,
  }) :
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
    };
  }

  factory GetAccountAliasArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountAliasArgs(
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

