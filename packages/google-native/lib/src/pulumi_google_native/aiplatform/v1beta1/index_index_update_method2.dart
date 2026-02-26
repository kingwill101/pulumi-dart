/// Immutable. The update method to use with this Index. If not set, BATCH_UPDATE will be used by default.
enum IndexIndexUpdateMethod2 {
  indexUpdateMethodUnspecified("INDEX_UPDATE_METHOD_UNSPECIFIED"),
  batchUpdate("BATCH_UPDATE"),
  streamUpdate("STREAM_UPDATE");

  const IndexIndexUpdateMethod2(this.value);
  final String value;

  static IndexIndexUpdateMethod2 fromValue(String value) {
    for (final item in IndexIndexUpdateMethod2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown IndexIndexUpdateMethod2 value: $value');
  }
}
