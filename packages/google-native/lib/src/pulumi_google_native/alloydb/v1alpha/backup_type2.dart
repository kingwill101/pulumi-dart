/// The backup type, which suggests the trigger for the backup.
enum BackupType2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  automated("AUTOMATED"),
  continuous("CONTINUOUS");

  const BackupType2(this.value);
  final String value;

  static BackupType2 fromValue(String value) {
    for (final item in BackupType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupType2 value: $value');
  }
}
