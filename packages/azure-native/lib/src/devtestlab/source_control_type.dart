/// The artifact source's type.
enum SourceControlType {
  vsoGit("VsoGit"),
  gitHub("GitHub"),
  storageAccount("StorageAccount");

  const SourceControlType(this.value);
  final String value;

  static SourceControlType fromValue(String value) {
    for (final item in SourceControlType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceControlType value: $value');
  }
}

