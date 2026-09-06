import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum CertificateType implements pulumi.PulumiEnum<String> {
  aMAZONISSUED("AMAZON_ISSUED"),
  iMPORTED("IMPORTED"),
  pRIVATE("PRIVATE");

  const CertificateType(this.wireValue);
  @override
  final String wireValue;

  static CertificateType fromValue(String value) {
    for (final item in CertificateType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateType value: $value');
  }
}
