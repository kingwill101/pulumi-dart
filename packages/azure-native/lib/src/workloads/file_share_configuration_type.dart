/// The type of file share config, eg: Mount/CreateAndMount/Skip.
enum FileShareConfigurationType {
  skip("Skip"),
  createAndMount("CreateAndMount"),
  mount("Mount");

  const FileShareConfigurationType(this.value);
  final String value;

  static FileShareConfigurationType fromValue(String value) {
    for (final item in FileShareConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FileShareConfigurationType value: $value');
  }
}

