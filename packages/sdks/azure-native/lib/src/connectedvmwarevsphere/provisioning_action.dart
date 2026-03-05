/// Gets or sets the guest agent provisioning action.
enum ProvisioningAction {
  valueInstall("install"),
  valueUninstall("uninstall"),
  valueRepair("repair");

  const ProvisioningAction(this.wireValue);
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

