/// Required. Immutable. Type of TensorboardTimeSeries value.
enum TimeSeriesValueType2 {
  valueTypeUnspecified("VALUE_TYPE_UNSPECIFIED"),
  scalar("SCALAR"),
  tensor("TENSOR"),
  blobSequence("BLOB_SEQUENCE");

  const TimeSeriesValueType2(this.value);
  final String value;

  static TimeSeriesValueType2 fromValue(String value) {
    for (final item in TimeSeriesValueType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TimeSeriesValueType2 value: $value');
  }
}
