/// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
enum SslConfigCaSource2 {
  caSourceUnspecified("CA_SOURCE_UNSPECIFIED"),
  caSourceManaged("CA_SOURCE_MANAGED");

  const SslConfigCaSource2(this.value);
  final String value;

  static SslConfigCaSource2 fromValue(String value) {
    for (final item in SslConfigCaSource2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigCaSource2 value: $value');
  }
}
