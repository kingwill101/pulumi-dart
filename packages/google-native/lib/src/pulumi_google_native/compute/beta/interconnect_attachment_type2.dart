/// The type of interconnect attachment this is, which can take one of the following values: - DEDICATED: an attachment to a Dedicated Interconnect. - PARTNER: an attachment to a Partner Interconnect, created by the customer. - PARTNER_PROVIDER: an attachment to a Partner Interconnect, created by the partner.
enum InterconnectAttachmentType2 {
  dedicated("DEDICATED"),
  partner("PARTNER"),
  partnerProvider("PARTNER_PROVIDER");

  const InterconnectAttachmentType2(this.value);
  final String value;

  static InterconnectAttachmentType2 fromValue(String value) {
    for (final item in InterconnectAttachmentType2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown InterconnectAttachmentType2 value: $value');
  }
}
