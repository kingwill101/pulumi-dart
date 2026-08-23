/// The type of rule
enum ApprovalMode {
  singleStage("SingleStage"),
  serial("Serial"),
  parallel("Parallel"),
  noApproval("NoApproval");

  const ApprovalMode(this.wireValue);
  final String wireValue;

  static ApprovalMode fromValue(String value) {
    for (final item in ApprovalMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ApprovalMode value: $value');
  }
}
