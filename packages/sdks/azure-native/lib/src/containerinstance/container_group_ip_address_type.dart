import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies if the IP is exposed to the public internet or private VNET.
enum ContainerGroupIpAddressType implements pulumi.PulumiEnum<String> {
  valuePublic("Public"),
  valuePrivate("Private");

  const ContainerGroupIpAddressType(this.wireValue);
  @override
  final String wireValue;

  static ContainerGroupIpAddressType fromValue(String value) {
    for (final item in ContainerGroupIpAddressType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ContainerGroupIpAddressType value: $value');
  }
}
