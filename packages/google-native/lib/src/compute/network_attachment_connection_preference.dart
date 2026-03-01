enum NetworkAttachmentConnectionPreference {
  acceptAutomatic("ACCEPT_AUTOMATIC"),
  acceptManual("ACCEPT_MANUAL"),
  invalid("INVALID");

  const NetworkAttachmentConnectionPreference(this.value);
  final String value;

  static NetworkAttachmentConnectionPreference fromValue(String value) {
    for (final item in NetworkAttachmentConnectionPreference.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkAttachmentConnectionPreference value: $value',
    );
  }
}
