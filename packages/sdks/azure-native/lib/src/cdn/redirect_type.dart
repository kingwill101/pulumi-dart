/// The redirect type the rule will use when redirecting traffic.
enum RedirectType {
  moved("Moved"),
  found("Found"),
  temporaryRedirect("TemporaryRedirect"),
  permanentRedirect("PermanentRedirect");

  const RedirectType(this.value);
  final String value;

  static RedirectType fromValue(String value) {
    for (final item in RedirectType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RedirectType value: $value');
  }
}

