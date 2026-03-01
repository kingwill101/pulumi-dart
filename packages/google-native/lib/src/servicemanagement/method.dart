// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'method_syntax.dart';
import 'option.dart';

/// Method represents a method of an API interface.
class Method {
  /// The simple name of this method.
  final String? name;

  /// Any metadata attached to the method.
  final List<Option>? options;

  /// If true, the request is streamed.
  final bool? requestStreaming;

  /// A URL of the input message type.
  final String? requestTypeUrl;

  /// If true, the response is streamed.
  final bool? responseStreaming;

  /// The URL of the output message type.
  final String? responseTypeUrl;

  /// The source syntax of this method.
  final MethodSyntax? syntax;

  /// Creates a new [Method].
  /// [name] The simple name of this method.
  /// [options] Any metadata attached to the method.
  /// [requestStreaming] If true, the request is streamed.
  /// [requestTypeUrl] A URL of the input message type.
  /// [responseStreaming] If true, the response is streamed.
  /// [responseTypeUrl] The URL of the output message type.
  /// [syntax] The source syntax of this method.
  Method({
    this.name,
    this.options,
    this.requestStreaming,
    this.requestTypeUrl,
    this.responseStreaming,
    this.responseTypeUrl,
    this.syntax,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'options': ?options == null
          ? null
          : pulumi.Input.encodeList<Option, Map<String, dynamic>>(
              options!,
              (value) => value.toMap(),
            ),
      'requestStreaming': ?requestStreaming,
      'requestTypeUrl': ?requestTypeUrl,
      'responseStreaming': ?responseStreaming,
      'responseTypeUrl': ?responseTypeUrl,
      'syntax': ?syntax == null ? null : syntax!.value,
    };
  }

  factory Method.fromMap(Map<String, dynamic> map) {
    return Method(
      name: map['name'] == null ? null : map['name'] as String,
      options: map['options'] == null
          ? null
          : pulumi.Input.decodeList<Option>(
              map['options'],
              (value) => Option.fromMap((value as Map).cast<String, dynamic>()),
            ),
      requestStreaming: map['requestStreaming'] == null
          ? null
          : map['requestStreaming'] as bool,
      requestTypeUrl: map['requestTypeUrl'] == null
          ? null
          : map['requestTypeUrl'] as String,
      responseStreaming: map['responseStreaming'] == null
          ? null
          : map['responseStreaming'] as bool,
      responseTypeUrl: map['responseTypeUrl'] == null
          ? null
          : map['responseTypeUrl'] as String,
      syntax: map['syntax'] == null
          ? null
          : MethodSyntax.fromValue(map['syntax'] as String),
    );
  }
}
