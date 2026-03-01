/// Type of resources contained in this cost allocation rule
enum CostAllocationResourceType {
  dimension("Dimension"),
  tag("Tag");

  const CostAllocationResourceType(this.value);
  final String value;

  static CostAllocationResourceType fromValue(String value) {
    for (final item in CostAllocationResourceType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CostAllocationResourceType value: $value');
  }
}

