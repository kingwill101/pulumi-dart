/// Type of access to be allowed for the user.
enum ShareAccessType {
  valueChange("Change"),
  valueRead("Read"),
  valueCustom("Custom");

  const ShareAccessType(this.value);
  final String value;

  static ShareAccessType fromValue(String value) {
    for (final item in ShareAccessType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ShareAccessType value: $value');
  }
}

