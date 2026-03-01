/// Stream governance configuration
enum Package {
  eSSENTIALS("ESSENTIALS"),
  aDVANCED("ADVANCED");

  const Package(this.value);
  final String value;

  static Package fromValue(String value) {
    for (final item in Package.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Package value: $value');
  }
}

