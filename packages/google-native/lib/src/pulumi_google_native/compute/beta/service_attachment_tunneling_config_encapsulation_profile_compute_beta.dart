/// Specify the encapsulation protocol and what metadata to include in incoming encapsulated packet headers.
enum ServiceAttachmentTunnelingConfigEncapsulationProfileComputeBeta {
  geneveSecurityV1("GENEVE_SECURITY_V1"),
  unspecifiedEncapsulationProfile("UNSPECIFIED_ENCAPSULATION_PROFILE");

  const ServiceAttachmentTunnelingConfigEncapsulationProfileComputeBeta(
      this.value);
  final String value;

  static ServiceAttachmentTunnelingConfigEncapsulationProfileComputeBeta
      fromValue(String value) {
    for (final item
        in ServiceAttachmentTunnelingConfigEncapsulationProfileComputeBeta
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceAttachmentTunnelingConfigEncapsulationProfileComputeBeta value: $value');
  }
}
