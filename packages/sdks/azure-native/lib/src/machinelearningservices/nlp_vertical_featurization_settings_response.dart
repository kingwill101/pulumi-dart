// ignore_for_file: unused_element, unnecessary_cast


class NlpVerticalFeaturizationSettingsResponse {
  /// Dataset language, useful for the text data.
  final String? datasetLanguage;

  /// Creates a new [NlpVerticalFeaturizationSettingsResponse].
  /// [datasetLanguage] Dataset language, useful for the text data.
  NlpVerticalFeaturizationSettingsResponse({
    this.datasetLanguage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetLanguage': ?datasetLanguage,
    };
  }

  factory NlpVerticalFeaturizationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return NlpVerticalFeaturizationSettingsResponse(
      datasetLanguage: map['datasetLanguage'] == null ? null : map['datasetLanguage'] as String,
    );
  }
}

