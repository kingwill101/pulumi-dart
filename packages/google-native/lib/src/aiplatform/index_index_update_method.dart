/// Immutable. The update method to use with this Index. If not set, BATCH_UPDATE will be used by default.
enum IndexIndexUpdateMethod {
  indexUpdateMethodUnspecified("INDEX_UPDATE_METHOD_UNSPECIFIED"),
  batchUpdate("BATCH_UPDATE"),
  streamUpdate("STREAM_UPDATE");

  const IndexIndexUpdateMethod(this.value);
  final String value;

  static IndexIndexUpdateMethod fromValue(String value) {
    for (final item in IndexIndexUpdateMethod.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexIndexUpdateMethod value: $value');
  }
}

