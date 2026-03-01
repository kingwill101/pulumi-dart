/// Name of the service.
enum ServiceName {
  valueWAC("WAC");

  const ServiceName(this.value);
  final String value;

  static ServiceName fromValue(String value) {
    for (final item in ServiceName.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceName value: $value');
  }
}

