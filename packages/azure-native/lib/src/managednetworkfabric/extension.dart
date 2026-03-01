/// Extension. Example: NoExtension | NPB.
enum Extension {
  valueNoExtension("NoExtension"),
  valueNPB("NPB");

  const Extension(this.value);
  final String value;

  static Extension fromValue(String value) {
    for (final item in Extension.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Extension value: $value');
  }
}

