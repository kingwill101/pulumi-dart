/// The mode the network plugin should use.
enum NetworkPluginMode {
  valueOverlay("overlay");

  const NetworkPluginMode(this.value);
  final String value;

  static NetworkPluginMode fromValue(String value) {
    for (final item in NetworkPluginMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkPluginMode value: $value');
  }
}

