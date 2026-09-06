import 'package:pulumi/pulumi.dart' as pulumi;

/// The policy exemption category. Possible values are Waiver and Mitigated.
enum ExemptionCategory implements pulumi.PulumiEnum<String> {
  valueWaiver("Waiver"),
  valueMitigated("Mitigated");

  const ExemptionCategory(this.wireValue);
  @override
  final String wireValue;

  static ExemptionCategory fromValue(String value) {
    for (final item in ExemptionCategory.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExemptionCategory value: $value');
  }
}
