import 'package:pulumi/pulumi.dart' as pulumi;

/// CorsRuleAllowedMethods enum
enum CorsRuleAllowedMethods implements pulumi.PulumiEnum<String> {
  dELETE("DELETE"),
  gET("GET"),
  hEAD("HEAD"),
  pOST("POST"),
  pUT("PUT");

  const CorsRuleAllowedMethods(this.wireValue);
  @override
  final String wireValue;

  static CorsRuleAllowedMethods fromValue(String value) {
    for (final item in CorsRuleAllowedMethods.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CorsRuleAllowedMethods value: $value');
  }
}
