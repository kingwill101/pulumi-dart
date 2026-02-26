/// Direction of traffic to mirror, either INGRESS, EGRESS, or BOTH. The default is BOTH.
enum PacketMirroringFilterDirection2 {
  both("BOTH"),
  egress("EGRESS"),
  ingress("INGRESS");

  const PacketMirroringFilterDirection2(this.value);
  final String value;

  static PacketMirroringFilterDirection2 fromValue(String value) {
    for (final item in PacketMirroringFilterDirection2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown PacketMirroringFilterDirection2 value: $value');
  }
}
