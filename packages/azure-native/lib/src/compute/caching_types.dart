/// Specifies the caching requirements. Possible values are: **None,** **ReadOnly,** **ReadWrite.** The defaulting behavior is: **None for Standard storage. ReadOnly for Premium storage.**
enum CachingTypes {
  valueNone("None"),
  valueReadOnly("ReadOnly"),
  valueReadWrite("ReadWrite");

  const CachingTypes(this.value);
  final String value;

  static CachingTypes fromValue(String value) {
    for (final item in CachingTypes.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown CachingTypes value: $value');
  }
}

