import 'package:pulumi/pulumi.dart' as pulumi;

/// The guest agent provisioning action.
enum ProvisioningAction implements pulumi.PulumiEnum<String> {
  install("install"),
  uninstall("uninstall"),
  repair("repair");

  const ProvisioningAction(this.wireValue);
  @override
  final String wireValue;

  static ProvisioningAction fromValue(String value) {
    for (final item in ProvisioningAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisioningAction value: $value');
  }
}
