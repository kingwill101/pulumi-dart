/// The endpoint type.
enum EndpointType {
  notSpecified("NotSpecified"),
  canary("Canary"),
  production("Production"),
  testInProduction("TestInProduction");

  const EndpointType(this.value);
  final String value;

  static EndpointType fromValue(String value) {
    for (final item in EndpointType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointType value: $value');
  }
}

