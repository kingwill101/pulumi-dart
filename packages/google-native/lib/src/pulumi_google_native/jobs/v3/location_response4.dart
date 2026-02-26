// ignore_for_file: unused_element, unnecessary_cast

import 'lat_lng_response.dart';
import 'postal_address_response4.dart';

/// Output only. A resource that represents a location with full geographic information.
class LocationResponse4 {
  /// An object representing a latitude/longitude pair.
  final LatLngResponse latLng;

  /// The type of a location, which corresponds to the address lines field of PostalAddress. For example, "Downtown, Atlanta, GA, USA" has a type of LocationType#NEIGHBORHOOD, and "Kansas City, KS, USA" has a type of LocationType#LOCALITY.
  final String locationType;

  /// Postal address of the location that includes human readable information, such as postal delivery and payments addresses. Given a postal address, a postal service can deliver items to a premises, P.O. Box, or other delivery location.
  final PostalAddressResponse4 postalAddress;

  /// Radius in miles of the job location. This value is derived from the location bounding box in which a circle with the specified radius centered from LatLng covers the area associated with the job location. For example, currently, "Mountain View, CA, USA" has a radius of 6.17 miles.
  final double radiusInMiles;

  LocationResponse4({
    required this.latLng,
    required this.locationType,
    required this.postalAddress,
    required this.radiusInMiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['latLng'] = latLng.toMap();
    map['locationType'] = locationType;
    map['postalAddress'] = postalAddress.toMap();
    map['radiusInMiles'] = radiusInMiles;
    return map;
  }

  factory LocationResponse4.fromMap(Map<String, dynamic> map) {
    return LocationResponse4(
      latLng: LatLngResponse.fromMap(
          (map['latLng'] as Map).cast<String, dynamic>()),
      locationType: map['locationType'] as String,
      postalAddress: PostalAddressResponse4.fromMap(
          (map['postalAddress'] as Map).cast<String, dynamic>()),
      radiusInMiles: map['radiusInMiles'] as double,
    );
  }
}
