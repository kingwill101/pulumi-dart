/// Specifies the assignment type and execution of the configuration. Possible values are Audit, DeployAndAutoCorrect, ApplyAndAutoCorrect and ApplyAndMonitor.
enum AssignmentType {
  audit("Audit"),
  deployAndAutoCorrect("DeployAndAutoCorrect"),
  applyAndAutoCorrect("ApplyAndAutoCorrect"),
  applyAndMonitor("ApplyAndMonitor");

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

