/// Gets or sets the target storage access type.
enum TargetStorageAccessType {
  valueShared("Shared"),
  valueExclusive("Exclusive");

  const TargetStorageAccessType(this.wireValue);
  final String wireValue;

  static TargetStorageAccessType fromValue(String value) {
    for (final item in TargetStorageAccessType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TargetStorageAccessType value: $value');
  }
}
