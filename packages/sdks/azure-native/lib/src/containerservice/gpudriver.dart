/// Whether to install GPU drivers. When it's not specified, default is Install.
enum GPUDriver {
  valueInstall("Install"),
  valueNone("None");

  const GPUDriver(this.value);
  final String value;

  static GPUDriver fromValue(String value) {
    for (final item in GPUDriver.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GPUDriver value: $value');
  }
}

