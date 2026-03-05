/// The offer type for the database
enum DatabaseAccountOfferType {
  valueStandard("Standard");

  const DatabaseAccountOfferType(this.wireValue);
  final String wireValue;

  static DatabaseAccountOfferType fromValue(String value) {
    for (final item in DatabaseAccountOfferType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DatabaseAccountOfferType value: $value');
  }
}

