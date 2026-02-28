/// Deidentify action for one field.
enum FieldMetadataActionHealthcareV1beta1 {
  actionUnspecified("ACTION_UNSPECIFIED"),
  transform("TRANSFORM"),
  inspectAndTransform("INSPECT_AND_TRANSFORM"),
  doNotTransform("DO_NOT_TRANSFORM");

  const FieldMetadataActionHealthcareV1beta1(this.value);
  final String value;

  static FieldMetadataActionHealthcareV1beta1 fromValue(String value) {
    for (final item in FieldMetadataActionHealthcareV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FieldMetadataActionHealthcareV1beta1 value: $value');
  }
}

