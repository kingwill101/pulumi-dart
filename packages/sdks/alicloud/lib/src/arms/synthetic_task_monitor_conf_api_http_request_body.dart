// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SyntheticTaskMonitorConfApiHttpRequestBody {
  /// The request body content, in JSON string format. When the type is text/plain,application/json,application/xml,text/html, the content can be converted to a JSON string.
  final pulumi.Input<String>? content;
  final pulumi.Input<String>? type;

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
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

