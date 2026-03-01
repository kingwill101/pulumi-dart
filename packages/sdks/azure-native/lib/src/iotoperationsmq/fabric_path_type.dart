/// Fabric path type to use.
enum FabricPathType {
  files("files"),
  tables("tables");

  const FabricPathType(this.value);
  final String value;

  static FabricPathType fromValue(String value) {
    for (final item in FabricPathType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FabricPathType value: $value');
  }
}

