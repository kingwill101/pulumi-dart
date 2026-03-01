/// Instance type for the service.
enum ServiceSize {
  valueCosmosD4s("Cosmos.D4s"),
  valueCosmosD8s("Cosmos.D8s"),
  valueCosmosD16s("Cosmos.D16s");

  const ServiceSize(this.value);
  final String value;

  static ServiceSize fromValue(String value) {
    for (final item in ServiceSize.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceSize value: $value');
  }
}

