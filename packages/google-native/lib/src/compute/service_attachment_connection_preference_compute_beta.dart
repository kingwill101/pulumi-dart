/// The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
enum ServiceAttachmentConnectionPreferenceComputeBeta {
  acceptAutomatic("ACCEPT_AUTOMATIC"),
  acceptManual("ACCEPT_MANUAL"),
  connectionPreferenceUnspecified("CONNECTION_PREFERENCE_UNSPECIFIED");

  const ServiceAttachmentConnectionPreferenceComputeBeta(this.value);
  final String value;

  static ServiceAttachmentConnectionPreferenceComputeBeta fromValue(String value) {
    for (final item in ServiceAttachmentConnectionPreferenceComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ServiceAttachmentConnectionPreferenceComputeBeta value: $value');
  }
}

