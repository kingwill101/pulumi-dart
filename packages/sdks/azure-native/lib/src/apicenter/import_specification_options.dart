/// Indicates if the specification should be imported along with metadata.
enum ImportSpecificationOptions {
  never_("never"),
  onDemand("ondemand"),
  always("always");

  const ImportSpecificationOptions(this.wireValue);
  final String wireValue;

  static ImportSpecificationOptions fromValue(String value) {
    for (final item in ImportSpecificationOptions.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ImportSpecificationOptions value: $value');
  }
}

