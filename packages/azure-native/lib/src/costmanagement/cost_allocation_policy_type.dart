/// Method of cost allocation for the rule
enum CostAllocationPolicyType {
  valueFixedProportion("FixedProportion");

  const CostAllocationPolicyType(this.value);
  final String value;

  static CostAllocationPolicyType fromValue(String value) {
    for (final item in CostAllocationPolicyType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CostAllocationPolicyType value: $value');
  }
}

