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

  /// Creates a new [TextResponse].
  /// [content] The text content to be displayed.
  /// [format] How the text content is formatted.
  /// [style] How the text is styled
  TextResponse({
    required this.content,
    required this.format,
    required this.style,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'format': format,
      'style': style.toMap(),
    };
  }

  factory TextResponse.fromMap(Map<String, dynamic> map) {
    return TextResponse(
      content: map['content'] as String,
      format: map['format'] as String,
      style: TextStyleResponse.fromMap(
        (map['style'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
