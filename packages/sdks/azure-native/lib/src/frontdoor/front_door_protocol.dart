/// Accepted protocol schemes.
enum FrontDoorProtocol {
  valueHttp("Http"),
  valueHttps("Https");

  const FrontDoorProtocol(this.wireValue);
  final String wireValue;

  static FrontDoorProtocol fromValue(String value) {
    for (final item in FrontDoorProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FrontDoorProtocol value: $value');
  }
}
