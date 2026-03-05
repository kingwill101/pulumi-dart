/// Specifies the eviction policy for the Azure Spot virtual machine and Azure Spot scale set. For Azure Spot virtual machines, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2019-03-01. For Azure Spot scale sets, both 'Deallocate' and 'Delete' are supported and the minimum api-version is 2017-10-30-preview.
enum VirtualMachineEvictionPolicyTypes {
  deallocate("Deallocate"),
  delete("Delete");

  const VirtualMachineEvictionPolicyTypes(this.wireValue);
  final String wireValue;

  static VirtualMachineEvictionPolicyTypes fromValue(String value) {
    for (final item in VirtualMachineEvictionPolicyTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineEvictionPolicyTypes value: $value');
  }
}

