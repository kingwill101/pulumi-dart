/// Immutable. Only applicable for Vertex AI Feature Store (Legacy). Type of Feature value.
enum FeatureStoreFeatureValueTypeAiplatformV1beta1 {
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

  const FeatureStoreFeatureValueTypeAiplatformV1beta1(this.value);
  final String value;

  static FeatureStoreFeatureValueTypeAiplatformV1beta1 fromValue(String value) {
    for (final item in FeatureStoreFeatureValueTypeAiplatformV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown FeatureStoreFeatureValueTypeAiplatformV1beta1 value: $value',
    );
  }
}
