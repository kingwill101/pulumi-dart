/// Specify the encapsulation protocol and what metadata to include in incoming encapsulated packet headers.
enum ServiceAttachmentTunnelingConfigEncapsulationProfile {
  geneveSecurityV1("GENEVE_SECURITY_V1"),
  unspecifiedEncapsulationProfile("UNSPECIFIED_ENCAPSULATION_PROFILE");

  const ServiceAttachmentTunnelingConfigEncapsulationProfile(this.value);
  final String value;

  static ServiceAttachmentTunnelingConfigEncapsulationProfile fromValue(
      String value) {
    for (final item
        in ServiceAttachmentTunnelingConfigEncapsulationProfile.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceAttachmentTunnelingConfigEncapsulationProfile value: $value');
  }
}
