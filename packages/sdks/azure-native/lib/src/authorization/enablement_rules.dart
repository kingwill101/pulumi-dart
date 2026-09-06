import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of enablement rule
enum EnablementRules implements pulumi.PulumiEnum<String> {
  multiFactorAuthentication("MultiFactorAuthentication"),
  justification("Justification"),
  ticketing("Ticketing");

  const EnablementRules(this.wireValue);
  @override
  final String wireValue;

  static EnablementRules fromValue(String value) {
    for (final item in EnablementRules.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnablementRules value: $value');
  }
}
