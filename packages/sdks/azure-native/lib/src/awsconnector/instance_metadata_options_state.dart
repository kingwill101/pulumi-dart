/// Property value
enum InstanceMetadataOptionsState {
  applied("applied"),
  pending("pending");

  const InstanceMetadataOptionsState(this.value);
  final String value;

  static InstanceMetadataOptionsState fromValue(String value) {
    for (final item in InstanceMetadataOptionsState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMetadataOptionsState value: $value');
  }
}

