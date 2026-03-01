/// Source Kind to pull the configuration data from.
enum SourceKindType {
  valueGitRepository("GitRepository"),
  valueBucket("Bucket"),
  valueAzureBlob("AzureBlob");

  const SourceKindType(this.value);
  final String value;

  static SourceKindType fromValue(String value) {
    for (final item in SourceKindType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceKindType value: $value');
  }
}

