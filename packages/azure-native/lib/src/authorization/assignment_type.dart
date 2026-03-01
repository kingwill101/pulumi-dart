/// The type of policy assignment. Possible values are NotSpecified, System, SystemHidden, and Custom. Immutable.
enum AssignmentType {
  valueNotSpecified("NotSpecified"),
  valueSystem("System"),
  valueSystemHidden("SystemHidden"),
  valueCustom("Custom");

  const AssignmentType(this.value);
  final String value;

  static AssignmentType fromValue(String value) {
    for (final item in AssignmentType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssignmentType value: $value');
  }
}

