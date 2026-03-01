/// Specifies if the IP is exposed to the public internet or private VNET.
enum ContainerGroupIpAddressType {
  valuePublic("Public"),
  valuePrivate("Private");

  const ContainerGroupIpAddressType(this.value);
  final String value;

  static ContainerGroupIpAddressType fromValue(String value) {
    for (final item in ContainerGroupIpAddressType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerGroupIpAddressType value: $value');
  }
}

