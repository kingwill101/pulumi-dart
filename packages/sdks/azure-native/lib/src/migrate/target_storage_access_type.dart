/// Gets or sets the target storage access type.
enum TargetStorageAccessType {
  valueShared("Shared"),
  valueExclusive("Exclusive");

  const TargetStorageAccessType(this.value);
  final String value;

  static TargetStorageAccessType fromValue(String value) {
    for (final item in TargetStorageAccessType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetStorageAccessType value: $value');
  }
}

