enum NetworkAttachmentConnectionPreference2 {
  acceptAutomatic("ACCEPT_AUTOMATIC"),
  acceptManual("ACCEPT_MANUAL"),
  invalid("INVALID");

  const NetworkAttachmentConnectionPreference2(this.value);
  final String value;

  static NetworkAttachmentConnectionPreference2 fromValue(String value) {
    for (final item in NetworkAttachmentConnectionPreference2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkAttachmentConnectionPreference2 value: $value');
  }
}
