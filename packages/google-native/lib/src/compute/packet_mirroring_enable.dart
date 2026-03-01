/// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
enum PacketMirroringEnable {
  false_("FALSE"),
  true_("TRUE");

  const PacketMirroringEnable(this.value);
  final String value;

  static PacketMirroringEnable fromValue(String value) {
    for (final item in PacketMirroringEnable.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PacketMirroringEnable value: $value');
  }
}
