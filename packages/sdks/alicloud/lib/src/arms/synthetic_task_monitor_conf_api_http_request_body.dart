// ignore_for_file: unused_element, unnecessary_cast


class SyntheticTaskMonitorConfApiHttpRequestBody {
  /// The request body content, in JSON string format. When the type is text/plain,application/json,application/xml,text/html, the content can be converted to a JSON string.
  final String? content;
  final String? type;

  /// Creates a new [SyntheticTaskMonitorConfApiHttpRequestBody].
  /// [content] The request body content, in JSON string format. When the type is text/plain,application/json,application/xml,text/html, the content can be converted to a JSON string.
  /// [type] Optional.
  SyntheticTaskMonitorConfApiHttpRequestBody({
    this.content,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'type': ?type,
    };
  }

  factory SyntheticTaskMonitorConfApiHttpRequestBody.fromMap(Map<String, dynamic> map) {
    return SyntheticTaskMonitorConfApiHttpRequestBody(
      content: map['content'] == null ? null : map['content'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

