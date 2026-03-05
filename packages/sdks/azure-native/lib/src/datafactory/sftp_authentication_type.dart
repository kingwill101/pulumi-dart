/// The authentication type to be used to connect to the FTP server.
enum SftpAuthenticationType {
  valueBasic("Basic"),
  valueSshPublicKey("SshPublicKey"),
  valueMultiFactor("MultiFactor");

  const SftpAuthenticationType(this.wireValue);
  final String wireValue;

  static SftpAuthenticationType fromValue(String value) {
    for (final item in SftpAuthenticationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SftpAuthenticationType value: $value');
  }
}

