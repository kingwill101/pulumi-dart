// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_documentai_v1_document_style_font_size_response.dart';
import 'google_cloud_documentai_v1_document_text_anchor_response.dart';
import 'google_type_color_response.dart';

/// Annotation for common text style attributes. This adheres to CSS conventions as much as possible.
class GoogleCloudDocumentaiV1DocumentStyleResponse {
  /// Text background color.
  final GoogleTypeColorResponse backgroundColor;

  /// Text color.
  final GoogleTypeColorResponse color;

  /// Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/cssref/pr_font_font-family.asp
  final String fontFamily;

  /// Font size.
  final GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse fontSize;

  /// [Font weight](https://www.w3schools.com/cssref/pr_font_weight.asp). Possible values are `normal`, `bold`, `bolder`, and `lighter`.
  final String fontWeight;

  /// Text anchor indexing into the Document.text.
  final GoogleCloudDocumentaiV1DocumentTextAnchorResponse textAnchor;

  /// [Text decoration](https://www.w3schools.com/cssref/pr_text_text-decoration.asp). Follows CSS standard.
  final String textDecoration;

  /// [Text style](https://www.w3schools.com/cssref/pr_font_font-style.asp). Possible values are `normal`, `italic`, and `oblique`.
  final String textStyle;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentStyleResponse].
  /// [backgroundColor] Text background color.
  /// [color] Text color.
  /// [fontFamily] Font family such as `Arial`, `Times New Roman`. https://www.w3schools.com/cssref/pr_font_font-family.asp
  /// [fontSize] Font size.
  /// [fontWeight] [Font weight](https://www.w3schools.com/cssref/pr_font_weight.asp). Possible values are `normal`, `bold`, `bolder`, and `lighter`.
  /// [textAnchor] Text anchor indexing into the Document.text.
  /// [textDecoration] [Text decoration](https://www.w3schools.com/cssref/pr_text_text-decoration.asp). Follows CSS standard.
  /// [textStyle] [Text style](https://www.w3schools.com/cssref/pr_font_font-style.asp). Possible values are `normal`, `italic`, and `oblique`.
  GoogleCloudDocumentaiV1DocumentStyleResponse({
    required this.backgroundColor,
    required this.color,
    required this.fontFamily,
    required this.fontSize,
    required this.fontWeight,
    required this.textAnchor,
    required this.textDecoration,
    required this.textStyle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backgroundColor': backgroundColor.toMap(),
      'color': color.toMap(),
      'fontFamily': fontFamily,
      'fontSize': fontSize.toMap(),
      'fontWeight': fontWeight,
      'textAnchor': textAnchor.toMap(),
      'textDecoration': textDecoration,
      'textStyle': textStyle,
    };
  }

  factory GoogleCloudDocumentaiV1DocumentStyleResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentStyleResponse(
      backgroundColor: GoogleTypeColorResponse.fromMap(
        (map['backgroundColor'] as Map).cast<String, dynamic>(),
      ),
      color: GoogleTypeColorResponse.fromMap(
        (map['color'] as Map).cast<String, dynamic>(),
      ),
      fontFamily: map['fontFamily'] as String,
      fontSize: GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse.fromMap(
        (map['fontSize'] as Map).cast<String, dynamic>(),
      ),
      fontWeight: map['fontWeight'] as String,
      textAnchor: GoogleCloudDocumentaiV1DocumentTextAnchorResponse.fromMap(
        (map['textAnchor'] as Map).cast<String, dynamic>(),
      ),
      textDecoration: map['textDecoration'] as String,
      textStyle: map['textStyle'] as String,
    );
  }
}
