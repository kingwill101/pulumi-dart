/// Required. State of the channel partner link.
enum ChannelPartnerLinkLinkState {
  channelPartnerLinkStateUnspecified("CHANNEL_PARTNER_LINK_STATE_UNSPECIFIED"),
  invited("INVITED"),
  active("ACTIVE"),
  revoked("REVOKED"),
  suspended("SUSPENDED");

  const ChannelPartnerLinkLinkState(this.value);
  final String value;

  static ChannelPartnerLinkLinkState fromValue(String value) {
    for (final item in ChannelPartnerLinkLinkState.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ChannelPartnerLinkLinkState value: $value');
  }
}

