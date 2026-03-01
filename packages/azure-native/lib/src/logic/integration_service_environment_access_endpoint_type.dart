/// The access endpoint type.
enum IntegrationServiceEnvironmentAccessEndpointType {
  valueNotSpecified("NotSpecified"),
  valueExternal("External"),
  valueInternal("Internal");

  const IntegrationServiceEnvironmentAccessEndpointType(this.value);
  final String value;

  static IntegrationServiceEnvironmentAccessEndpointType fromValue(String value) {
    for (final item in IntegrationServiceEnvironmentAccessEndpointType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IntegrationServiceEnvironmentAccessEndpointType value: $value');
  }
}

