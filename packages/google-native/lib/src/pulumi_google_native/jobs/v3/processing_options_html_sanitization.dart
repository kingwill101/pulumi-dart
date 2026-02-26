/// Optional. Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation is not disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
enum ProcessingOptionsHtmlSanitization {
  htmlSanitizationUnspecified("HTML_SANITIZATION_UNSPECIFIED"),
  htmlSanitizationDisabled("HTML_SANITIZATION_DISABLED"),
  simpleFormattingOnly("SIMPLE_FORMATTING_ONLY");

  const ProcessingOptionsHtmlSanitization(this.value);
  final String value;

  static ProcessingOptionsHtmlSanitization fromValue(String value) {
    for (final item in ProcessingOptionsHtmlSanitization.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ProcessingOptionsHtmlSanitization value: $value');
  }
}
