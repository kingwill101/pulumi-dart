/// Trust Model of the SSL connection
enum SslConfigTrustModel {
  public("PUBLIC"),
  private("PRIVATE"),
  insecure("INSECURE");

  const SslConfigTrustModel(this.value);
  final String value;

  static SslConfigTrustModel fromValue(String value) {
    for (final item in SslConfigTrustModel.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SslConfigTrustModel value: $value');
  }
}
