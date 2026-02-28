/// Immutable. Blockchain garbage collection mode.
enum GethDetailsGarbageCollectionMode {
  garbageCollectionModeUnspecified("GARBAGE_COLLECTION_MODE_UNSPECIFIED"),
  full("FULL"),
  archive("ARCHIVE");

  const GethDetailsGarbageCollectionMode(this.value);
  final String value;

  static GethDetailsGarbageCollectionMode fromValue(String value) {
    for (final item in GethDetailsGarbageCollectionMode.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown GethDetailsGarbageCollectionMode value: $value');
  }
}
