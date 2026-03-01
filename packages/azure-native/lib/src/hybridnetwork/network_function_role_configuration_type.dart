/// Role type.
enum NetworkFunctionRoleConfigurationType {
  valueUnknown("Unknown"),
  valueVirtualMachine("VirtualMachine");

  const NetworkFunctionRoleConfigurationType(this.value);
  final String value;

  static NetworkFunctionRoleConfigurationType fromValue(String value) {
    for (final item in NetworkFunctionRoleConfigurationType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkFunctionRoleConfigurationType value: $value');
  }
}

