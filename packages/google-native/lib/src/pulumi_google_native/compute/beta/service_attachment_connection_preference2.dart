/// The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
enum ServiceAttachmentConnectionPreference2 {
  acceptAutomatic("ACCEPT_AUTOMATIC"),
  acceptManual("ACCEPT_MANUAL"),
  connectionPreferenceUnspecified("CONNECTION_PREFERENCE_UNSPECIFIED");

  const ServiceAttachmentConnectionPreference2(this.value);
  final String value;

  static ServiceAttachmentConnectionPreference2 fromValue(String value) {
    for (final item in ServiceAttachmentConnectionPreference2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ServiceAttachmentConnectionPreference2 value: $value');
  }
}
