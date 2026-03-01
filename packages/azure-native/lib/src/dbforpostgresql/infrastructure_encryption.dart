/// Status showing whether the server enabled infrastructure encryption.
enum InfrastructureEncryption {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const InfrastructureEncryption(this.value);
  final String value;

  static InfrastructureEncryption fromValue(String value) {
    for (final item in InfrastructureEncryption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InfrastructureEncryption value: $value');
  }
}

