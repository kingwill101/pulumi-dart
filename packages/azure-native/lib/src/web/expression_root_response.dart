// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_error_info_response.dart';
import 'expression_response.dart';

/// The expression root.
class ExpressionRootResponse {
  /// The azure resource error info.
  final AzureResourceErrorInfoResponse? error;
  /// The path.
  final String? path;
  /// The sub expressions.
  final List<ExpressionResponse>? subexpressions;
  /// The text.
  final String? text;
  final dynamic value;

  /// Creates a new [ExpressionRootResponse].
  /// [error] The azure resource error info.
  /// [path] The path.
  /// [subexpressions] The sub expressions.
  /// [text] The text.
  /// [value] Optional.
  ExpressionRootResponse({
    this.error,
    this.path,
    this.subexpressions,
    this.text,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error == null ? null : error!.toMap(),
      'path': ?path,
      'subexpressions': ?subexpressions == null ? null : pulumi.Input.encodeList<ExpressionResponse, Map<String, dynamic>>(subexpressions!, (value) => value.toMap()),
      'text': ?text,
      'value': ?value,
    };
  }

  factory ExpressionRootResponse.fromMap(Map<String, dynamic> map) {
    return ExpressionRootResponse(
      error: map['error'] == null ? null : AzureResourceErrorInfoResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : map['path'] as String,
      subexpressions: map['subexpressions'] == null ? null : pulumi.Input.decodeList<ExpressionResponse>(map['subexpressions'], (value) => ExpressionResponse.fromMap((value as Map).cast<String, dynamic>())),
      text: map['text'] == null ? null : map['text'] as String,
      value: map['value'] == null ? null : map['value'],
    );
  }
}

