/// The service account provisioning mode for this Active Directory connector.
enum AccountProvisioningMode {
  valueAutomatic("automatic"),
  valueManual("manual");

  const AccountProvisioningMode(this.value);
  final String value;

  static AccountProvisioningMode fromValue(String value) {
    for (final item in AccountProvisioningMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AccountProvisioningMode value: $value');
  }
}

