enum TaxonomyActivatedPolicyTypesItem {
  policyTypeUnspecified("POLICY_TYPE_UNSPECIFIED"),
  fineGrainedAccessControl("FINE_GRAINED_ACCESS_CONTROL");

  const TaxonomyActivatedPolicyTypesItem(this.value);
  final String value;

  static TaxonomyActivatedPolicyTypesItem fromValue(String value) {
    for (final item in TaxonomyActivatedPolicyTypesItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TaxonomyActivatedPolicyTypesItem value: $value');
  }
}

