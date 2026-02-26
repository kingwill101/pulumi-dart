// ignore_for_file: unused_element, unnecessary_cast

/// Font size with unit.
class GoogleCloudDocumentaiV1DocumentStyleFontSize {
  /// Font size for the text.
  final double? size;

  /// Unit for the font size. Follows CSS naming (such as `in`, `px`, and `pt`).
  final String? unit;

  GoogleCloudDocumentaiV1DocumentStyleFontSize({
    this.size,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sizeValue = size;
    if (sizeValue != null) {
      map['size'] = sizeValue;
    }
    final unitValue = unit;
    if (unitValue != null) {
      map['unit'] = unitValue;
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentStyleFontSize.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentStyleFontSize(
      size: map['size'] == null ? null : map['size'] as double,
      unit: map['unit'] == null ? null : map['unit'] as String,
    );
  }
}
