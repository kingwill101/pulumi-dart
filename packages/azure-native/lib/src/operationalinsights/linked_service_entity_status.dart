/// The provisioning state of the linked service.
enum LinkedServiceEntityStatus {
  valueSucceeded("Succeeded"),
  valueDeleting("Deleting"),
  valueProvisioningAccount("ProvisioningAccount"),
  valueUpdating("Updating");

  const LinkedServiceEntityStatus(this.value);
  final String value;

  static LinkedServiceEntityStatus fromValue(String value) {
    for (final item in LinkedServiceEntityStatus.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LinkedServiceEntityStatus value: $value');
  }
}

