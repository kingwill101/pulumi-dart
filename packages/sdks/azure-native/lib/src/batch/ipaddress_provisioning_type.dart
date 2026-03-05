/// The default value is BatchManaged
enum IPAddressProvisioningType {
  batchManaged("BatchManaged"),
  userManaged("UserManaged"),
  noPublicIPAddresses("NoPublicIPAddresses");

  const IPAddressProvisioningType(this.wireValue);
  final String wireValue;

  static IPAddressProvisioningType fromValue(String value) {
    for (final item in IPAddressProvisioningType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IPAddressProvisioningType value: $value');
  }
}

