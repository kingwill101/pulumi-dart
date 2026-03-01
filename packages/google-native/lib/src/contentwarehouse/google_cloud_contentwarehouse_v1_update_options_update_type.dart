/// Type for update.
enum GoogleCloudContentwarehouseV1UpdateOptionsUpdateType {
  updateTypeUnspecified("UPDATE_TYPE_UNSPECIFIED"),
  updateTypeReplace("UPDATE_TYPE_REPLACE"),
  updateTypeMerge("UPDATE_TYPE_MERGE"),
  updateTypeInsertPropertiesByNames("UPDATE_TYPE_INSERT_PROPERTIES_BY_NAMES"),
  updateTypeReplacePropertiesByNames("UPDATE_TYPE_REPLACE_PROPERTIES_BY_NAMES"),
  updateTypeDeletePropertiesByNames("UPDATE_TYPE_DELETE_PROPERTIES_BY_NAMES"),
  updateTypeMergeAndReplaceOrInsertPropertiesByNames(
    "UPDATE_TYPE_MERGE_AND_REPLACE_OR_INSERT_PROPERTIES_BY_NAMES",
  );

  const GoogleCloudContentwarehouseV1UpdateOptionsUpdateType(this.value);
  final String value;

  static GoogleCloudContentwarehouseV1UpdateOptionsUpdateType fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudContentwarehouseV1UpdateOptionsUpdateType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudContentwarehouseV1UpdateOptionsUpdateType value: $value',
    );
  }
}
