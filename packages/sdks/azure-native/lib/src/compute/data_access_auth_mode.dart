/// Additional authentication requirements when exporting or uploading to a disk or snapshot.
enum DataAccessAuthMode {
  azureActiveDirectory("AzureActiveDirectory"),
  none("None");

  const DataAccessAuthMode(this.value);
  final String value;

  static DataAccessAuthMode fromValue(String value) {
    for (final item in DataAccessAuthMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataAccessAuthMode value: $value');
  }
}

