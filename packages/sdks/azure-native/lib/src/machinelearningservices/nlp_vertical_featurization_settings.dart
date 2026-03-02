// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NlpVerticalFeaturizationSettings {
  /// Dataset language, useful for the text data.
  final pulumi.Input<String>? datasetLanguage;

  /// Creates a new [NlpVerticalFeaturizationSettings].
  /// [datasetLanguage] Dataset language, useful for the text data.
  NlpVerticalFeaturizationSettings({
    this.datasetLanguage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetLanguage': ?datasetLanguage,
    };
  }

  factory NlpVerticalFeaturizationSettings.fromMap(Map<String, dynamic> map) {
    return NlpVerticalFeaturizationSettings(
      datasetLanguage: map['datasetLanguage'] == null ? null : (map['datasetLanguage'] as String).input(),
    );
  }
}

