/// How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
enum ServiceAttachmentTunnelingConfigRoutingMode2 {
  packetInjection("PACKET_INJECTION"),
  standardRouting("STANDARD_ROUTING"),
  unspecifiedRoutingMode("UNSPECIFIED_ROUTING_MODE");

  const ServiceAttachmentTunnelingConfigRoutingMode2(this.value);
  final String value;

  static ServiceAttachmentTunnelingConfigRoutingMode2 fromValue(String value) {
    for (final item in ServiceAttachmentTunnelingConfigRoutingMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceAttachmentTunnelingConfigRoutingMode2 value: $value');
  }
}
