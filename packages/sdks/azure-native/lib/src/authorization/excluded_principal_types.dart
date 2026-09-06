import 'package:pulumi/pulumi.dart' as pulumi;

enum ExcludedPrincipalTypes implements pulumi.PulumiEnum<String> {
  servicePrincipalsAsTarget("ServicePrincipalsAsTarget"),
  servicePrincipalsAsRequestor("ServicePrincipalsAsRequestor");

  const ExcludedPrincipalTypes(this.wireValue);
  @override
  final String wireValue;

  static ExcludedPrincipalTypes fromValue(String value) {
    for (final item in ExcludedPrincipalTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExcludedPrincipalTypes value: $value');
  }
}
