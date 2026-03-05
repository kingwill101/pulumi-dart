enum BackupType {
  fULL("FULL");

  const BackupType(this.wireValue);
  final String wireValue;

  static BackupType fromValue(String value) {
    for (final item in BackupType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackupType value: $value');
  }
}

