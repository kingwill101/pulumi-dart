// ignore_for_file: unused_element, unnecessary_cast


/// The event response message received from the service URI.
class EventResponseMessageResponse {
  /// The content of the event response message.
  final String? content;
  /// The headers of the event response message.
  final Map<String, String>? headers;
  /// The reason phrase of the event response message.
  final String? reasonPhrase;
  /// The status code of the event response message.
  final String? statusCode;
  /// The HTTP message version.
  final String? version;

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
      content: map['content'] == null ? null : map['content'] as String,
      headers: map['headers'] == null ? null : (map['headers'] as Map).cast<String, String>(),
      reasonPhrase: map['reasonPhrase'] == null ? null : map['reasonPhrase'] as String,
      statusCode: map['statusCode'] == null ? null : map['statusCode'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

