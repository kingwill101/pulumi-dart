/// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
enum AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceInterval2 {
  asNeeded("AS_NEEDED"),
  periodic("PERIODIC"),
  recurrent("RECURRENT");

  const AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceInterval2(
      this.value);
  final String value;

  static AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceInterval2
      fromValue(String value) {
    for (final item
        in AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceInterval2
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceInterval2 value: $value');
  }
}
