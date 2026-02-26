// ignore_for_file: unused_element, unnecessary_cast

/// Dimension for the page.
class GoogleCloudDocumentaiV1DocumentPageDimensionResponse {
  /// Page height.
  final double height;

  /// Dimension unit.
  final String unit;

  /// Page width.
  final double width;

  GoogleCloudDocumentaiV1DocumentPageDimensionResponse({
    required this.height,
    required this.unit,
    required this.width,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['height'] = height;
    map['unit'] = unit;
    map['width'] = width;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageDimensionResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageDimensionResponse(
      height: map['height'] as double,
      unit: map['unit'] as String,
      width: map['width'] as double,
    );
  }
}
