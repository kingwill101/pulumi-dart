/// Name of the service.
enum ServiceName {
  valueWAC("WAC");

  const ServiceName(this.wireValue);
  final String wireValue;

  static ServiceName fromValue(String value) {
    for (final item in ServiceName.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceName value: $value');
  }
}

