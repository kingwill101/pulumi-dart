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
  const EventRequestMessageResponse({
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
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EventContentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestUri: (() { final guardedValue = map['requestUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
