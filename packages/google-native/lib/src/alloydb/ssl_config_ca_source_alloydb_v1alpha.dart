/// Optional. Certificate Authority (CA) source. Only CA_SOURCE_MANAGED is supported currently, and is the default value.
enum SslConfigCaSourceAlloydbV1alpha {
  caSourceUnspecified("CA_SOURCE_UNSPECIFIED"),
  caSourceManaged("CA_SOURCE_MANAGED");

  const SslConfigCaSourceAlloydbV1alpha(this.value);
  final String value;

  static SslConfigCaSourceAlloydbV1alpha fromValue(String value) {
    for (final item in SslConfigCaSourceAlloydbV1alpha.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigCaSourceAlloydbV1alpha value: $value');
  }
}

