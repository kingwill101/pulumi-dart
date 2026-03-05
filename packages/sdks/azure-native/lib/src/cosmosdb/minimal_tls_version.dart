/// Indicates the minimum allowed Tls version. The default value is Tls 1.2. Cassandra and Mongo APIs only work with Tls 1.2.
enum MinimalTlsVersion {
  valueTls("Tls"),
  valueTls11("Tls11"),
  valueTls12("Tls12");

  const MinimalTlsVersion(this.wireValue);
  final String wireValue;

  static MinimalTlsVersion fromValue(String value) {
    for (final item in MinimalTlsVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MinimalTlsVersion value: $value');
  }
}

