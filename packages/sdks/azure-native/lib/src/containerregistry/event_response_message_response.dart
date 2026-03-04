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
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      headers: (() {
        final guardedValue = map['headers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      reasonPhrase: (() {
        final guardedValue = map['reasonPhrase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statusCode: (() {
        final guardedValue = map['statusCode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
