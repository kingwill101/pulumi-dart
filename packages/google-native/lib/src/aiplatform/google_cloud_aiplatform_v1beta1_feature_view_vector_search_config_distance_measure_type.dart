/// Optional. The distance measure used in nearest neighbor search.
enum GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType {
  distanceMeasureTypeUnspecified("DISTANCE_MEASURE_TYPE_UNSPECIFIED"),
  squaredL2Distance("SQUARED_L2_DISTANCE"),
  cosineDistance("COSINE_DISTANCE"),
  dotProductDistance("DOT_PRODUCT_DISTANCE");

  const GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType(
    this.value,
  );
  final String value;

  static GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType
  fromValue(String value) {
    for (final item
        in GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudAiplatformV1beta1FeatureViewVectorSearchConfigDistanceMeasureType value: $value',
    );
  }
}
