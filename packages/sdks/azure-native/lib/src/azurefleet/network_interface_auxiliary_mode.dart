import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies whether the Auxiliary mode is enabled for the Network Interface
/// resource.
enum NetworkInterfaceAuxiliaryMode implements pulumi.PulumiEnum<String> {
  none("None"),
  acceleratedConnections("AcceleratedConnections"),
  floating("Floating");

  const NetworkInterfaceAuxiliaryMode(this.wireValue);
  @override
  final String wireValue;

  static NetworkInterfaceAuxiliaryMode fromValue(String value) {
    for (final item in NetworkInterfaceAuxiliaryMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkInterfaceAuxiliaryMode value: $value');
  }
}
