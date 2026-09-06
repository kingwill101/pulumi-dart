import 'package:pulumi/pulumi.dart' as pulumi;

/// Property value
enum RenewalEligibility implements pulumi.PulumiEnum<String> {
  eLIGIBLE("ELIGIBLE"),
  iNELIGIBLE("INELIGIBLE");

  const RenewalEligibility(this.wireValue);
  @override
  final String wireValue;

  static RenewalEligibility fromValue(String value) {
    for (final item in RenewalEligibility.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RenewalEligibility value: $value');
  }
}
