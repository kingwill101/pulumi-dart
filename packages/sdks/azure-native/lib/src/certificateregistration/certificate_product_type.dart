import 'package:pulumi/pulumi.dart' as pulumi;

/// Certificate product type.
enum CertificateProductType implements pulumi.PulumiEnum<String> {
  valueStandardDomainValidatedSsl("StandardDomainValidatedSsl"),
  valueStandardDomainValidatedWildCardSsl("StandardDomainValidatedWildCardSsl");

  const CertificateProductType(this.wireValue);
  @override
  final String wireValue;

  static CertificateProductType fromValue(String value) {
    for (final item in CertificateProductType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateProductType value: $value');
  }
}
