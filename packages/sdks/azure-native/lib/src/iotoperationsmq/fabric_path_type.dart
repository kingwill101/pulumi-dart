/// Fabric path type to use.
enum FabricPathType {
  files("files"),
  tables("tables");

  const FabricPathType(this.wireValue);
  final String wireValue;

  static FabricPathType fromValue(String value) {
    for (final item in FabricPathType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FabricPathType value: $value');
  }
}

