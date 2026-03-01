/// The service level of the elastic capacity pool
enum ElasticServiceLevel {
  zoneRedundant("ZoneRedundant");

  const ElasticServiceLevel(this.value);
  final String value;

  static ElasticServiceLevel fromValue(String value) {
    for (final item in ElasticServiceLevel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ElasticServiceLevel value: $value');
  }
}

