/// Type of actions that can be performed.
enum AclActionType {
  valueDrop("Drop"),
  valueCount("Count"),
  valueLog("Log");

  const AclActionType(this.value);
  final String value;

  static AclActionType fromValue(String value) {
    for (final item in AclActionType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AclActionType value: $value');
  }
}

