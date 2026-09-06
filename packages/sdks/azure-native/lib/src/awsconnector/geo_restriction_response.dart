// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of GeoRestriction
class GeoRestrictionResponse {
  /// A complex type that contains a ``Location`` element for each country in which you want CloudFront either to distribute your content or not distribute your content.
  final pulumi.Input<List<String>?>? locations;
  /// The method that you want to use to restrict distribution of your content by country.
  final pulumi.Input<String?>? restrictionType;

  /// Creates a new [GeoRestrictionResponse].
  /// [locations] A complex type that contains a ``Location`` element for each country in which you want CloudFront either to distribute your content or not distribute your content.
  /// [restrictionType] The method that you want to use to restrict distribution of your content by country.
  const GeoRestrictionResponse({
    this.locations,
    this.restrictionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?locations,
      'restrictionType': ?restrictionType,
    };
  }

  factory GeoRestrictionResponse.fromMap(Map<String, dynamic> map) {
    return GeoRestrictionResponse(
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      restrictionType: (() { final guardedValue = map['restrictionType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
