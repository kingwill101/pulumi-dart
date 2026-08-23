/// Strategy for applying VPC endpoint specs.
enum VpcEndpointStrategy {
  valueLegacy("Legacy"),
  valueAuto("Auto");

  const VpcEndpointStrategy(this.wireValue);
  final String wireValue;

  static VpcEndpointStrategy fromValue(String value) {
    for (final item in VpcEndpointStrategy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VpcEndpointStrategy value: $value');
  }
}
