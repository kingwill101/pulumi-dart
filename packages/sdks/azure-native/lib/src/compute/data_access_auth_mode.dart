/// Additional authentication requirements when exporting or uploading to a disk or snapshot.
enum DataAccessAuthMode {
  azureActiveDirectory("AzureActiveDirectory"),
  none("None");

  const DataAccessAuthMode(this.wireValue);
  final String wireValue;

  static DataAccessAuthMode fromValue(String value) {
    for (final item in DataAccessAuthMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataAccessAuthMode value: $value');
  }
}
