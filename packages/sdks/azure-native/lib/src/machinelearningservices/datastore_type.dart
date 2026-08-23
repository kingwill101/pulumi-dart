/// Enum to determine the datastore contents type.
enum DatastoreType {
  azureBlob("AzureBlob"),
  azureDataLakeGen1("AzureDataLakeGen1"),
  azureDataLakeGen2("AzureDataLakeGen2"),
  azureFile("AzureFile"),
  oneLake("OneLake");

  const DatastoreType(this.wireValue);
  final String wireValue;

  static DatastoreType fromValue(String value) {
    for (final item in DatastoreType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatastoreType value: $value');
  }
}
