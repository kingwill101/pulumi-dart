/// Base profile type for handling FHIR fields.
enum FhirFieldConfigProfileType {
  profileTypeUnspecified("PROFILE_TYPE_UNSPECIFIED"),
  keepAll("KEEP_ALL"),
  basic("BASIC"),
  cleanAll("CLEAN_ALL");

  const FhirFieldConfigProfileType(this.value);
  final String value;

  static FhirFieldConfigProfileType fromValue(String value) {
    for (final item in FhirFieldConfigProfileType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FhirFieldConfigProfileType value: $value');
  }
}

