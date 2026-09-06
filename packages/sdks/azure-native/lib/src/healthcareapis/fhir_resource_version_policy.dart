import 'package:pulumi/pulumi.dart' as pulumi;

/// Controls how resources are versioned on the FHIR service
enum FhirResourceVersionPolicy implements pulumi.PulumiEnum<String> {
  valueNoVersion("no-version"),
  valueVersioned("versioned"),
  valueVersionedUpdate("versioned-update");

  const FhirResourceVersionPolicy(this.wireValue);
  @override
  final String wireValue;

  static FhirResourceVersionPolicy fromValue(String value) {
    for (final item in FhirResourceVersionPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FhirResourceVersionPolicy value: $value');
  }
}
