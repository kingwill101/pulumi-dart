// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The event response message received from the service URI.
class EventResponseMessageResponse {
  /// The content of the event response message.
  final pulumi.Input<String>? content;
  /// The headers of the event response message.
  final pulumi.Input<Map<String, String>>? headers;
  /// The reason phrase of the event response message.
  final pulumi.Input<String>? reasonPhrase;
  /// The status code of the event response message.
  final pulumi.Input<String>? statusCode;
  /// The HTTP message version.
  final pulumi.Input<String>? version;

  /// Creates a new [EventResponseMessageResponse].
  /// [content] The content of the event response message.
  /// [headers] The headers of the event response message.
  /// [reasonPhrase] The reason phrase of the event response message.
  /// [statusCode] The status code of the event response message.
  /// [version] The HTTP message version.
  EventResponseMessageResponse({
    this.content,
    this.headers,
    this.reasonPhrase,
    this.statusCode,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'headers': ?headers,
      'reasonPhrase': ?reasonPhrase,
      'statusCode': ?statusCode,
      'version': ?version,
    };
  }

  factory EventResponseMessageResponse.fromMap(Map<String, dynamic> map) {
    return EventResponseMessageResponse(
      content: map['content'] == null ? null : (map['content'] as String).input(),
      headers: map['headers'] == null ? null : ((map['headers'] as Map).cast<String, String>()).input(),
      reasonPhrase: map['reasonPhrase'] == null ? null : (map['reasonPhrase'] as String).input(),
      statusCode: map['statusCode'] == null ? null : (map['statusCode'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

