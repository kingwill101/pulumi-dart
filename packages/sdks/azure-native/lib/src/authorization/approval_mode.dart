/// The type of rule
enum ApprovalMode {
  valueSingleStage("SingleStage"),
  valueSerial("Serial"),
  valueParallel("Parallel"),
  valueNoApproval("NoApproval");

  const ApprovalMode(this.value);
  final String value;

  static ApprovalMode fromValue(String value) {
    for (final item in ApprovalMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApprovalMode value: $value');
  }
}

