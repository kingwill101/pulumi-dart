/// The name of the service. It is an optional property, if not provided, service configuration tokens issue code would be by passed.
enum ServiceName {
  sSH("SSH"),
  wAC("WAC");

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
