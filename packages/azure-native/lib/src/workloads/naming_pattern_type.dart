/// The pattern type to be used for resource naming.
enum NamingPatternType {
  fullResourceName("FullResourceName");

  const NamingPatternType(this.value);
  final String value;

  static NamingPatternType fromValue(String value) {
    for (final item in NamingPatternType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NamingPatternType value: $value');
  }
}

