/// Client certificate mode for mTLS authentication. Ignore indicates server drops client certificate on forwarding. Accept indicates server forwards client certificate but does not require a client certificate. Require indicates server requires a client certificate.
enum IngressClientCertificateMode {
  valueIgnore("ignore"),
  valueAccept("accept"),
  valueRequire("require");

  const IngressClientCertificateMode(this.value);
  final String value;

  static IngressClientCertificateMode fromValue(String value) {
    for (final item in IngressClientCertificateMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IngressClientCertificateMode value: $value');
  }
}

