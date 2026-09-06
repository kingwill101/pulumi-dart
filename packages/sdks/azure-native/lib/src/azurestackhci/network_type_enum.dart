import 'package:pulumi/pulumi.dart' as pulumi;

/// Type of the network
enum NetworkTypeEnum implements pulumi.PulumiEnum<String> {
  valueNAT("NAT"),
  valueTransparent("Transparent"),
  valueL2Bridge("L2Bridge"),
  valueL2Tunnel("L2Tunnel"),
  valueICS("ICS"),
  valuePrivate("Private"),
  valueOverlay("Overlay"),
  valueInternal("Internal"),
  valueMirrored("Mirrored");

  const NetworkTypeEnum(this.wireValue);
  @override
  final String wireValue;

  static NetworkTypeEnum fromValue(String value) {
    for (final item in NetworkTypeEnum.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkTypeEnum value: $value');
  }
}
