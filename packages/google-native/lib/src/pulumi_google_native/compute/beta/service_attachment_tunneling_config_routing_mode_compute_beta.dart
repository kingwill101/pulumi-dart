/// How this Service Attachment will treat traffic sent to the tunnel_ip, destined for the consumer network.
enum ServiceAttachmentTunnelingConfigRoutingModeComputeBeta {
  packetInjection("PACKET_INJECTION"),
  standardRouting("STANDARD_ROUTING"),
  unspecifiedRoutingMode("UNSPECIFIED_ROUTING_MODE");

  const ServiceAttachmentTunnelingConfigRoutingModeComputeBeta(this.value);
  final String value;

  static ServiceAttachmentTunnelingConfigRoutingModeComputeBeta fromValue(
      String value) {
    for (final item
        in ServiceAttachmentTunnelingConfigRoutingModeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceAttachmentTunnelingConfigRoutingModeComputeBeta value: $value');
  }
}
