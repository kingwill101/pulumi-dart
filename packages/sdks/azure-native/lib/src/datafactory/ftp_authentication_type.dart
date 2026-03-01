/// The authentication type to be used to connect to the FTP server.
enum FtpAuthenticationType {
  valueBasic("Basic"),
  valueAnonymous("Anonymous");

  const FtpAuthenticationType(this.value);
  final String value;

  static FtpAuthenticationType fromValue(String value) {
    for (final item in FtpAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FtpAuthenticationType value: $value');
  }
}

