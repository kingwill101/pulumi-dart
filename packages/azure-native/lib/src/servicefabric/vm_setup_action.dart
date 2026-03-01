/// action to be performed on the vms before bootstrapping the service fabric runtime.
enum VmSetupAction {
  valueEnableContainers("EnableContainers"),
  valueEnableHyperV("EnableHyperV");

  const VmSetupAction(this.value);
  final String value;

  static VmSetupAction fromValue(String value) {
    for (final item in VmSetupAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VmSetupAction value: $value');
  }
}

