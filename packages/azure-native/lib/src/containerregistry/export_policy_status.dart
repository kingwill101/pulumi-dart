/// The value that indicates whether the policy is enabled or not.
enum ExportPolicyStatus {
  valueEnabled("enabled"),
  valueDisabled("disabled");

  const ExportPolicyStatus(this.value);
  final String value;

  static ExportPolicyStatus fromValue(String value) {
    for (final item in ExportPolicyStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExportPolicyStatus value: $value');
  }
}

