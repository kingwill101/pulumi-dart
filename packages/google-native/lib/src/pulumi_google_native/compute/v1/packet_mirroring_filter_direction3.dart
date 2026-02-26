/// Direction of traffic to mirror, either INGRESS, EGRESS, or BOTH. The default is BOTH.
enum PacketMirroringFilterDirection3 {
  both("BOTH"),
  egress("EGRESS"),
  ingress("INGRESS");

  const PacketMirroringFilterDirection3(this.value);
  final String value;

  static PacketMirroringFilterDirection3 fromValue(String value) {
    for (final item in PacketMirroringFilterDirection3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PacketMirroringFilterDirection3 value: $value');
  }
}
