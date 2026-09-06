import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode of the connected registry resource that indicates the permissions of the registry.
enum ConnectedRegistryMode implements pulumi.PulumiEnum<String> {
  valueReadWrite("ReadWrite"),
  valueReadOnly("ReadOnly"),
  valueRegistry("Registry"),
  valueMirror("Mirror");

  const ConnectedRegistryMode(this.wireValue);
  @override
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
