/// The endpoint type.
enum EndpointTypeResourceType {
  notSpecified("NotSpecified"),
  canary("Canary"),
  production("Production"),
  testInProduction("TestInProduction");

  const EndpointTypeResourceType(this.value);
  final String value;

  static EndpointTypeResourceType fromValue(String value) {
    for (final item in EndpointTypeResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EndpointTypeResourceType value: $value');
  }
}

