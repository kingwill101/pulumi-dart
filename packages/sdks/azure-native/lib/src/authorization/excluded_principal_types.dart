enum ExcludedPrincipalTypes {
  valueServicePrincipalsAsTarget("ServicePrincipalsAsTarget"),
  valueServicePrincipalsAsRequestor("ServicePrincipalsAsRequestor");

  const ExcludedPrincipalTypes(this.value);
  final String value;

  static ExcludedPrincipalTypes fromValue(String value) {
    for (final item in ExcludedPrincipalTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ExcludedPrincipalTypes value: $value');
  }
}

