/// Allowed keyTypes pattern, string, binary. The key type used for matching, for example pattern tries to match the key to a glob-style pattern and string checks key is equal to value provided in keys.
enum StateStoreResourceKeyTypes {
  pattern("Pattern"),
  string_("String"),
  binary("Binary");

  const StateStoreResourceKeyTypes(this.wireValue);
  final String wireValue;

  static StateStoreResourceKeyTypes fromValue(String value) {
    for (final item in StateStoreResourceKeyTypes.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StateStoreResourceKeyTypes value: $value');
  }
}

