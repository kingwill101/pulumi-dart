/// Accepted protocol schemes.
enum FrontDoorProtocol {
  valueHttp("Http"),
  valueHttps("Https");

  const FrontDoorProtocol(this.value);
  final String value;

  static FrontDoorProtocol fromValue(String value) {
    for (final item in FrontDoorProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorProtocol value: $value');
  }
}

