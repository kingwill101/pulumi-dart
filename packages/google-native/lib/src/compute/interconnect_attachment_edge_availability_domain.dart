/// Desired availability domain for the attachment. Only available for type PARTNER, at creation time, and can take one of the following values: - AVAILABILITY_DOMAIN_ANY - AVAILABILITY_DOMAIN_1 - AVAILABILITY_DOMAIN_2 For improved reliability, customers should configure a pair of attachments, one per availability domain. The selected availability domain will be provided to the Partner via the pairing key, so that the provisioned circuit will lie in the specified domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.
enum InterconnectAttachmentEdgeAvailabilityDomain {
  availabilityDomain1("AVAILABILITY_DOMAIN_1"),
  availabilityDomain2("AVAILABILITY_DOMAIN_2"),
  availabilityDomainAny("AVAILABILITY_DOMAIN_ANY");

  const InterconnectAttachmentEdgeAvailabilityDomain(this.value);
  final String value;

  static InterconnectAttachmentEdgeAvailabilityDomain fromValue(String value) {
    for (final item in InterconnectAttachmentEdgeAvailabilityDomain.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown InterconnectAttachmentEdgeAvailabilityDomain value: $value',
    );
  }
}
