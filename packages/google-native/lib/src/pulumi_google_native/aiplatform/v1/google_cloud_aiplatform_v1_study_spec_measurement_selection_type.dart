/// Describe which measurement selection type will be used
enum GoogleCloudAiplatformV1StudySpecMeasurementSelectionType {
  measurementSelectionTypeUnspecified("MEASUREMENT_SELECTION_TYPE_UNSPECIFIED"),
  lastMeasurement("LAST_MEASUREMENT"),
  bestMeasurement("BEST_MEASUREMENT");

  const GoogleCloudAiplatformV1StudySpecMeasurementSelectionType(this.value);
  final String value;

  static GoogleCloudAiplatformV1StudySpecMeasurementSelectionType fromValue(
      String value) {
    for (final item
        in GoogleCloudAiplatformV1StudySpecMeasurementSelectionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudAiplatformV1StudySpecMeasurementSelectionType value: $value');
  }
}
