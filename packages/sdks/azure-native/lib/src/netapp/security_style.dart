/// The security style of volume, default unix, defaults to ntfs for dual protocol or CIFS protocol
enum SecurityStyle {
  valueNtfs("ntfs"),
  valueUnix("unix");

  const SecurityStyle(this.value);
  final String value;

  static SecurityStyle fromValue(String value) {
    for (final item in SecurityStyle.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityStyle value: $value');
  }
}

