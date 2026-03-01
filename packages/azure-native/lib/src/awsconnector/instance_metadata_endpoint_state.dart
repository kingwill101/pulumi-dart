/// Property value
enum InstanceMetadataEndpointState {
  disabled("disabled"),
  enabled("enabled");

  const InstanceMetadataEndpointState(this.value);
  final String value;

  static InstanceMetadataEndpointState fromValue(String value) {
    for (final item in InstanceMetadataEndpointState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMetadataEndpointState value: $value');
  }
}

