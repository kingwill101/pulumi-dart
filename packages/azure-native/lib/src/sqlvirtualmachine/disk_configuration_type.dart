/// Disk configuration to apply to SQL Server.
enum DiskConfigurationType {
  nEW("NEW"),
  eXTEND("EXTEND"),
  aDD("ADD");

  const DiskConfigurationType(this.value);
  final String value;

  static DiskConfigurationType fromValue(String value) {
    for (final item in DiskConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DiskConfigurationType value: $value');
  }
}

