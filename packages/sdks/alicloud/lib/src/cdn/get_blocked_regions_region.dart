// ignore_for_file: unused_element, unnecessary_cast


class GetBlockedRegionsRegion {
  /// The region to which the country belongs.
  final String continent;
  /// National region abbreviation.
  final String countriesAndRegions;
  /// The name of the country and region.
  final String countriesAndRegionsName;

  /// Creates a new [GetBlockedRegionsRegion].
  /// [continent] The region to which the country belongs.
  /// [countriesAndRegions] National region abbreviation.
  /// [countriesAndRegionsName] The name of the country and region.
  GetBlockedRegionsRegion({
    required this.continent,
    required this.countriesAndRegions,
    required this.countriesAndRegionsName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continent': continent,
      'countriesAndRegions': countriesAndRegions,
      'countriesAndRegionsName': countriesAndRegionsName,
    };
  }

  factory GetBlockedRegionsRegion.fromMap(Map<String, dynamic> map) {
    return GetBlockedRegionsRegion(
      continent: map['continent'] as String,
      countriesAndRegions: map['countriesAndRegions'] as String,
      countriesAndRegionsName: map['countriesAndRegionsName'] as String,
    );
  }
}

