/// Deidentify action for one field.
enum FieldMetadataAction2 {
  actionUnspecified("ACTION_UNSPECIFIED"),
  transform("TRANSFORM"),
  inspectAndTransform("INSPECT_AND_TRANSFORM"),
  doNotTransform("DO_NOT_TRANSFORM");

  const FieldMetadataAction2(this.value);
  final String value;

  static FieldMetadataAction2 fromValue(String value) {
    for (final item in FieldMetadataAction2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FieldMetadataAction2 value: $value');
  }
}
