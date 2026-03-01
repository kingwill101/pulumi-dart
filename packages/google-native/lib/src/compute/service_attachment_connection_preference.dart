/// The connection preference of service attachment. The value can be set to ACCEPT_AUTOMATIC. An ACCEPT_AUTOMATIC service attachment is one that always accepts the connection from consumer forwarding rules.
enum ServiceAttachmentConnectionPreference {
  acceptAutomatic("ACCEPT_AUTOMATIC"),
  acceptManual("ACCEPT_MANUAL"),
  connectionPreferenceUnspecified("CONNECTION_PREFERENCE_UNSPECIFIED");

  const ServiceAttachmentConnectionPreference(this.value);
  final String value;

  static ServiceAttachmentConnectionPreference fromValue(String value) {
    for (final item in ServiceAttachmentConnectionPreference.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ServiceAttachmentConnectionPreference value: $value',
    );
  }
}
