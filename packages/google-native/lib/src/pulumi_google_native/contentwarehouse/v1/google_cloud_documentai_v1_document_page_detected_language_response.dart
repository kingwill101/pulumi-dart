// ignore_for_file: unused_element, unnecessary_cast

/// Detected language for a structural component.
class GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse {
  /// Confidence of detected language. Range `[0, 1]`.
  final double confidence;

  /// The [BCP-47 language code](https://www.unicode.org/reports/tr35/#Unicode_locale_identifier), such as `en-US` or `sr-Latn`.
  final String languageCode;

  GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse({
    required this.confidence,
    required this.languageCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['confidence'] = confidence;
    map['languageCode'] = languageCode;
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageDetectedLanguageResponse(
      confidence: map['confidence'] as double,
      languageCode: map['languageCode'] as String,
    );
  }
}
