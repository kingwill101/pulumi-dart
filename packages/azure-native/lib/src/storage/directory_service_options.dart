/// Indicates the directory service used. Note that this enum may be extended in the future.
enum DirectoryServiceOptions {
  valueNone("None"),
  valueAADDS("AADDS"),
  valueAD("AD"),
  valueAADKERB("AADKERB");

  const DirectoryServiceOptions(this.value);
  final String value;

  static DirectoryServiceOptions fromValue(String value) {
    for (final item in DirectoryServiceOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown DirectoryServiceOptions value: $value');
  }
}

