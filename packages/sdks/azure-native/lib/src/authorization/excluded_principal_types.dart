enum ExcludedPrincipalTypes {
  valueServicePrincipalsAsTarget("ServicePrincipalsAsTarget"),
  valueServicePrincipalsAsRequestor("ServicePrincipalsAsRequestor");

  const ExcludedPrincipalTypes(this.wireValue);
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
