/// Specifies how each object's temporary hold status should be preserved for transfers between Google Cloud Storage buckets. If unspecified, the default behavior is the same as TEMPORARY_HOLD_PRESERVE.
enum MetadataOptionsTemporaryHold {
  temporaryHoldUnspecified("TEMPORARY_HOLD_UNSPECIFIED"),
  temporaryHoldSkip("TEMPORARY_HOLD_SKIP"),
  temporaryHoldPreserve("TEMPORARY_HOLD_PRESERVE");

  const MetadataOptionsTemporaryHold(this.value);
  final String value;

  static MetadataOptionsTemporaryHold fromValue(String value) {
    for (final item in MetadataOptionsTemporaryHold.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown MetadataOptionsTemporaryHold value: $value');
  }
}
