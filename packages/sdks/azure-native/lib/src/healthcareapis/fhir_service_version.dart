import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of FHIR Service.
enum FhirServiceVersion implements pulumi.PulumiEnum<String> {
  valueSTU3("STU3"),
  valueR4("R4");

  const FhirServiceVersion(this.wireValue);
  @override
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
