// ignore_for_file: unused_element, unnecessary_cast

/// Font size with unit.
class GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse {
  /// Font size for the text.
  final double size;

  /// Unit for the font size. Follows CSS naming (such as `in`, `px`, and `pt`).
  final String unit;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse].
  /// [size] Font size for the text.
  /// [unit] Unit for the font size. Follows CSS naming (such as `in`, `px`, and `pt`).
  GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse({
    required this.size,
    required this.unit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['size'] = size;
    map['unit'] = unit;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentStyleFontSizeResponse(
      size: map['size'] as double,
      unit: map['unit'] as String,
    );
  }
}
