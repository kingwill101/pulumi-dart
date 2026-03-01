/// The type of backup, VM, SQL or HANA.
enum BackupType {
  valueVM("VM"),
  valueSQL("SQL"),
  valueHANA("HANA");

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

