import 'package:pulumi/pulumi.dart' as pulumi;

/// The node provisioning mode. If not specified, the default is Manual.
enum NodeProvisioningMode implements pulumi.PulumiEnum<String> {
  valueManual("Manual"),
  valueAuto("Auto");

  const NodeProvisioningMode(this.wireValue);
  @override
  final String wireValue;

  static NodeProvisioningMode fromValue(String value) {
    for (final item in NodeProvisioningMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodeProvisioningMode value: $value');
  }
}
