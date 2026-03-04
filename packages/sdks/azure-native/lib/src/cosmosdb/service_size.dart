/// Instance type for the service.
enum ServiceSize {
  valueCosmosD4s("Cosmos.D4s"),
  valueCosmosD8s("Cosmos.D8s"),
  valueCosmosD16s("Cosmos.D16s");

  const ServiceSize(this.wireValue);
  final String wireValue;

  static ServiceSize fromValue(String value) {
    for (final item in ServiceSize.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceSize value: $value');
  }
}
