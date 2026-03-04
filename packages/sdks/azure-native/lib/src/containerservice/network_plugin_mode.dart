/// The mode the network plugin should use.
enum NetworkPluginMode {
  valueOverlay("overlay");

  const NetworkPluginMode(this.wireValue);
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
