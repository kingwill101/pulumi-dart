/// Specifies the priority for the virtual machines in the scale set. Minimum api-version: 2017-10-30-preview.
enum VirtualMachinePriorityTypes {
  regular("Regular"),
  low("Low"),
  spot("Spot");

  const VirtualMachinePriorityTypes(this.value);
  final String value;

  static VirtualMachinePriorityTypes fromValue(String value) {
    for (final item in VirtualMachinePriorityTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachinePriorityTypes value: $value');
  }
}

