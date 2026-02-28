// ignore_for_file: unused_element, unnecessary_cast


class GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec {
  /// Must be specified if type is `CATEGORICAL`. The list of possible categories.
  final List<String>? values;

  /// Creates a new [GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec].
  /// [values] Must be specified if type is `CATEGORICAL`. The list of possible categories.
  GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec({
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'values': ?values,
    };
  }

  factory GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1StudyConfigParameterSpecCategoricalValueSpec(
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}

