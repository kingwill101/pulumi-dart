/// The default value is currentUser. This property is applicable only for pools configured with Windows compute nodes. For Linux compute nodes, the certificates are stored in a directory inside the task working directory and an environment variable AZ_BATCH_CERTIFICATES_DIR is supplied to the task to query for this location. For certificates with visibility of 'remoteUser', a 'certs' directory is created in the user's home directory (e.g., /home/{user-name}/certs) and certificates are placed in that directory.
enum CertificateStoreLocation {
  currentUser("CurrentUser"),
  localMachine("LocalMachine");

  const CertificateStoreLocation(this.value);
  final String value;

  static CertificateStoreLocation fromValue(String value) {
    for (final item in CertificateStoreLocation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateStoreLocation value: $value');
  }
}

