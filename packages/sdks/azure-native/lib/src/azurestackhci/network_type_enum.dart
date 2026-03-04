/// Type of the network
enum NetworkTypeEnum {
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
