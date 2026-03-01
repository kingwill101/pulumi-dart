enum NetworkAttachmentConnectionPreferenceComputeBeta {
  acceptAutomatic("ACCEPT_AUTOMATIC"),
  acceptManual("ACCEPT_MANUAL"),
  invalid("INVALID");

  const NetworkAttachmentConnectionPreferenceComputeBeta(this.value);
  final String value;

  static NetworkAttachmentConnectionPreferenceComputeBeta fromValue(
    String value,
  ) {
    for (final item
        in NetworkAttachmentConnectionPreferenceComputeBeta.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown NetworkAttachmentConnectionPreferenceComputeBeta value: $value',
    );
  }
}
