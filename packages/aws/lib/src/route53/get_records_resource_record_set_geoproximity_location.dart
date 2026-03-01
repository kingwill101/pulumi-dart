// ignore_for_file: unused_element, unnecessary_cast

import 'get_records_resource_record_set_geoproximity_location_coordinates.dart';

class GetRecordsResourceRecordSetGeoproximityLocation {
  /// The AWS Region the resource you are directing DNS traffic to, is in.
  final String awsRegion;

  /// The bias increases or decreases the size of the geographic region from which Route 53 routes traffic to a resource.
  final int bias;

  /// Contains the longitude and latitude for a geographic region.
  final GetRecordsResourceRecordSetGeoproximityLocationCoordinates coordinates;

  /// An AWS Local Zone Group.
  final String localZoneGroup;

  /// Creates a new [GetRecordsResourceRecordSetGeoproximityLocation].
  /// [awsRegion] The AWS Region the resource you are directing DNS traffic to, is in.
  /// [bias] The bias increases or decreases the size of the geographic region from which Route 53 routes traffic to a resource.
  /// [coordinates] Contains the longitude and latitude for a geographic region.
  /// [localZoneGroup] An AWS Local Zone Group.
  GetRecordsResourceRecordSetGeoproximityLocation({
    required this.awsRegion,
    required this.bias,
    required this.coordinates,
    required this.localZoneGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegion': awsRegion,
      'bias': bias,
      'coordinates': coordinates.toMap(),
      'localZoneGroup': localZoneGroup,
    };
  }

  factory GetRecordsResourceRecordSetGeoproximityLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetRecordsResourceRecordSetGeoproximityLocation(
      awsRegion: map['awsRegion'] as String,
      bias: map['bias'] as int,
      coordinates:
          GetRecordsResourceRecordSetGeoproximityLocationCoordinates.fromMap(
            (map['coordinates'] as Map).cast<String, dynamic>(),
          ),
      localZoneGroup: map['localZoneGroup'] as String,
    );
  }
}
