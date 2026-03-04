/// Target operating system to support polymorphic resource.
enum ProvisioningOsType {
  azureLinux("AzureLinux"),
  hCI("HCI");

  const ProvisioningOsType(this.wireValue);
  final String wireValue;

  static ProvisioningOsType fromValue(String value) {
    for (final item in ProvisioningOsType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ProvisioningOsType value: $value');
  }
}
