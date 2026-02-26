/// Enable parsing of references within complex FHIR data types such as Extensions. If this value is set to ENABLED, then features like referential integrity and Bundle reference rewriting apply to all references. If this flag has not been specified the behavior of the FHIR store will not change, references in complex data types will not be parsed. New stores will have this value set to ENABLED after a notification period. Warning: turning on this flag causes processing existing resources to fail if they contain references to non-existent resources.
enum FhirStoreComplexDataTypeReferenceParsing2 {
  complexDataTypeReferenceParsingUnspecified(
      "COMPLEX_DATA_TYPE_REFERENCE_PARSING_UNSPECIFIED"),
  disabled("DISABLED"),
  enabled("ENABLED");

  const FhirStoreComplexDataTypeReferenceParsing2(this.value);
  final String value;

  static FhirStoreComplexDataTypeReferenceParsing2 fromValue(String value) {
    for (final item in FhirStoreComplexDataTypeReferenceParsing2.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown FhirStoreComplexDataTypeReferenceParsing2 value: $value');
  }
}
