/// Determines how to redact text from image.
enum ImageConfigTextRedactionMode2 {
  textRedactionModeUnspecified("TEXT_REDACTION_MODE_UNSPECIFIED"),
  redactAllText("REDACT_ALL_TEXT"),
  redactSensitiveText("REDACT_SENSITIVE_TEXT"),
  redactNoText("REDACT_NO_TEXT"),
  redactSensitiveTextCleanDescriptors(
      "REDACT_SENSITIVE_TEXT_CLEAN_DESCRIPTORS");

  const ImageConfigTextRedactionMode2(this.value);
  final String value;

  static ImageConfigTextRedactionMode2 fromValue(String value) {
    for (final item in ImageConfigTextRedactionMode2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImageConfigTextRedactionMode2 value: $value');
  }
}
