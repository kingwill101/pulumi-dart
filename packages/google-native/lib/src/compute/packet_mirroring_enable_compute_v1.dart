/// Indicates whether or not this packet mirroring takes effect. If set to FALSE, this packet mirroring policy will not be enforced on the network. The default is TRUE.
enum PacketMirroringEnableComputeV1 {
  false_("FALSE"),
  true_("TRUE");

  const PacketMirroringEnableComputeV1(this.value);
  final String value;

  static PacketMirroringEnableComputeV1 fromValue(String value) {
    for (final item in PacketMirroringEnableComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PacketMirroringEnableComputeV1 value: $value');
  }
}

