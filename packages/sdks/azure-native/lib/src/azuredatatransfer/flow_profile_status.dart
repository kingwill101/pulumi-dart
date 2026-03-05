/// The operational status of the FlowProfile.
enum FlowProfileStatus {
  obsolete("Obsolete"),
  enabled("Enabled");

  const FlowProfileStatus(this.wireValue);
  final String wireValue;

  static FlowProfileStatus fromValue(String value) {
    for (final item in FlowProfileStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FlowProfileStatus value: $value');
  }
}

