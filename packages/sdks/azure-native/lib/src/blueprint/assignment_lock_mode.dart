/// Lock mode.
enum AssignmentLockMode {
  valueNone("None"),
  valueAllResourcesReadOnly("AllResourcesReadOnly"),
  valueAllResourcesDoNotDelete("AllResourcesDoNotDelete");

  const AssignmentLockMode(this.value);
  final String value;

  static AssignmentLockMode fromValue(String value) {
    for (final item in AssignmentLockMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AssignmentLockMode value: $value');
  }
}

