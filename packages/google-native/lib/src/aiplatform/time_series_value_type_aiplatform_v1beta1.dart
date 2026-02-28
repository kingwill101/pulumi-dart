/// Required. Immutable. Type of TensorboardTimeSeries value.
enum TimeSeriesValueTypeAiplatformV1beta1 {
  valueTypeUnspecified("VALUE_TYPE_UNSPECIFIED"),
  scalar("SCALAR"),
  tensor("TENSOR"),
  blobSequence("BLOB_SEQUENCE");

  const TimeSeriesValueTypeAiplatformV1beta1(this.value);
  final String value;

  static TimeSeriesValueTypeAiplatformV1beta1 fromValue(String value) {
    for (final item in TimeSeriesValueTypeAiplatformV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeSeriesValueTypeAiplatformV1beta1 value: $value');
  }
}

