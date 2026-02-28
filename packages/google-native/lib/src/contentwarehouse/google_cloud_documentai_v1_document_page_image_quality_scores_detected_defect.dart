// ignore_for_file: unused_element, unnecessary_cast

/// Image Quality Defects
class GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect {
  /// Confidence of detected defect. Range `[0, 1]` where `1` indicates strong confidence that the defect exists.
  final double? confidence;

  /// Name of the defect type. Supported values are: - `quality/defect_blurry` - `quality/defect_noisy` - `quality/defect_dark` - `quality/defect_faint` - `quality/defect_text_too_small` - `quality/defect_document_cutoff` - `quality/defect_text_cutoff` - `quality/defect_glare`
  final String? type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect].
  /// [confidence] Confidence of detected defect. Range `[0, 1]` where `1` indicates strong confidence that the defect exists.
  /// [type] Name of the defect type. Supported values are: - `quality/defect_blurry` - `quality/defect_noisy` - `quality/defect_dark` - `quality/defect_faint` - `quality/defect_text_too_small` - `quality/defect_document_cutoff` - `quality/defect_text_cutoff` - `quality/defect_glare`
  GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect({
    this.confidence,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confidenceValue = confidence;
    if (confidenceValue != null) {
      map['confidence'] = confidenceValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefect(
      confidence:
          map['confidence'] == null ? null : map['confidence'] as double,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
