enum EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem {
  logTypeUnspecified("LOG_TYPE_UNSPECIFIED"),
  gws("GWS"),
  gts("GTS"),
  all("ALL");

  const EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem(this.value);
  final String value;

  static EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem fromValue(
    String value,
  ) {
    for (final item
        in EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown EnterpriseCrmLoggingGwsSanitizeOptionsLogTypeItem value: $value',
    );
  }
}
