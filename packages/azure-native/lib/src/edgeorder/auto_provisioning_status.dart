/// Auto Provisioning Details.
enum AutoProvisioningStatus {
  enabled("Enabled"),
  disabled("Disabled");

  const AutoProvisioningStatus(this.value);
  final String value;

  static AutoProvisioningStatus fromValue(String value) {
    for (final item in AutoProvisioningStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AutoProvisioningStatus value: $value');
  }
}

