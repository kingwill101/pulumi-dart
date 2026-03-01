// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_policy_document_statement.dart';

/// {@template pulumi_ram_get_policy_document_get_policy_document_args_doc}
/// Arguments for getPolicyDocument.
/// {@endtemplate}
/// {@macro pulumi_ram_get_policy_document_get_policy_document_args_doc}
class GetPolicyDocumentArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// Statement of the RAM policy document. See the following `Block statement`. See `statement` below.
  final pulumi.Input<List<GetPolicyDocumentStatement>>? statements;
  /// Version of the RAM policy document. Valid value is `1`. Default value is `1`.
  final pulumi.Input<String>? version;

  /// Creates a new [GetPolicyDocumentArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [statements] Statement of the RAM policy document. See the following `Block statement`. See `statement` below.
  /// [version] Version of the RAM policy document. Valid value is `1`. Default value is `1`.
  GetPolicyDocumentArgs({
    String? outputFile,
    List<GetPolicyDocumentStatement>? statements,
    String? version,
  }) :
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      statements = pulumi.Input.asOptionalInput<List<GetPolicyDocumentStatement>>(statements),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
      'statements': ?pulumi.Input.mapOptionalInputValue<List<GetPolicyDocumentStatement>, List<Map<String, dynamic>>>(statements, (value) => pulumi.Input.encodeList<GetPolicyDocumentStatement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'version': ?version,
    };
  }

  factory GetPolicyDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentArgs(
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      statements: map['statements'] == null ? null : pulumi.Input.decodeList<GetPolicyDocumentStatement>(map['statements'], (value) => GetPolicyDocumentStatement.fromMap((value as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

