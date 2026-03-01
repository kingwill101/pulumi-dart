/// The kind of the service.
enum FhirServiceKind {
  valueFhirStu3("fhir-Stu3"),
  valueFhirR4("fhir-R4");

  const FhirServiceKind(this.value);
  final String value;

  static FhirServiceKind fromValue(String value) {
    for (final item in FhirServiceKind.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FhirServiceKind value: $value');
  }
}

