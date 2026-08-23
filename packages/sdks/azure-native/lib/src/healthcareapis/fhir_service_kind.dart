/// The kind of the service.
enum FhirServiceKind {
  valueFhirStu3("fhir-Stu3"),
  valueFhirR4("fhir-R4");

  const FhirServiceKind(this.wireValue);
  final String wireValue;

  static FhirServiceKind fromValue(String value) {
    for (final item in FhirServiceKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FhirServiceKind value: $value');
  }
}
