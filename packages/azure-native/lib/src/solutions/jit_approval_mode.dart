/// JIT approval mode.
enum JitApprovalMode {
  valueNotSpecified("NotSpecified"),
  valueAutoApprove("AutoApprove"),
  valueManualApprove("ManualApprove");

  const JitApprovalMode(this.value);
  final String value;

  static JitApprovalMode fromValue(String value) {
    for (final item in JitApprovalMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JitApprovalMode value: $value');
  }
}

