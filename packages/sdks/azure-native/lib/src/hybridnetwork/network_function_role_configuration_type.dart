import 'package:pulumi/pulumi.dart' as pulumi;

/// Role type.
enum NetworkFunctionRoleConfigurationType implements pulumi.PulumiEnum<String> {
  valueUnknown("Unknown"),
  valueVirtualMachine("VirtualMachine");

  const NetworkFunctionRoleConfigurationType(this.wireValue);
  @override
  final String wireValue;

  static NetworkFunctionRoleConfigurationType fromValue(String value) {
    for (final item in NetworkFunctionRoleConfigurationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkFunctionRoleConfigurationType value: $value');
  }
}
