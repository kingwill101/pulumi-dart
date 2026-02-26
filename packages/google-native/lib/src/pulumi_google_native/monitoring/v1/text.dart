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

  Text({
    this.content,
    this.format,
    this.style,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue;
    }
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = formatValue.value;
    }
    final styleValue = style;
    if (styleValue != null) {
      map['style'] = styleValue.toMap();
    }
    return map;
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
