/// Type of address based on its usage context.
enum AddressClassification {
  shipping("Shipping"),
  site("Site");

  const AddressClassification(this.wireValue);
  final String wireValue;

  static AddressClassification fromValue(String value) {
    for (final item in AddressClassification.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AddressClassification value: $value');
  }
}

