/// Property value
enum InstanceMetadataTagsState {
  disabled("disabled"),
  enabled("enabled");

  const InstanceMetadataTagsState(this.wireValue);
  final String wireValue;

  static InstanceMetadataTagsState fromValue(String value) {
    for (final item in InstanceMetadataTagsState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMetadataTagsState value: $value');
  }
}

