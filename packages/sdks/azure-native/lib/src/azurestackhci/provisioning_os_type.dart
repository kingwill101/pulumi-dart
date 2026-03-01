/// Target operating system to support polymorphic resource.
enum ProvisioningOsType {
  azureLinux("AzureLinux"),
  hCI("HCI");

  const ProvisioningOsType(this.value);
  final String value;

  static ProvisioningOsType fromValue(String value) {
    for (final item in ProvisioningOsType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisioningOsType value: $value');
  }
}

