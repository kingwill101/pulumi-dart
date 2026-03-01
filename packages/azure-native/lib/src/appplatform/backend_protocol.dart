/// How ingress should communicate with this app backend service.
enum BackendProtocol {
  valueGRPC("GRPC"),
  valueDefault("Default");

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

