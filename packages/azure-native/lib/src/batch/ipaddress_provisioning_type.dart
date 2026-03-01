/// The default value is BatchManaged
enum IPAddressProvisioningType {
  batchManaged("BatchManaged"),
  userManaged("UserManaged"),
  noPublicIPAddresses("NoPublicIPAddresses");

  const IPAddressProvisioningType(this.value);
  final String value;

  static IPAddressProvisioningType fromValue(String value) {
    for (final item in IPAddressProvisioningType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAddressProvisioningType value: $value');
  }
}

