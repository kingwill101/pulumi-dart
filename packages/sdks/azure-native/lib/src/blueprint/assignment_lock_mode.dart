/// Lock mode.
enum AssignmentLockMode {
  valueNone("None"),
  valueAllResourcesReadOnly("AllResourcesReadOnly"),
  valueAllResourcesDoNotDelete("AllResourcesDoNotDelete");

  const AssignmentLockMode(this.wireValue);
  final String wireValue;

  static AssignmentLockMode fromValue(String value) {
    for (final item in AssignmentLockMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssignmentLockMode value: $value');
  }
}

