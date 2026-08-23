/// The authentication type to be used to connect to the FTP server.
enum FtpAuthenticationType {
  basic("Basic"),
  anonymous("Anonymous");

  const FtpAuthenticationType(this.wireValue);
  final String wireValue;

  static FtpAuthenticationType fromValue(String value) {
    for (final item in FtpAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FtpAuthenticationType value: $value');
  }
}
