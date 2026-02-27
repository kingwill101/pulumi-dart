// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'option_response.dart';

/// Method represents a method of an API interface.
class MethodResponse {
  /// The simple name of this method.
  final String name;

  /// Any metadata attached to the method.
  final List<OptionResponse> options;

  /// If true, the request is streamed.
  final bool requestStreaming;

  /// A URL of the input message type.
  final String requestTypeUrl;

  /// If true, the response is streamed.
  final bool responseStreaming;

  /// The URL of the output message type.
  final String responseTypeUrl;

  /// The source syntax of this method.
  final String syntax;

  MethodResponse({
    required this.name,
    required this.options,
    required this.requestStreaming,
    required this.requestTypeUrl,
    required this.responseStreaming,
    required this.responseTypeUrl,
    required this.syntax,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['options'] =
        pulumi.Input.encodeList<OptionResponse, Map<String, dynamic>>(
            options, (value) => value.toMap());
    map['requestStreaming'] = requestStreaming;
    map['requestTypeUrl'] = requestTypeUrl;
    map['responseStreaming'] = responseStreaming;
    map['responseTypeUrl'] = responseTypeUrl;
    map['syntax'] = syntax;
    return map;
  }

  factory MethodResponse.fromMap(Map<String, dynamic> map) {
    return MethodResponse(
      name: map['name'] as String,
      options: pulumi.Input.decodeList<OptionResponse>(
          map['options'],
          (value) =>
              OptionResponse.fromMap((value as Map).cast<String, dynamic>())),
      requestStreaming: map['requestStreaming'] as bool,
      requestTypeUrl: map['requestTypeUrl'] as String,
      responseStreaming: map['responseStreaming'] as bool,
      responseTypeUrl: map['responseTypeUrl'] as String,
      syntax: map['syntax'] as String,
    );
  }
}
