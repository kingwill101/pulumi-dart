/// Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
enum FeatureGroupFeatureValueType2 {
  valueTypeUnspecified("VALUE_TYPE_UNSPECIFIED"),
  bool("BOOL"),
  boolArray("BOOL_ARRAY"),
  double("DOUBLE"),
  doubleArray("DOUBLE_ARRAY"),
  int64("INT64"),
  int64Array("INT64_ARRAY"),
  string("STRING"),
  stringArray("STRING_ARRAY"),
  bytes("BYTES");

  const FeatureGroupFeatureValueType2(this.value);
  final String value;

  static FeatureGroupFeatureValueType2 fromValue(String value) {
    for (final item in FeatureGroupFeatureValueType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureGroupFeatureValueType2 value: $value');
  }
}
