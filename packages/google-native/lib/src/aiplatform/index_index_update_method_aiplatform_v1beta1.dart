/// Immutable. The update method to use with this Index. If not set, BATCH_UPDATE will be used by default.
enum IndexIndexUpdateMethodAiplatformV1beta1 {
  indexUpdateMethodUnspecified("INDEX_UPDATE_METHOD_UNSPECIFIED"),
  batchUpdate("BATCH_UPDATE"),
  streamUpdate("STREAM_UPDATE");

  const IndexIndexUpdateMethodAiplatformV1beta1(this.value);
  final String value;

  static IndexIndexUpdateMethodAiplatformV1beta1 fromValue(String value) {
    for (final item in IndexIndexUpdateMethodAiplatformV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown IndexIndexUpdateMethodAiplatformV1beta1 value: $value');
  }
}
