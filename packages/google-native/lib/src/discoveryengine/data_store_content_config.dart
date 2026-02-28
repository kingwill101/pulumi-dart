/// Immutable. The content config of the data store. If this field is unset, the server behavior defaults to ContentConfig.NO_CONTENT.
enum DataStoreContentConfig {
  contentConfigUnspecified("CONTENT_CONFIG_UNSPECIFIED"),
  noContent("NO_CONTENT"),
  contentRequired("CONTENT_REQUIRED"),
  publicWebsite("PUBLIC_WEBSITE");

  const DataStoreContentConfig(this.value);
  final String value;

  static DataStoreContentConfig fromValue(String value) {
    for (final item in DataStoreContentConfig.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataStoreContentConfig value: $value');
  }
}

