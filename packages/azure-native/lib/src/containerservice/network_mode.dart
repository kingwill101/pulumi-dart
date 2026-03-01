/// The network mode Azure CNI is configured with. This cannot be specified if networkPlugin is anything other than 'azure'.
enum NetworkMode {
  valueTransparent("transparent"),
  valueBridge("bridge");

  const NetworkMode(this.value);
  final String value;

  static NetworkMode fromValue(String value) {
    for (final item in NetworkMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkMode value: $value');
  }
}

