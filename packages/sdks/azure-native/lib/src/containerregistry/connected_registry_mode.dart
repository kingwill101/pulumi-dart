/// The mode of the connected registry resource that indicates the permissions of the registry.
enum ConnectedRegistryMode {
  valueReadWrite("ReadWrite"),
  valueReadOnly("ReadOnly"),
  valueRegistry("Registry"),
  valueMirror("Mirror");

  const ConnectedRegistryMode(this.wireValue);
  final String wireValue;

  static ConnectedRegistryMode fromValue(String value) {
    for (final item in ConnectedRegistryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ConnectedRegistryMode value: $value');
  }
}

