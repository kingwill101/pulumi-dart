import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum ComplianceStatus implements pulumi.PulumiEnum<String> {
  cOMPLIANT("COMPLIANT"),
  nONCOMPLIANT("NON_COMPLIANT");

  const ComplianceStatus(this.wireValue);
  @override
  final String wireValue;

  static ComplianceStatus fromValue(String value) {
    for (final item in ComplianceStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ComplianceStatus value: $value');
  }
}
