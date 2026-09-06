import 'package:pulumi/pulumi.dart' as pulumi;

/// Certificate Status.
enum CertificateStatus implements pulumi.PulumiEnum<String> {
  valueCompleted("Completed"),
  valueFailed("Failed"),
  valueInProgress("InProgress");

  const CertificateStatus(this.wireValue);
  @override
  final String wireValue;

  static CertificateStatus fromValue(String value) {
    for (final item in CertificateStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CertificateStatus value: $value');
  }
}
