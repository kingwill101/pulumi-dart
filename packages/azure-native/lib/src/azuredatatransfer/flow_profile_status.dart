/// The operational status of the FlowProfile.
enum FlowProfileStatus {
  obsolete("Obsolete"),
  enabled("Enabled");

  const FlowProfileStatus(this.value);
  final String value;

  static FlowProfileStatus fromValue(String value) {
    for (final item in FlowProfileStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FlowProfileStatus value: $value');
  }
}

