// ignore_for_file: unused_element, unnecessary_cast


/// Definition of GeoRestriction
class GeoRestrictionResponse {
  /// A complex type that contains a ``Location`` element for each country in which you want CloudFront either to distribute your content or not distribute your content.
  final List<String>? locations;
  /// The method that you want to use to restrict distribution of your content by country.
  final String? restrictionType;

  /// Creates a new [GeoRestrictionResponse].
  /// [locations] A complex type that contains a ``Location`` element for each country in which you want CloudFront either to distribute your content or not distribute your content.
  /// [restrictionType] The method that you want to use to restrict distribution of your content by country.
  GeoRestrictionResponse({
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
      locations: map['locations'] == null ? null : (map['locations'] as List).cast<String>(),
      restrictionType: map['restrictionType'] == null ? null : map['restrictionType'] as String,
    );
  }
}

