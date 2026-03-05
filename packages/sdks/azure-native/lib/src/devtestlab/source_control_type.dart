/// The artifact source's type.
enum SourceControlType {
  vsoGit("VsoGit"),
  gitHub("GitHub"),
  storageAccount("StorageAccount");

  const SourceControlType(this.wireValue);
  final String wireValue;

  static SourceControlType fromValue(String value) {
    for (final item in SourceControlType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SourceControlType value: $value');
  }
}

