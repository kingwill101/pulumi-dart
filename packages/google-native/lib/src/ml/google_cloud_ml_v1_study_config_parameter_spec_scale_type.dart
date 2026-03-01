/// How the parameter should be scaled. Leave unset for categorical parameters.
enum GoogleCloudMlV1StudyConfigParameterSpecScaleType {
  scaleTypeUnspecified("SCALE_TYPE_UNSPECIFIED"),
  unitLinearScale("UNIT_LINEAR_SCALE"),
  unitLogScale("UNIT_LOG_SCALE"),
  unitReverseLogScale("UNIT_REVERSE_LOG_SCALE");

  const GoogleCloudMlV1StudyConfigParameterSpecScaleType(this.value);
  final String value;

  static GoogleCloudMlV1StudyConfigParameterSpecScaleType fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudMlV1StudyConfigParameterSpecScaleType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudMlV1StudyConfigParameterSpecScaleType value: $value',
    );
  }
}
