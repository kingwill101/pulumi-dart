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
  GetAliasesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetAliasesArgs.fromMap(Map<String, dynamic> map) {
    return GetAliasesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

