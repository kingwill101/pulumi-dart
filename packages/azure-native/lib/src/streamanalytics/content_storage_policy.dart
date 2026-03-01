/// Valid values are JobStorageAccount and SystemAccount. If set to JobStorageAccount, this requires the user to also specify jobStorageAccount property. .
enum ContentStoragePolicy {
  valueSystemAccount("SystemAccount"),
  valueJobStorageAccount("JobStorageAccount");

  const ContentStoragePolicy(this.value);
  final String value;

  static ContentStoragePolicy fromValue(String value) {
    for (final item in ContentStoragePolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContentStoragePolicy value: $value');
  }
}

