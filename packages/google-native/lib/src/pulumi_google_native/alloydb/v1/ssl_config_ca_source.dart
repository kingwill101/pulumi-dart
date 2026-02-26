/// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
enum SslConfigCaSource {
  caSourceUnspecified("CA_SOURCE_UNSPECIFIED"),
  caSourceManaged("CA_SOURCE_MANAGED");

  const SslConfigCaSource(this.value);
  final String value;

  static SslConfigCaSource fromValue(String value) {
    for (final item in SslConfigCaSource.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigCaSource value: $value');
  }
}
