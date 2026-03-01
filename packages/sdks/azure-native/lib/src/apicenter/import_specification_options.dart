/// Indicates if the specification should be imported along with metadata.
enum ImportSpecificationOptions {
  never("never"),
  onDemand("ondemand"),
  always("always");

  const ImportSpecificationOptions(this.value);
  final String value;

  static ImportSpecificationOptions fromValue(String value) {
    for (final item in ImportSpecificationOptions.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImportSpecificationOptions value: $value');
  }
}

