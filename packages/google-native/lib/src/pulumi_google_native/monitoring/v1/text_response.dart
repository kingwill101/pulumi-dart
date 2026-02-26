// ignore_for_file: unused_element, unnecessary_cast

import 'text_style_response.dart';

/// A widget that displays textual content.
class TextResponse {
  /// The text content to be displayed.
  final String content;

  /// How the text content is formatted.
  final String format;

  /// How the text is styled
  final TextStyleResponse style;

  TextResponse({
    required this.content,
    required this.format,
    required this.style,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['content'] = content;
    map['format'] = format;
    map['style'] = style.toMap();
    return map;
  }

  factory TextResponse.fromMap(Map<String, dynamic> map) {
    return TextResponse(
      content: map['content'] as String,
      format: map['format'] as String,
      style: TextStyleResponse.fromMap(
          (map['style'] as Map).cast<String, dynamic>()),
    );
  }
}
