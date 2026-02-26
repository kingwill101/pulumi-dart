/// Option for job HTML content sanitization. Applied fields are: * description * applicationInfo.instruction * incentives * qualifications * responsibilities HTML tags in these fields may be stripped if sanitiazation isn't disabled. Defaults to HtmlSanitization.SIMPLE_FORMATTING_ONLY.
enum ProcessingOptionsHtmlSanitization2 {
  htmlSanitizationUnspecified("HTML_SANITIZATION_UNSPECIFIED"),
  htmlSanitizationDisabled("HTML_SANITIZATION_DISABLED"),
  simpleFormattingOnly("SIMPLE_FORMATTING_ONLY");

  const ProcessingOptionsHtmlSanitization2(this.value);
  final String value;

  static ProcessingOptionsHtmlSanitization2 fromValue(String value) {
    for (final item in ProcessingOptionsHtmlSanitization2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown ProcessingOptionsHtmlSanitization2 value: $value');
  }
}
