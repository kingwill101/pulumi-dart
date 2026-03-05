/// [Required] Storage type backing the datastore.
enum DatastoreType {
  valueAzureBlob("AzureBlob"),
  valueAzureDataLakeGen1("AzureDataLakeGen1"),
  valueAzureDataLakeGen2("AzureDataLakeGen2"),
  valueAzureFile("AzureFile"),
  valueOneLake("OneLake");

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

