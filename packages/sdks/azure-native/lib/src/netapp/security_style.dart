/// The security style of volume, default unix, defaults to ntfs for dual protocol or CIFS protocol
enum SecurityStyle {
  valueNtfs("ntfs"),
  valueUnix("unix");

  const SecurityStyle(this.wireValue);
  final String wireValue;

  static SecurityStyle fromValue(String value) {
    for (final item in SecurityStyle.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown SecurityStyle value: $value');
  }
}

