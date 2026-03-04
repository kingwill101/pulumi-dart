/// The access endpoint type.
enum IntegrationServiceEnvironmentAccessEndpointType {
  valueNotSpecified("NotSpecified"),
  valueExternal("External"),
  valueInternal("Internal");

  const IntegrationServiceEnvironmentAccessEndpointType(this.wireValue);
  final String wireValue;

  static IntegrationServiceEnvironmentAccessEndpointType fromValue(
    String value,
  ) {
    for (final item in IntegrationServiceEnvironmentAccessEndpointType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown IntegrationServiceEnvironmentAccessEndpointType value: $value',
    );
  }
}
