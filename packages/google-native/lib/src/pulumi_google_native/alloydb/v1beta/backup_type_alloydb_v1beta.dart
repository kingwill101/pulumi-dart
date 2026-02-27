/// The backup type, which suggests the trigger for the backup.
enum BackupTypeAlloydbV1beta {
  typeUnspecified("TYPE_UNSPECIFIED"),
  onDemand("ON_DEMAND"),
  automated("AUTOMATED"),
  continuous("CONTINUOUS");

  const BackupTypeAlloydbV1beta(this.value);
  final String value;

  static BackupTypeAlloydbV1beta fromValue(String value) {
    for (final item in BackupTypeAlloydbV1beta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupTypeAlloydbV1beta value: $value');
  }
}
