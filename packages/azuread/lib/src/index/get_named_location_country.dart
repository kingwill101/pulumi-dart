// ignore_for_file: unused_element, unnecessary_cast


class GetNamedLocationCountry {
  final List<String> countriesAndRegions;
  final String countryLookupMethod;
  final bool includeUnknownCountriesAndRegions;

  /// Creates a new [GetNamedLocationCountry].
  /// [countriesAndRegions] Required.
  /// [countryLookupMethod] Required.
  /// [includeUnknownCountriesAndRegions] Required.
  GetNamedLocationCountry({
    required this.countriesAndRegions,
    required this.countryLookupMethod,
    required this.includeUnknownCountriesAndRegions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'countriesAndRegions': countriesAndRegions,
      'countryLookupMethod': countryLookupMethod,
      'includeUnknownCountriesAndRegions': includeUnknownCountriesAndRegions,
    };
  }

  factory GetNamedLocationCountry.fromMap(Map<String, dynamic> map) {
    return GetNamedLocationCountry(
      countriesAndRegions: (map['countriesAndRegions'] as List).cast<String>(),
      countryLookupMethod: map['countryLookupMethod'] as String,
      includeUnknownCountriesAndRegions: map['includeUnknownCountriesAndRegions'] as bool,
    );
  }
}

