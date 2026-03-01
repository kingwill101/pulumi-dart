/// Major version of PostgreSQL database engine.
enum PostgresMajorVersion {
  resource18("18"),
  resource17("17"),
  resource16("16"),
  resource15("15"),
  resource14("14"),
  resource13("13"),
  resource12("12"),
  resource11("11");

  const PostgresMajorVersion(this.value);
  final String value;

  static PostgresMajorVersion fromValue(String value) {
    for (final item in PostgresMajorVersion.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PostgresMajorVersion value: $value');
  }
}

