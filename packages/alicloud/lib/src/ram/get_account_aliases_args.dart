// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ram_get_account_aliases_get_account_aliases_args_doc}
/// Arguments for getAccountAliases.
/// {@endtemplate}
/// {@macro pulumi_ram_get_account_aliases_get_account_aliases_args_doc}
class GetAccountAliasesArgs {
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetAccountAliasesArgs].
  /// [outputFile] Optional.
  GetAccountAliasesArgs({
    String? outputFile,
  }) :
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
    };
  }

  factory GetAccountAliasesArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountAliasesArgs(
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

