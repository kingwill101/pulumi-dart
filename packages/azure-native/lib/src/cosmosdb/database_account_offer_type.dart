/// The offer type for the database
enum DatabaseAccountOfferType {
  valueStandard("Standard");

  const DatabaseAccountOfferType(this.value);
  final String value;

  static DatabaseAccountOfferType fromValue(String value) {
    for (final item in DatabaseAccountOfferType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseAccountOfferType value: $value');
  }
}

