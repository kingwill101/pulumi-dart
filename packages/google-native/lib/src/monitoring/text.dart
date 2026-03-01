// ignore_for_file: unused_element, unnecessary_cast

import 'text_format.dart';
import 'text_style.dart';

/// A widget that displays textual content.
class Text {
  /// The text content to be displayed.
  final String? content;

  /// How the text content is formatted.
  final TextFormat? format;

  /// How the text is styled
  final TextStyle? style;

  /// Creates a new [Text].
  /// [content] The text content to be displayed.
  /// [format] How the text content is formatted.
  /// [style] How the text is styled
  Text({this.content, this.format, this.style});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'format': ?format == null ? null : format!.value,
      'style': ?style == null ? null : style!.toMap(),
    };
  }

  factory Text.fromMap(Map<String, dynamic> map) {
    return Text(
      content: map['content'] == null ? null : map['content'] as String,
      format: map['format'] == null
          ? null
          : TextFormat.fromValue(map['format'] as String),
      style: map['style'] == null
          ? null
          : TextStyle.fromMap((map['style'] as Map).cast<String, dynamic>()),
    );
  }
}
