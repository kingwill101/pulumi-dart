// ignore_for_file: unused_element, unnecessary_cast

/// Properties that determine how the title and content are styled
class TextStyleResponse {
  /// The background color as a hex string. "#RRGGBB" or "#RGB"
  final String backgroundColor;

  /// Font sizes for both the title and content. The title will still be larger relative to the content.
  final String fontSize;

  /// The horizontal alignment of both the title and content
  final String horizontalAlignment;

  /// The amount of padding around the widget
  final String padding;

  /// The pointer location for this widget (also sometimes called a "tail")
  final String pointerLocation;

  /// The text color as a hex string. "#RRGGBB" or "#RGB"
  final String textColor;

  /// The vertical alignment of both the title and content
  final String verticalAlignment;

  /// Creates a new [TextStyleResponse].
  /// [backgroundColor] The background color as a hex string. "#RRGGBB" or "#RGB"
  /// [fontSize] Font sizes for both the title and content. The title will still be larger relative to the content.
  /// [horizontalAlignment] The horizontal alignment of both the title and content
  /// [padding] The amount of padding around the widget
  /// [pointerLocation] The pointer location for this widget (also sometimes called a "tail")
  /// [textColor] The text color as a hex string. "#RRGGBB" or "#RGB"
  /// [verticalAlignment] The vertical alignment of both the title and content
  TextStyleResponse({
    required this.backgroundColor,
    required this.fontSize,
    required this.horizontalAlignment,
    required this.padding,
    required this.pointerLocation,
    required this.textColor,
    required this.verticalAlignment,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backgroundColor'] = backgroundColor;
    map['fontSize'] = fontSize;
    map['horizontalAlignment'] = horizontalAlignment;
    map['padding'] = padding;
    map['pointerLocation'] = pointerLocation;
    map['textColor'] = textColor;
    map['verticalAlignment'] = verticalAlignment;
    return map;
  }

  factory TextStyleResponse.fromMap(Map<String, dynamic> map) {
    return TextStyleResponse(
      backgroundColor: map['backgroundColor'] as String,
      fontSize: map['fontSize'] as String,
      horizontalAlignment: map['horizontalAlignment'] as String,
      padding: map['padding'] as String,
      pointerLocation: map['pointerLocation'] as String,
      textColor: map['textColor'] as String,
      verticalAlignment: map['verticalAlignment'] as String,
    );
  }
}
