enum VersionInboundServicesItem2 {
  inboundServiceUnspecified("INBOUND_SERVICE_UNSPECIFIED"),
  inboundServiceMail("INBOUND_SERVICE_MAIL"),
  inboundServiceMailBounce("INBOUND_SERVICE_MAIL_BOUNCE"),
  inboundServiceXmppError("INBOUND_SERVICE_XMPP_ERROR"),
  inboundServiceXmppMessage("INBOUND_SERVICE_XMPP_MESSAGE"),
  inboundServiceXmppSubscribe("INBOUND_SERVICE_XMPP_SUBSCRIBE"),
  inboundServiceXmppPresence("INBOUND_SERVICE_XMPP_PRESENCE"),
  inboundServiceChannelPresence("INBOUND_SERVICE_CHANNEL_PRESENCE"),
  inboundServiceWarmup("INBOUND_SERVICE_WARMUP");

  const VersionInboundServicesItem2(this.value);
  final String value;

  static VersionInboundServicesItem2 fromValue(String value) {
    for (final item in VersionInboundServicesItem2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown VersionInboundServicesItem2 value: $value');
  }
}
