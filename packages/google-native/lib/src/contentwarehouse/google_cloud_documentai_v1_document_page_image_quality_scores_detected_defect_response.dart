// ignore_for_file: unused_element, unnecessary_cast

/// Image Quality Defects
class GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefectResponse {
  /// Confidence of detected defect. Range `[0, 1]` where `1` indicates strong confidence that the defect exists.
  final double confidence;

  /// Name of the defect type. Supported values are: - `quality/defect_blurry` - `quality/defect_noisy` - `quality/defect_dark` - `quality/defect_faint` - `quality/defect_text_too_small` - `quality/defect_document_cutoff` - `quality/defect_text_cutoff` - `quality/defect_glare`
  final String type;

  /// Creates a new [GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefectResponse].
  /// [confidence] Confidence of detected defect. Range `[0, 1]` where `1` indicates strong confidence that the defect exists.
  /// [type] Name of the defect type. Supported values are: - `quality/defect_blurry` - `quality/defect_noisy` - `quality/defect_dark` - `quality/defect_faint` - `quality/defect_text_too_small` - `quality/defect_document_cutoff` - `quality/defect_text_cutoff` - `quality/defect_glare`
  GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefectResponse({
    required this.confidence,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'confidence': confidence, 'type': type};
  }

  factory GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefectResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDocumentaiV1DocumentPageImageQualityScoresDetectedDefectResponse(
      confidence: map['confidence'] as double,
      type: map['type'] as String,
    );
  }
}
