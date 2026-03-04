/// Role type.
enum NetworkFunctionRoleConfigurationType {
  valueUnknown("Unknown"),
  valueVirtualMachine("VirtualMachine");

  const NetworkFunctionRoleConfigurationType(this.wireValue);
  final String wireValue;

  static NetworkFunctionRoleConfigurationType fromValue(String value) {
    for (final item in NetworkFunctionRoleConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkFunctionRoleConfigurationType value: $value',
    );
  }
}
