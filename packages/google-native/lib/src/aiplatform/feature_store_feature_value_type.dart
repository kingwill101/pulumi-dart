/// Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
enum FeatureStoreFeatureValueType {
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

  const FeatureStoreFeatureValueType(this.value);
  final String value;

  static FeatureStoreFeatureValueType fromValue(String value) {
    for (final item in FeatureStoreFeatureValueType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FeatureStoreFeatureValueType value: $value');
  }
}
