/// Stream governance configuration
enum Package {
  eSSENTIALS("ESSENTIALS"),
  aDVANCED("ADVANCED");

  const Package(this.wireValue);
  final String wireValue;

  static Package fromValue(String value) {
    for (final item in Package.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Package value: $value');
  }
}

