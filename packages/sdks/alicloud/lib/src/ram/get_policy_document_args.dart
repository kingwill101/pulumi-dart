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
  GetPolicyDocumentArgs({this.outputFile, this.statements, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
      'statements':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetPolicyDocumentStatement>,
            List<Map<String, dynamic>>
          >(
            statements,
            (value) =>
                pulumi.Input.encodeList<
                  GetPolicyDocumentStatement,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'version': ?version,
    };
  }

  factory GetPolicyDocumentArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyDocumentArgs(
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statements: (() {
        final guardedValue = map['statements'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetPolicyDocumentStatement>(
            guardedValue,
            (value) => GetPolicyDocumentStatement.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
