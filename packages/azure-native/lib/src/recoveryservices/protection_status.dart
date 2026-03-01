/// Backup state of this backup item.
enum ProtectionStatus {
  valueInvalid("Invalid"),
  valueNotProtected("NotProtected"),
  valueProtecting("Protecting"),
  valueProtected("Protected"),
  valueProtectionFailed("ProtectionFailed");

  const ProtectionStatus(this.value);
  final String value;

  static ProtectionStatus fromValue(String value) {
    for (final item in ProtectionStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProtectionStatus value: $value');
  }
}

