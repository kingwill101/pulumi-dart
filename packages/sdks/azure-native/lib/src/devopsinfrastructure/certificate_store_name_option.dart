/// Name of the certificate store to use on the machine, currently 'My' and 'Root' are supported.
enum CertificateStoreNameOption {
  my("My"),
  root("Root");

  const CertificateStoreNameOption(this.value);
  final String value;

  static CertificateStoreNameOption fromValue(String value) {
    for (final item in CertificateStoreNameOption.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateStoreNameOption value: $value');
  }
}

