import 'package:pulumi/pulumi.dart' as pulumi;

/// The visibility of the certificate.
enum CertificateVisibility implements pulumi.PulumiEnum<String> {
  startTask("StartTask"),
  task("Task"),
  remoteUser("RemoteUser");

  const CertificateVisibility(this.wireValue);
  @override
  final String wireValue;

  static CertificateVisibility fromValue(String value) {
    for (final item in CertificateVisibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateVisibility value: $value');
  }
}
