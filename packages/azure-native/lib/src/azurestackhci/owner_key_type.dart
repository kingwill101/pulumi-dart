/// Owner key type
enum OwnerKeyType {
  microsoftManaged("MicrosoftManaged");

  const OwnerKeyType(this.value);
  final String value;

  static OwnerKeyType fromValue(String value) {
    for (final item in OwnerKeyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OwnerKeyType value: $value');
  }
}

