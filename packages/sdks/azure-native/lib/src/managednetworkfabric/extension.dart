/// Extension. Example: NoExtension | NPB.
enum Extension {
  valueNoExtension("NoExtension"),
  valueNPB("NPB");

  const Extension(this.wireValue);
  final String wireValue;

  static Extension fromValue(String value) {
    for (final item in Extension.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Extension value: $value');
  }
}
