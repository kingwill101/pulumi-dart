import 'package:pulumi/pulumi.dart' as pulumi;

/// The authentication type to be used to connect to the FTP server.
enum FtpAuthenticationType implements pulumi.PulumiEnum<String> {
  basic("Basic"),
  anonymous("Anonymous");

  const FtpAuthenticationType(this.wireValue);
  @override
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
