enum ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch {
  doNotRetroactivelyApply("DO_NOT_RETROACTIVELY_APPLY"),
  retroactivelyApply("RETROACTIVELY_APPLY"),
  unspecifiedOnPolicySwitch("UNSPECIFIED_ON_POLICY_SWITCH");

  const ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch(
    this.value,
  );
  final String value;

  static ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch
  fromValue(String value) {
    for (final item
        in ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ResourcePolicySnapshotSchedulePolicyRetentionPolicyOnPolicySwitch value: $value',
    );
  }
}
