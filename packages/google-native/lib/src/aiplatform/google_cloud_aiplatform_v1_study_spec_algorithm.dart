/// The search algorithm specified for the Study.
enum GoogleCloudAiplatformV1StudySpecAlgorithm {
  algorithmUnspecified("ALGORITHM_UNSPECIFIED"),
  gridSearch("GRID_SEARCH"),
  randomSearch("RANDOM_SEARCH");

  const GoogleCloudAiplatformV1StudySpecAlgorithm(this.value);
  final String value;

  static GoogleCloudAiplatformV1StudySpecAlgorithm fromValue(String value) {
    for (final item in GoogleCloudAiplatformV1StudySpecAlgorithm.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudAiplatformV1StudySpecAlgorithm value: $value');
  }
}

