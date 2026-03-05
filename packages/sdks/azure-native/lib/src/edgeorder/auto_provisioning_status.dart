/// Auto Provisioning Details.
enum AutoProvisioningStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const AutoProvisioningStatus(this.wireValue);
  final String wireValue;

  static AutoProvisioningStatus fromValue(String value) {
    for (final item in AutoProvisioningStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoProvisioningStatus value: $value');
  }
}

