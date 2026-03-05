/// The kind of FHIR Service.
enum FhirServiceVersion {
  valueSTU3("STU3"),
  valueR4("R4");

  const FhirServiceVersion(this.wireValue);
  final String wireValue;

  static FhirServiceVersion fromValue(String value) {
    for (final item in FhirServiceVersion.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FhirServiceVersion value: $value');
  }
}

