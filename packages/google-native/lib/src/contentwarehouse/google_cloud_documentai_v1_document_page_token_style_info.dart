// ignore_for_file: unused_element, unnecessary_cast

import 'google_type_color.dart';

/// Font and other text style attributes.
class GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo {
  /// Color of the background.
  final GoogleTypeColor? backgroundColor;

  /// Whether the text is bold (equivalent to font_weight is at least `700`).
  final bool? bold;

  /// Font size in points (`1` point is `¹⁄₇₂` inches).
  final int? fontSize;

  /// Name or style of the font.
  final String? fontType;

  /// TrueType weight on a scale `100` (thin) to `1000` (ultra-heavy). Normal is `400`, bold is `700`.
  final int? fontWeight;

  /// Whether the text is handwritten.
  final bool? handwritten;

  /// Whether the text is italic.
  final bool? italic;

  /// Letter spacing in points.
  final double? letterSpacing;

  /// Font size in pixels, equal to _unrounded font_size_ * _resolution_ ÷ `72.0`.
  final double? pixelFontSize;

  /// Whether the text is in small caps.
  final bool? smallcaps;

  /// Whether the text is strikethrough.
  final bool? strikeout;

  /// Whether the text is a subscript.
  final bool? subscript;

  /// Whether the text is a superscript.
  final bool? superscript;

  /// Color of the text.
  final GoogleTypeColor? textColor;

  /// Whether the text is underlined.
  final bool? underlined;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo].
  /// [backgroundColor] Color of the background.
  /// [bold] Whether the text is bold (equivalent to font_weight is at least `700`).
  /// [fontSize] Font size in points (`1` point is `¹⁄₇₂` inches).
  /// [fontType] Name or style of the font.
  /// [fontWeight] TrueType weight on a scale `100` (thin) to `1000` (ultra-heavy). Normal is `400`, bold is `700`.
  /// [handwritten] Whether the text is handwritten.
  /// [italic] Whether the text is italic.
  /// [letterSpacing] Letter spacing in points.
  /// [pixelFontSize] Font size in pixels, equal to _unrounded font_size_ * _resolution_ ÷ `72.0`.
  /// [smallcaps] Whether the text is in small caps.
  /// [strikeout] Whether the text is strikethrough.
  /// [subscript] Whether the text is a subscript.
  /// [superscript] Whether the text is a superscript.
  /// [textColor] Color of the text.
  /// [underlined] Whether the text is underlined.
  GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo({
    this.backgroundColor,
    this.bold,
    this.fontSize,
    this.fontType,
    this.fontWeight,
    this.handwritten,
    this.italic,
    this.letterSpacing,
    this.pixelFontSize,
    this.smallcaps,
    this.strikeout,
    this.subscript,
    this.superscript,
    this.textColor,
    this.underlined,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundColor': ?backgroundColor == null
          ? null
          : backgroundColor!.toMap(),
      'bold': ?bold,
      'fontSize': ?fontSize,
      'fontType': ?fontType,
      'fontWeight': ?fontWeight,
      'handwritten': ?handwritten,
      'italic': ?italic,
      'letterSpacing': ?letterSpacing,
      'pixelFontSize': ?pixelFontSize,
      'smallcaps': ?smallcaps,
      'strikeout': ?strikeout,
      'subscript': ?subscript,
      'superscript': ?superscript,
      'textColor': ?textColor == null ? null : textColor!.toMap(),
      'underlined': ?underlined,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageTokenStyleInfo(
      backgroundColor: map['backgroundColor'] == null
          ? null
          : GoogleTypeColor.fromMap(
              (map['backgroundColor'] as Map).cast<String, dynamic>(),
            ),
      bold: map['bold'] == null ? null : map['bold'] as bool,
      fontSize: map['fontSize'] == null ? null : map['fontSize'] as int,
      fontType: map['fontType'] == null ? null : map['fontType'] as String,
      fontWeight: map['fontWeight'] == null ? null : map['fontWeight'] as int,
      handwritten: map['handwritten'] == null
          ? null
          : map['handwritten'] as bool,
      italic: map['italic'] == null ? null : map['italic'] as bool,
      letterSpacing: map['letterSpacing'] == null
          ? null
          : map['letterSpacing'] as double,
      pixelFontSize: map['pixelFontSize'] == null
          ? null
          : map['pixelFontSize'] as double,
      smallcaps: map['smallcaps'] == null ? null : map['smallcaps'] as bool,
      strikeout: map['strikeout'] == null ? null : map['strikeout'] as bool,
      subscript: map['subscript'] == null ? null : map['subscript'] as bool,
      superscript: map['superscript'] == null
          ? null
          : map['superscript'] as bool,
      textColor: map['textColor'] == null
          ? null
          : GoogleTypeColor.fromMap(
              (map['textColor'] as Map).cast<String, dynamic>(),
            ),
      underlined: map['underlined'] == null ? null : map['underlined'] as bool,
    );
  }
}
