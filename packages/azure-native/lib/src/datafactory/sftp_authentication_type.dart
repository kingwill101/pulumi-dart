/// The authentication type to be used to connect to the FTP server.
enum SftpAuthenticationType {
  valueBasic("Basic"),
  valueSshPublicKey("SshPublicKey"),
  valueMultiFactor("MultiFactor");

  const SftpAuthenticationType(this.value);
  final String value;

  static SftpAuthenticationType fromValue(String value) {
    for (final item in SftpAuthenticationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SftpAuthenticationType value: $value');
  }
}

