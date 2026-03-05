/// Property value
enum InstanceMetadataOptionsState {
  applied("applied"),
  pending("pending");

  const InstanceMetadataOptionsState(this.wireValue);
  final String wireValue;

  static InstanceMetadataOptionsState fromValue(String value) {
    for (final item in InstanceMetadataOptionsState.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InstanceMetadataOptionsState value: $value');
  }
}

