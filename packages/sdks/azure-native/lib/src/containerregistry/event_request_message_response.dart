// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_content_response.dart';

/// The event request message sent to the service URI.
class EventRequestMessageResponse {
  /// The content of the event request message.
  final pulumi.Input<EventContentResponse>? content;
  /// The headers of the event request message.
  final pulumi.Input<Map<String, String>>? headers;
  /// The HTTP method used to send the event request message.
  final pulumi.Input<String>? method;
  /// The URI used to send the event request message.
  final pulumi.Input<String>? requestUri;
  /// The HTTP message version.
  final pulumi.Input<String>? version;

  /// Creates a new [EventRequestMessageResponse].
  /// [content] The content of the event request message.
  /// [headers] The headers of the event request message.
  /// [method] The HTTP method used to send the event request message.
  /// [requestUri] The URI used to send the event request message.
  /// [version] The HTTP message version.
  EventRequestMessageResponse({
    this.content,
    this.headers,
    this.method,
    this.requestUri,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?pulumi.Input.mapOptionalInputValue<EventContentResponse, Map<String, dynamic>>(content, (value) => value.toMap()),
      'headers': ?headers,
      'method': ?method,
      'requestUri': ?requestUri,
      'version': ?version,
    };
  }

  factory EventRequestMessageResponse.fromMap(Map<String, dynamic> map) {
    return EventRequestMessageResponse(
      content: map['content'] == null ? null : (EventContentResponse.fromMap((map['content'] as Map).cast<String, dynamic>())).input(),
      headers: map['headers'] == null ? null : ((map['headers'] as Map).cast<String, String>()).input(),
      method: map['method'] == null ? null : (map['method'] as String).input(),
      requestUri: map['requestUri'] == null ? null : (map['requestUri'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

