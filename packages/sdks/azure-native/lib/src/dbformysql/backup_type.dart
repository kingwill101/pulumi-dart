enum BackupType {
  fULL("FULL");

  const BackupType(this.value);
  final String value;

  static BackupType fromValue(String value) {
    for (final item in BackupType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupType value: $value');
  }
}

