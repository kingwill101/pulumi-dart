/// Direction of traffic to mirror, either INGRESS, EGRESS, or BOTH. The default is BOTH.
enum PacketMirroringFilterDirection {
  both("BOTH"),
  egress("EGRESS"),
  ingress("INGRESS");

  const PacketMirroringFilterDirection(this.value);
  final String value;

  static PacketMirroringFilterDirection fromValue(String value) {
    for (final item in PacketMirroringFilterDirection.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PacketMirroringFilterDirection value: $value');
  }
}
