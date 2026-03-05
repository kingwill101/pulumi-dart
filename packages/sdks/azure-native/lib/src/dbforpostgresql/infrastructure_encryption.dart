/// Status showing whether the server enabled infrastructure encryption.
enum InfrastructureEncryption {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const InfrastructureEncryption(this.wireValue);
  final String wireValue;

  static InfrastructureEncryption fromValue(String value) {
    for (final item in InfrastructureEncryption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InfrastructureEncryption value: $value');
  }
}

