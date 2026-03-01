/// Type of the machine group
enum MachineGroupType {
  valueUnknown("unknown"),
  valueAzureCs("azure-cs"),
  valueAzureSf("azure-sf"),
  valueAzureVmss("azure-vmss"),
  valueUserStatic("user-static");

  const MachineGroupType(this.value);
  final String value;

  static MachineGroupType fromValue(String value) {
    for (final item in MachineGroupType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MachineGroupType value: $value');
  }
}

