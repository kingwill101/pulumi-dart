/// The visibility of the certificate.
enum CertificateVisibility {
  startTask("StartTask"),
  task("Task"),
  remoteUser("RemoteUser");

  const CertificateVisibility(this.wireValue);
  final String wireValue;

  static CertificateVisibility fromValue(String value) {
    for (final item in CertificateVisibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateVisibility value: $value');
  }
}
