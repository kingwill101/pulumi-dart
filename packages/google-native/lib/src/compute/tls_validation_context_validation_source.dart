/// Defines how TLS certificates are obtained.
enum TlsValidationContextValidationSource {
  invalid("INVALID"),
  usePath("USE_PATH"),
  useSds("USE_SDS");

  const TlsValidationContextValidationSource(this.value);
  final String value;

  static TlsValidationContextValidationSource fromValue(String value) {
    for (final item in TlsValidationContextValidationSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TlsValidationContextValidationSource value: $value');
  }
}

