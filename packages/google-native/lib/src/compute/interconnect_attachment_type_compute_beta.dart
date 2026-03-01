/// The type of interconnect attachment this is, which can take one of the following values: - DEDICATED: an attachment to a Dedicated Interconnect. - PARTNER: an attachment to a Partner Interconnect, created by the customer. - PARTNER_PROVIDER: an attachment to a Partner Interconnect, created by the partner.
enum InterconnectAttachmentTypeComputeBeta {
  dedicated("DEDICATED"),
  partner("PARTNER"),
  partnerProvider("PARTNER_PROVIDER");

  const InterconnectAttachmentTypeComputeBeta(this.value);
  final String value;

  static InterconnectAttachmentTypeComputeBeta fromValue(String value) {
    for (final item in InterconnectAttachmentTypeComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InterconnectAttachmentTypeComputeBeta value: $value',
    );
  }
}
