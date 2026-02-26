/// The backup type, which suggests the trigger for the backup.
enum BackupType3 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  automated("AUTOMATED"),
  continuous("CONTINUOUS");

  const BackupType3(this.value);
  final String value;

  static BackupType3 fromValue(String value) {
    for (final item in BackupType3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupType3 value: $value');
  }
}
