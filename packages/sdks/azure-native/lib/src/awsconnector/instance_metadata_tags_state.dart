/// Property value
enum InstanceMetadataTagsState {
  disabled("disabled"),
  enabled("enabled");

  const InstanceMetadataTagsState(this.value);
  final String value;

  static InstanceMetadataTagsState fromValue(String value) {
    for (final item in InstanceMetadataTagsState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMetadataTagsState value: $value');
  }
}

