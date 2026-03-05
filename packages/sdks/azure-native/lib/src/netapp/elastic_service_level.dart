/// The service level of the elastic capacity pool
enum ElasticServiceLevel {
  zoneRedundant("ZoneRedundant");

  const ElasticServiceLevel(this.wireValue);
  final String wireValue;

  static ElasticServiceLevel fromValue(String value) {
    for (final item in ElasticServiceLevel.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticServiceLevel value: $value');
  }
}

