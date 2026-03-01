/// Public Certificate Location
enum PublicCertificateLocation {
  valueCurrentUserMy("CurrentUserMy"),
  valueLocalMachineMy("LocalMachineMy"),
  valueUnknown("Unknown");

  const PublicCertificateLocation(this.value);
  final String value;

  static PublicCertificateLocation fromValue(String value) {
    for (final item in PublicCertificateLocation.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicCertificateLocation value: $value');
  }
}

