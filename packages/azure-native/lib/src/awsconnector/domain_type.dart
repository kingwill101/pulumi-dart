/// Property value
enum DomainType {
  standard("standard"),
  vpc("vpc");

  const DomainType(this.value);
  final String value;

  static DomainType fromValue(String value) {
    for (final item in DomainType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DomainType value: $value');
  }
}

