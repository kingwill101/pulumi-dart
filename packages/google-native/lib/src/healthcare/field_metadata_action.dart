/// Deidentify action for one field.
enum FieldMetadataAction {
  actionUnspecified("ACTION_UNSPECIFIED"),
  transform("TRANSFORM"),
  inspectAndTransform("INSPECT_AND_TRANSFORM"),
  doNotTransform("DO_NOT_TRANSFORM");

  const FieldMetadataAction(this.value);
  final String value;

  static FieldMetadataAction fromValue(String value) {
    for (final item in FieldMetadataAction.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FieldMetadataAction value: $value');
  }
}
