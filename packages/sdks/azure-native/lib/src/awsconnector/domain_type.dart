/// Property value
enum DomainType {
  standard("standard"),
  vpc("vpc");

  const DomainType(this.wireValue);
  final String wireValue;

  static DomainType fromValue(String value) {
    for (final item in DomainType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DomainType value: $value');
  }
}

