/// Controls how resources are versioned on the FHIR service
enum FhirResourceVersionPolicy {
  valueNoVersion("no-version"),
  valueVersioned("versioned"),
  valueVersionedUpdate("versioned-update");

  const FhirResourceVersionPolicy(this.value);
  final String value;

  static FhirResourceVersionPolicy fromValue(String value) {
    for (final item in FhirResourceVersionPolicy.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FhirResourceVersionPolicy value: $value');
  }
}

