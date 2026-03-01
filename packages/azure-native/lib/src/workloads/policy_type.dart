/// Type of backup policy type
enum PolicyType {
  valueInvalid("Invalid"),
  valueFull("Full"),
  valueDifferential("Differential"),
  valueLog("Log"),
  valueCopyOnlyFull("CopyOnlyFull"),
  valueIncremental("Incremental"),
  valueSnapshotFull("SnapshotFull"),
  valueSnapshotCopyOnlyFull("SnapshotCopyOnlyFull");

  const PolicyType(this.value);
  final String value;

  static PolicyType fromValue(String value) {
    for (final item in PolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PolicyType value: $value');
  }
}

