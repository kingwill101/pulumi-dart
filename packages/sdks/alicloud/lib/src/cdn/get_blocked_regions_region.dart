// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBlockedRegionsRegion {
  /// The region to which the country belongs.
  final pulumi.Input<String> continent;
  /// National region abbreviation.
  final pulumi.Input<String> countriesAndRegions;
  /// The name of the country and region.
  final pulumi.Input<String> countriesAndRegionsName;

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
      continent: (map['continent'] as String).input(),
      countriesAndRegions: (map['countriesAndRegions'] as String).input(),
      countriesAndRegionsName: (map['countriesAndRegionsName'] as String).input(),
    );
  }
}

