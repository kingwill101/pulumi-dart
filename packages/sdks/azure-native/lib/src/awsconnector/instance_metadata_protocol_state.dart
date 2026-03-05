/// Property value
enum InstanceMetadataProtocolState {
  disabled("disabled"),
  enabled("enabled");

  const InstanceMetadataProtocolState(this.wireValue);
  final String wireValue;

  static InstanceMetadataProtocolState fromValue(String value) {
    for (final item in InstanceMetadataProtocolState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMetadataProtocolState value: $value');
  }
}

