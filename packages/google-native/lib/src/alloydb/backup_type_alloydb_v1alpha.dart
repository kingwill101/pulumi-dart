/// The backup type, which suggests the trigger for the backup.
enum BackupTypeAlloydbV1alpha {
  typeUnspecified("TYPE_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  automated("AUTOMATED"),
  continuous("CONTINUOUS");

  const BackupTypeAlloydbV1alpha(this.value);
  final String value;

  static BackupTypeAlloydbV1alpha fromValue(String value) {
    for (final item in BackupTypeAlloydbV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupTypeAlloydbV1alpha value: $value');
  }
}

