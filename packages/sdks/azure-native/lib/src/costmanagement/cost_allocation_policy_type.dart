import 'package:pulumi/pulumi.dart' as pulumi;

/// Method of cost allocation for the rule
enum CostAllocationPolicyType implements pulumi.PulumiEnum<String> {
  valueFixedProportion("FixedProportion");

  const CostAllocationPolicyType(this.wireValue);
  @override
  final String wireValue;

  static CostAllocationPolicyType fromValue(String value) {
    for (final item in CostAllocationPolicyType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CostAllocationPolicyType value: $value');
  }
}
