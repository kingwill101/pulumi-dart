// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionRestrictionsGeoRestriction {
  /// [ISO 3166-1-alpha-2 codes](http://www.iso.org/iso/country_codes/iso_3166_code_lists/country_names_and_code_elements.htm) for which you want CloudFront either to distribute your content (`whitelist`) or not distribute your content (`blacklist`). If the type is specified as `none` an empty array can be used.
  final pulumi.Input<List<String>?>? locations;
  /// Method that you want to use to restrict distribution of your content by country: `none`, `whitelist`, or `blacklist`.
  final pulumi.Input<String> restrictionType;

  /// Creates a new [DistributionRestrictionsGeoRestriction].
  /// [locations] [ISO 3166-1-alpha-2 codes](http://www.iso.org/iso/country_codes/iso_3166_code_lists/country_names_and_code_elements.htm) for which you want CloudFront either to distribute your content (`whitelist`) or not distribute your content (`blacklist`). If the type is specified as `none` an empty array can be used.
  /// [restrictionType] Method that you want to use to restrict distribution of your content by country: `none`, `whitelist`, or `blacklist`.
  const DistributionRestrictionsGeoRestriction({
    this.locations,
    required this.restrictionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'restrictionType': restrictionType,
    };
  }

  factory DistributionRestrictionsGeoRestriction.fromMap(Map<String, dynamic> map) {
    return DistributionRestrictionsGeoRestriction(
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      restrictionType: pulumi.Input.fromValue(map['restrictionType'] as String),
    );
  }
}
