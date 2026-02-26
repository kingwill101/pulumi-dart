/// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
enum SslConfigCaSource3 {
  caSourceUnspecified("CA_SOURCE_UNSPECIFIED"),
  caSourceManaged("CA_SOURCE_MANAGED");

  const SslConfigCaSource3(this.value);
  final String value;

  static SslConfigCaSource3 fromValue(String value) {
    for (final item in SslConfigCaSource3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigCaSource3 value: $value');
  }
}
