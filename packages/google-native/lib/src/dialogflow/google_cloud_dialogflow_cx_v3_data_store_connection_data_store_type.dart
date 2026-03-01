/// The type of the connected data store.
enum GoogleCloudDialogflowCxV3DataStoreConnectionDataStoreType {
  dataStoreTypeUnspecified("DATA_STORE_TYPE_UNSPECIFIED"),
  publicWeb("PUBLIC_WEB"),
  unstructured("UNSTRUCTURED"),
  structured("STRUCTURED");

  const GoogleCloudDialogflowCxV3DataStoreConnectionDataStoreType(this.value);
  final String value;

  static GoogleCloudDialogflowCxV3DataStoreConnectionDataStoreType fromValue(
    String value,
  ) {
    for (final item
        in GoogleCloudDialogflowCxV3DataStoreConnectionDataStoreType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudDialogflowCxV3DataStoreConnectionDataStoreType value: $value',
    );
  }
}
