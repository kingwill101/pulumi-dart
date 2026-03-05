/// Type of encryption key used for key encryption.
enum KekType {
  valueMicrosoftManaged("MicrosoftManaged"),
  valueCustomerManaged("CustomerManaged");

  const KekType(this.wireValue);
  final String wireValue;

  static KekType fromValue(String value) {
    for (final item in KekType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown KekType value: $value');
  }
}

