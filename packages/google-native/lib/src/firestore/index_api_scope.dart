/// The API scope supported by this index.
enum IndexApiScope {
  anyApi("ANY_API"),
  datastoreModeApi("DATASTORE_MODE_API");

  const IndexApiScope(this.value);
  final String value;

  static IndexApiScope fromValue(String value) {
    for (final item in IndexApiScope.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexApiScope value: $value');
  }
}

