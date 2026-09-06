import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of resources contained in this cost allocation rule
enum CostAllocationResourceType implements pulumi.PulumiEnum<String> {
  dimension("Dimension"),
  tag("Tag");

  const CostAllocationResourceType(this.wireValue);
  @override
  final String wireValue;

  static CostAllocationResourceType fromValue(String value) {
    for (final item in CostAllocationResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CostAllocationResourceType value: $value');
  }
}
