// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NlpVerticalFeaturizationSettings {
  /// Dataset language, useful for the text data.
  final pulumi.Input<String>? datasetLanguage;

  /// Creates a new [NlpVerticalFeaturizationSettings].
  /// [datasetLanguage] Dataset language, useful for the text data.
  const NlpVerticalFeaturizationSettings({
    this.datasetLanguage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetLanguage': ?datasetLanguage,
    };
  }

  factory NlpVerticalFeaturizationSettings.fromMap(Map<String, dynamic> map) {
    return NlpVerticalFeaturizationSettings(
      datasetLanguage: (() { final guardedValue = map['datasetLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
