/// Optional. Option to specify the tool to fetch the source file for the build.
enum StorageSourceSourceFetcher {
  sourceFetcherUnspecified("SOURCE_FETCHER_UNSPECIFIED"),
  gsutil("GSUTIL"),
  gcsFetcher("GCS_FETCHER");

  const StorageSourceSourceFetcher(this.value);
  final String value;

  static StorageSourceSourceFetcher fromValue(String value) {
    for (final item in StorageSourceSourceFetcher.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StorageSourceSourceFetcher value: $value');
  }
}
