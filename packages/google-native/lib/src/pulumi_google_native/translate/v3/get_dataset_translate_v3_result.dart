// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDataset.
class GetDatasetTranslateV3Result {
  /// Timestamp when this dataset was created.
  final String createTime;

  /// The name of the dataset to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  final String displayName;

  /// The number of examples in the dataset.
  final int exampleCount;

  /// The resource name of the dataset, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  final String name;

  /// The BCP-47 language code of the source language.
  final String sourceLanguageCode;

  /// The BCP-47 language code of the target language.
  final String targetLanguageCode;

  /// Number of test examples (sentence pairs).
  final int testExampleCount;

  /// Number of training examples (sentence pairs).
  final int trainExampleCount;

  /// Timestamp when this dataset was last updated.
  final String updateTime;

  /// Number of validation examples (sentence pairs).
  final int validateExampleCount;

  GetDatasetTranslateV3Result({
    required this.createTime,
    required this.displayName,
    required this.exampleCount,
    required this.name,
    required this.sourceLanguageCode,
    required this.targetLanguageCode,
    required this.testExampleCount,
    required this.trainExampleCount,
    required this.updateTime,
    required this.validateExampleCount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['exampleCount'] = exampleCount;
    map['name'] = name;
    map['sourceLanguageCode'] = sourceLanguageCode;
    map['targetLanguageCode'] = targetLanguageCode;
    map['testExampleCount'] = testExampleCount;
    map['trainExampleCount'] = trainExampleCount;
    map['updateTime'] = updateTime;
    map['validateExampleCount'] = validateExampleCount;
    return map;
  }

  factory GetDatasetTranslateV3Result.fromMap(Map<String, dynamic> map) {
    return GetDatasetTranslateV3Result(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      exampleCount: map['exampleCount'] as int,
      name: map['name'] as String,
      sourceLanguageCode: map['sourceLanguageCode'] as String,
      targetLanguageCode: map['targetLanguageCode'] as String,
      testExampleCount: map['testExampleCount'] as int,
      trainExampleCount: map['trainExampleCount'] as int,
      updateTime: map['updateTime'] as String,
      validateExampleCount: map['validateExampleCount'] as int,
    );
  }
}
