/// Backend communication protocol. Required when backend type is 'Single'.
enum BackendProtocol {
  valueHttp("http"),
  valueSoap("soap");

  const BackendProtocol(this.value);
  final String value;

  static BackendProtocol fromValue(String value) {
    for (final item in BackendProtocol.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BackendProtocol value: $value');
  }
}

