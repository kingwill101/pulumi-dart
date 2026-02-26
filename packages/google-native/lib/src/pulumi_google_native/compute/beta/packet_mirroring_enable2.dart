/// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
enum PacketMirroringEnable2 {
  false_("FALSE"),
  true_("TRUE");

  const PacketMirroringEnable2(this.value);
  final String value;

  static PacketMirroringEnable2 fromValue(String value) {
    for (final item in PacketMirroringEnable2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PacketMirroringEnable2 value: $value');
  }
}
