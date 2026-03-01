/// The approver type.
enum JitApproverType {
  valueUser("user"),
  valueGroup("group");

  const JitApproverType(this.value);
  final String value;

  static JitApproverType fromValue(String value) {
    for (final item in JitApproverType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown JitApproverType value: $value');
  }
}

