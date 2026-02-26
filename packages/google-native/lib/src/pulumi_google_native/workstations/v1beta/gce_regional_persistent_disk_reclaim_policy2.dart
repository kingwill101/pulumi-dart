/// Optional. Whether the persistent disk should be deleted when the workstation is deleted. Valid values are `DELETE` and `RETAIN`. Defaults to `DELETE`.
enum GceRegionalPersistentDiskReclaimPolicy2 {
  reclaimPolicyUnspecified("RECLAIM_POLICY_UNSPECIFIED"),
  delete("DELETE"),
  retain("RETAIN");

  const GceRegionalPersistentDiskReclaimPolicy2(this.value);
  final String value;

  static GceRegionalPersistentDiskReclaimPolicy2 fromValue(String value) {
    for (final item in GceRegionalPersistentDiskReclaimPolicy2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GceRegionalPersistentDiskReclaimPolicy2 value: $value');
  }
}
