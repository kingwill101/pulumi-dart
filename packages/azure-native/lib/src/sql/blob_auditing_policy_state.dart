/// Specifies the state of the audit. If state is Enabled, storageEndpoint or isAzureMonitorTargetEnabled are required.
enum BlobAuditingPolicyState {
  valueEnabled("Enabled"),
  valueDisabled("Disabled");

  const BlobAuditingPolicyState(this.value);
  final String value;

  static BlobAuditingPolicyState fromValue(String value) {
    for (final item in BlobAuditingPolicyState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BlobAuditingPolicyState value: $value');
  }
}

