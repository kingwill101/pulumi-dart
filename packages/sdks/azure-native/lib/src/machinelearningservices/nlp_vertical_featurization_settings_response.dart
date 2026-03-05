// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NlpVerticalFeaturizationSettingsResponse {
  /// Dataset language, useful for the text data.
  final pulumi.Input<String>? datasetLanguage;

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
      datasetLanguage: (() { final guardedValue = map['datasetLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

