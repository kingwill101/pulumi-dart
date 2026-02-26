/// Required. The type of data in this index.
enum IndexConfigType {
  indexTypeUnspecified("INDEX_TYPE_UNSPECIFIED"),
  indexTypeString("INDEX_TYPE_STRING"),
  indexTypeInteger("INDEX_TYPE_INTEGER");

  const IndexConfigType(this.value);
  final String value;

  static IndexConfigType fromValue(String value) {
    for (final item in IndexConfigType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexConfigType value: $value');
  }
}
