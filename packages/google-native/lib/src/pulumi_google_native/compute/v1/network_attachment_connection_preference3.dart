enum NetworkAttachmentConnectionPreference3 {
  acceptAutomatic("ACCEPT_AUTOMATIC"),
  acceptManual("ACCEPT_MANUAL"),
  invalid("INVALID");

  const NetworkAttachmentConnectionPreference3(this.value);
  final String value;

  static NetworkAttachmentConnectionPreference3 fromValue(String value) {
    for (final item in NetworkAttachmentConnectionPreference3.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown NetworkAttachmentConnectionPreference3 value: $value');
  }
}
