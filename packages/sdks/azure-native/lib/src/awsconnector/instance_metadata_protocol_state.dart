/// Property value
enum InstanceMetadataProtocolState {
  disabled("disabled"),
  enabled("enabled");

  const InstanceMetadataProtocolState(this.value);
  final String value;

  static InstanceMetadataProtocolState fromValue(String value) {
    for (final item in InstanceMetadataProtocolState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMetadataProtocolState value: $value');
  }
}

