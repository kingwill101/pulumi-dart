/// Immutable. The FHIR specification version that this FHIR store supports natively. This field is immutable after store creation. Requests are rejected if they contain FHIR resources of a different version. Version is required for every FHIR store.
enum FhirStoreVersionHealthcareV1beta1 {
  versionUnspecified("VERSION_UNSPECIFIED"),
  dstu2("DSTU2"),
  stu3("STU3"),
  r4("R4");

  const FhirStoreVersionHealthcareV1beta1(this.value);
  final String value;

  static FhirStoreVersionHealthcareV1beta1 fromValue(String value) {
    for (final item in FhirStoreVersionHealthcareV1beta1.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown FhirStoreVersionHealthcareV1beta1 value: $value');
  }
}
