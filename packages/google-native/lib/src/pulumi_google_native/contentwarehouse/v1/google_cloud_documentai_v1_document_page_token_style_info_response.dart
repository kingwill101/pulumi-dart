// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_color_response.dart';

/// Font and other text style attributes.
class GoogleCloudDocumentaiV1DocumentPageTokenStyleInfoResponse {
  /// Color of the background.
  final GoogleTypeColorResponse backgroundColor;

  /// Whether the text is bold (equivalent to font_weight is at least `700`).
  final bool bold;

  /// Font size in points (`1` point is `¹⁄₇₂` inches).
  final int fontSize;

  /// Name or style of the font.
  final String fontType;

  /// TrueType weight on a scale `100` (thin) to `1000` (ultra-heavy). Normal is `400`, bold is `700`.
  final int fontWeight;

  /// Whether the text is handwritten.
  final bool handwritten;

  /// Whether the text is italic.
  final bool italic;

  /// Letter spacing in points.
  final double letterSpacing;

  /// Font size in pixels, equal to _unrounded font_size_ * _resolution_ ÷ `72.0`.
  final double pixelFontSize;

  /// Whether the text is in small caps.
  final bool smallcaps;

  /// Whether the text is strikethrough.
  final bool strikeout;

  /// Whether the text is a subscript.
  final bool subscript;

  /// Whether the text is a superscript.
  final bool superscript;

  /// Color of the text.
  final GoogleTypeColorResponse textColor;

  /// Whether the text is underlined.
  final bool underlined;

  GoogleCloudDocumentaiV1DocumentPageTokenStyleInfoResponse({
    required this.backgroundColor,
    required this.bold,
    required this.fontSize,
    required this.fontType,
    required this.fontWeight,
    required this.handwritten,
    required this.italic,
    required this.letterSpacing,
    required this.pixelFontSize,
    required this.smallcaps,
    required this.strikeout,
    required this.subscript,
    required this.superscript,
    required this.textColor,
    required this.underlined,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backgroundColor'] = backgroundColor.toMap();
    map['bold'] = bold;
    map['fontSize'] = fontSize;
    map['fontType'] = fontType;
    map['fontWeight'] = fontWeight;
    map['handwritten'] = handwritten;
    map['italic'] = italic;
    map['letterSpacing'] = letterSpacing;
    map['pixelFontSize'] = pixelFontSize;
    map['smallcaps'] = smallcaps;
    map['strikeout'] = strikeout;
    map['subscript'] = subscript;
    map['superscript'] = superscript;
    map['textColor'] = textColor.toMap();
    map['underlined'] = underlined;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageTokenStyleInfoResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageTokenStyleInfoResponse(
      backgroundColor: GoogleTypeColorResponse.fromMap(
          (map['backgroundColor'] as Map).cast<String, dynamic>()),
      bold: map['bold'] as bool,
      fontSize: map['fontSize'] as int,
      fontType: map['fontType'] as String,
      fontWeight: map['fontWeight'] as int,
      handwritten: map['handwritten'] as bool,
      italic: map['italic'] as bool,
      letterSpacing: map['letterSpacing'] as double,
      pixelFontSize: map['pixelFontSize'] as double,
      smallcaps: map['smallcaps'] as bool,
      strikeout: map['strikeout'] as bool,
      subscript: map['subscript'] as bool,
      superscript: map['superscript'] as bool,
      textColor: GoogleTypeColorResponse.fromMap(
          (map['textColor'] as Map).cast<String, dynamic>()),
      underlined: map['underlined'] as bool,
    );
  }
}
