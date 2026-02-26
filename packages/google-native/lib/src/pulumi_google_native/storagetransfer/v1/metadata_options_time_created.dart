/// Specifies how each object's `timeCreated` metadata is preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TIME_CREATED_SKIP.
enum MetadataOptionsTimeCreated {
  timeCreatedUnspecified("TIME_CREATED_UNSPECIFIED"),
  timeCreatedSkip("TIME_CREATED_SKIP"),
  timeCreatedPreserveAsCustomTime("TIME_CREATED_PRESERVE_AS_CUSTOM_TIME");

  const MetadataOptionsTimeCreated(this.value);
  final String value;

  static MetadataOptionsTimeCreated fromValue(String value) {
    for (final item in MetadataOptionsTimeCreated.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataOptionsTimeCreated value: $value');
  }
}
