import 'package:pulumi/pulumi.dart' as pulumi;

/// The mode the network plugin should use.
enum NetworkPluginMode implements pulumi.PulumiEnum<String> {
  valueOverlay("overlay");

  const NetworkPluginMode(this.wireValue);
  @override
  final String wireValue;

  static NetworkPluginMode fromValue(String value) {
    for (final item in NetworkPluginMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPluginMode value: $value');
  }
}
