/// The service account provisioning mode for this Active Directory connector.
enum AccountProvisioningMode {
  valueAutomatic("automatic"),
  valueManual("manual");

  const AccountProvisioningMode(this.wireValue);
  final String wireValue;

  static AccountProvisioningMode fromValue(String value) {
    for (final item in AccountProvisioningMode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccountProvisioningMode value: $value');
  }
}

