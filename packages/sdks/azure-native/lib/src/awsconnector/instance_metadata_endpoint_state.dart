/// Property value
enum InstanceMetadataEndpointState {
  disabled("disabled"),
  enabled("enabled");

  const InstanceMetadataEndpointState(this.wireValue);
  final String wireValue;

  static InstanceMetadataEndpointState fromValue(String value) {
    for (final item in InstanceMetadataEndpointState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMetadataEndpointState value: $value');
  }
}
