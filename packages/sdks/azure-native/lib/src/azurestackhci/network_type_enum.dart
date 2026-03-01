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

  const NetworkTypeEnum(this.value);
  final String value;

  static NetworkTypeEnum fromValue(String value) {
    for (final item in NetworkTypeEnum.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NetworkTypeEnum value: $value');
  }
}

