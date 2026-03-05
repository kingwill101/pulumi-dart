/// How ingress should communicate with this app backend service.
enum BackendProtocol {
  valueGRPC("GRPC"),
  valueDefault("Default");

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

