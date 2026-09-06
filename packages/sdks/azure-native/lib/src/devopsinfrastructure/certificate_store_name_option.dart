import 'package:pulumi/pulumi.dart' as pulumi;

/// Name of the certificate store to use on the machine, currently 'My' and 'Root' are supported.
enum CertificateStoreNameOption implements pulumi.PulumiEnum<String> {
  my("My"),
  root("Root");

  const CertificateStoreNameOption(this.wireValue);
  @override
  final String wireValue;

  static CertificateStoreNameOption fromValue(String value) {
    for (final item in CertificateStoreNameOption.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateStoreNameOption value: $value');
  }
}
