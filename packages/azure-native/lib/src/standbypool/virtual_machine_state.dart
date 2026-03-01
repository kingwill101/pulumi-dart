/// Specifies the desired state of virtual machines in the pool.
enum VirtualMachineState {
  running("Running"),
  deallocated("Deallocated");

  const VirtualMachineState(this.value);
  final String value;

  static VirtualMachineState fromValue(String value) {
    for (final item in VirtualMachineState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VirtualMachineState value: $value');
  }
}

