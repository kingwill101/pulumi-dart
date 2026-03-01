// ignore_for_file: unused_element, unnecessary_cast

import 'lat_lng_response_jobs_v4.dart';
import 'postal_address_response_jobs_v4.dart';

/// A resource that represents a location with full geographic information.
class LocationResponseJobsV4 {
  /// An object representing a latitude/longitude pair.
  final LatLngResponseJobsV4 latLng;

  /// The type of a location, which corresponds to the address lines field of google.type.PostalAddress. For example, "Downtown, Atlanta, GA, USA" has a type of LocationType.NEIGHBORHOOD, and "Kansas City, KS, USA" has a type of LocationType.LOCALITY.
  final String locationType;

  /// Postal address of the location that includes human readable information, such as postal delivery and payments addresses. Given a postal address, a postal service can deliver items to a premises, P.O. Box, or other delivery location.
  final PostalAddressResponseJobsV4 postalAddress;

  /// Radius in miles of the job location. This value is derived from the location bounding box in which a circle with the specified radius centered from google.type.LatLng covers the area associated with the job location. For example, currently, "Mountain View, CA, USA" has a radius of 6.17 miles.
  final double radiusMiles;

  /// Creates a new [LocationResponseJobsV4].
  /// [latLng] An object representing a latitude/longitude pair.
  /// [locationType] The type of a location, which corresponds to the address lines field of google.type.PostalAddress. For example, "Downtown, Atlanta, GA, USA" has a type of LocationType.NEIGHBORHOOD, and "Kansas City, KS, USA" has a type of LocationType.LOCALITY.
  /// [postalAddress] Postal address of the location that includes human readable information, such as postal delivery and payments addresses. Given a postal address, a postal service can deliver items to a premises, P.O. Box, or other delivery location.
  /// [radiusMiles] Radius in miles of the job location. This value is derived from the location bounding box in which a circle with the specified radius centered from google.type.LatLng covers the area associated with the job location. For example, currently, "Mountain View, CA, USA" has a radius of 6.17 miles.
  LocationResponseJobsV4({
    required this.latLng,
    required this.locationType,
    required this.postalAddress,
    required this.radiusMiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'latLng': latLng.toMap(),
      'locationType': locationType,
      'postalAddress': postalAddress.toMap(),
      'radiusMiles': radiusMiles,
    };
  }

  factory LocationResponseJobsV4.fromMap(Map<String, dynamic> map) {
    return LocationResponseJobsV4(
      latLng: LatLngResponseJobsV4.fromMap(
        (map['latLng'] as Map).cast<String, dynamic>(),
      ),
      locationType: map['locationType'] as String,
      postalAddress: PostalAddressResponseJobsV4.fromMap(
        (map['postalAddress'] as Map).cast<String, dynamic>(),
      ),
      radiusMiles: map['radiusMiles'] as double,
    );
  }
}
