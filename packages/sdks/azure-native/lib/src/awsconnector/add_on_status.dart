/// Status of the Addon
enum AddOnStatus {
  disabled("Disabled"),
  disabling("Disabling"),
  enabled("Enabled"),
  enabling("Enabling"),
  failed("Failed"),
  terminated("Terminated"),
  terminating("Terminating");

  const AddOnStatus(this.value);
  final String value;

  static AddOnStatus fromValue(String value) {
    for (final item in AddOnStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddOnStatus value: $value');
  }
}

