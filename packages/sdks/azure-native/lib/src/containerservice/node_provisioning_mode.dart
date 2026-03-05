/// The node provisioning mode. If not specified, the default is Manual.
enum NodeProvisioningMode {
  valueManual("Manual"),
  valueAuto("Auto");

  const NodeProvisioningMode(this.wireValue);
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

