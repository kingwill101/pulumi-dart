/// Controls how resources are versioned on the FHIR service
enum FhirResourceVersionPolicy {
  valueNoVersion("no-version"),
  valueVersioned("versioned"),
  valueVersionedUpdate("versioned-update");

  const FhirResourceVersionPolicy(this.wireValue);
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
