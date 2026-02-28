/// Font sizes for both the title and content. The title will still be larger relative to the content.
enum TextStyleFontSize {
  fontSizeUnspecified("FONT_SIZE_UNSPECIFIED"),
  fsExtraSmall("FS_EXTRA_SMALL"),
  fsSmall("FS_SMALL"),
  fsMedium("FS_MEDIUM"),
  fsLarge("FS_LARGE"),
  fsExtraLarge("FS_EXTRA_LARGE");

  const TextStyleFontSize(this.value);
  final String value;

  static TextStyleFontSize fromValue(String value) {
    for (final item in TextStyleFontSize.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TextStyleFontSize value: $value');
  }
}

