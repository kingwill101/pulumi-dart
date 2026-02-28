/// The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
enum ServiceAttachmentConnectionPreferenceComputeV1 {
  acceptAutomatic("ACCEPT_AUTOMATIC"),
  acceptManual("ACCEPT_MANUAL"),
  connectionPreferenceUnspecified("CONNECTION_PREFERENCE_UNSPECIFIED");

  const ServiceAttachmentConnectionPreferenceComputeV1(this.value);
  final String value;

  static ServiceAttachmentConnectionPreferenceComputeV1 fromValue(
      String value) {
    for (final item in ServiceAttachmentConnectionPreferenceComputeV1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceAttachmentConnectionPreferenceComputeV1 value: $value');
  }
}
