enum CertificateVisibility {
  startTask("StartTask"),
  task("Task"),
  remoteUser("RemoteUser");

  const CertificateVisibility(this.value);
  final String value;

  static CertificateVisibility fromValue(String value) {
    for (final item in CertificateVisibility.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateVisibility value: $value');
  }
}

