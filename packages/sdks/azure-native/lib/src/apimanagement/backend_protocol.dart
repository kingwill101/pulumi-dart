/// Backend communication protocol. Required when backend type is 'Single'.
enum BackendProtocol {
  valueHttp("http"),
  valueSoap("soap");

  const BackendProtocol(this.wireValue);
  final String wireValue;

  static BackendProtocol fromValue(String value) {
    for (final item in BackendProtocol.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendProtocol value: $value');
  }
}

