// ignore_for_file: unused_element, unnecessary_cast

/// Detected language for a structural component.
class GoogleCloudDocumentaiV1DocumentPageDetectedLanguage {
  /// Confidence of detected language. Range `[0, 1]`.
  final double? confidence;

  /// The [BCP-47 language code](https://www.unicode.org/reports/tr35/#Unicode_locale_identifier), such as `en-US` or `sr-Latn`.
  final String? languageCode;

  GoogleCloudDocumentaiV1DocumentPageDetectedLanguage({
    this.confidence,
    this.languageCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final confidenceValue = confidence;
    if (confidenceValue != null) {
      map['confidence'] = confidenceValue;
    }
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    return map;
  }

  factory GoogleCloudDocumentaiV1DocumentPageDetectedLanguage.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDocumentaiV1DocumentPageDetectedLanguage(
      confidence:
          map['confidence'] == null ? null : map['confidence'] as double,
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
    );
  }
}
