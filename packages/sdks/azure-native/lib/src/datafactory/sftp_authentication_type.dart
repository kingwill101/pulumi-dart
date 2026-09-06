import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication type to be used to connect to the FTP server.
enum SftpAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  sshPublicKey("SshPublicKey"),
  multiFactor("MultiFactor");

  const SftpAuthenticationType(this.wireValue);
  @override
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
