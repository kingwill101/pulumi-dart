/// Specify the encapsulation protocol and what metadata to include in incoming encapsulated packet headers.
enum ServiceAttachmentTunnelingConfigEncapsulationProfile2 {
  geneveSecurityV1("GENEVE_SECURITY_V1"),
  unspecifiedEncapsulationProfile("UNSPECIFIED_ENCAPSULATION_PROFILE");

  const ServiceAttachmentTunnelingConfigEncapsulationProfile2(this.value);
  final String value;

  static ServiceAttachmentTunnelingConfigEncapsulationProfile2 fromValue(
      String value) {
    for (final item
        in ServiceAttachmentTunnelingConfigEncapsulationProfile2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceAttachmentTunnelingConfigEncapsulationProfile2 value: $value');
  }
}
