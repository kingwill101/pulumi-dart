/// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
enum PacketMirroringEnable3 {
  false_("FALSE"),
  true_("TRUE");

  const PacketMirroringEnable3(this.value);
  final String value;

  static PacketMirroringEnable3 fromValue(String value) {
    for (final item in PacketMirroringEnable3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PacketMirroringEnable3 value: $value');
  }
}
