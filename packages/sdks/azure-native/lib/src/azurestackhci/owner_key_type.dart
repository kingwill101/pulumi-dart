/// Owner key type
enum OwnerKeyType {
  microsoftManaged("MicrosoftManaged");

  const OwnerKeyType(this.wireValue);
  final String wireValue;

  static OwnerKeyType fromValue(String value) {
    for (final item in OwnerKeyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown OwnerKeyType value: $value');
  }
}

