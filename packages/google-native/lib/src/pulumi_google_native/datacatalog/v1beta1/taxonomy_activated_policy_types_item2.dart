enum TaxonomyActivatedPolicyTypesItem2 {
  policyTypeUnspecified("POLICY_TYPE_UNSPECIFIED"),
  fineGrainedAccessControl("FINE_GRAINED_ACCESS_CONTROL");

  const TaxonomyActivatedPolicyTypesItem2(this.value);
  final String value;

  static TaxonomyActivatedPolicyTypesItem2 fromValue(String value) {
    for (final item in TaxonomyActivatedPolicyTypesItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown TaxonomyActivatedPolicyTypesItem2 value: $value');
  }
}
