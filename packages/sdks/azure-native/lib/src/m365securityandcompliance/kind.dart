import 'package:pulumi/pulumi.dart' as pulumi;

/// The kind of the service.
enum Kind implements pulumi.PulumiEnum<String> {
  valueFhir("fhir"),
  valueFhirStu3("fhir-Stu3"),
  valueFhirR4("fhir-R4");

  const Kind(this.wireValue);
  @override
  final String wireValue;

  static Kind fromValue(String value) {
    for (final item in Kind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown Kind value: $value');
  }
}
