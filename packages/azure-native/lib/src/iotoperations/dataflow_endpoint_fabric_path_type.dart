/// Type of location of the data in the workspace. Can be either tables or files.
enum DataflowEndpointFabricPathType {
  files("Files"),
  tables("Tables");

  const DataflowEndpointFabricPathType(this.value);
  final String value;

  static DataflowEndpointFabricPathType fromValue(String value) {
    for (final item in DataflowEndpointFabricPathType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DataflowEndpointFabricPathType value: $value');
  }
}

