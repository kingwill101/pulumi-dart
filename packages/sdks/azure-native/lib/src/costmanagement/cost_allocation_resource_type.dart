/// Type of resources contained in this cost allocation rule
enum CostAllocationResourceType {
  dimension("Dimension"),
  tag("Tag");

  const CostAllocationResourceType(this.wireValue);
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
