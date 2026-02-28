/// Type of the model source.
enum GoogleCloudDatacatalogV1VertexModelSourceInfoSourceType {
  modelSourceTypeUnspecified("MODEL_SOURCE_TYPE_UNSPECIFIED"),
  automl("AUTOML"),
  custom("CUSTOM"),
  bqml("BQML"),
  modelGarden("MODEL_GARDEN");

  const GoogleCloudDatacatalogV1VertexModelSourceInfoSourceType(this.value);
  final String value;

  static GoogleCloudDatacatalogV1VertexModelSourceInfoSourceType fromValue(
      String value) {
    for (final item
        in GoogleCloudDatacatalogV1VertexModelSourceInfoSourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GoogleCloudDatacatalogV1VertexModelSourceInfoSourceType value: $value');
  }
}
