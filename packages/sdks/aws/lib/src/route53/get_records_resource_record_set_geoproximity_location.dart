// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_records_resource_record_set_geoproximity_location_coordinates.dart';

class GetRecordsResourceRecordSetGeoproximityLocation {
  /// The AWS Region the resource you are directing DNS traffic to, is in.
  final pulumi.Input<String> awsRegion;
  /// The bias increases or decreases the size of the geographic region from which Route 53 routes traffic to a resource.
  final pulumi.Input<int> bias;
  /// Contains the longitude and latitude for a geographic region.
  final pulumi.Input<GetRecordsResourceRecordSetGeoproximityLocationCoordinates> coordinates;
  /// An AWS Local Zone Group.
  final pulumi.Input<String> localZoneGroup;

  /// Creates a new [GetRecordsResourceRecordSetGeoproximityLocation].
  /// [awsRegion] The AWS Region the resource you are directing DNS traffic to, is in.
  /// [bias] The bias increases or decreases the size of the geographic region from which Route 53 routes traffic to a resource.
  /// [coordinates] Contains the longitude and latitude for a geographic region.
  /// [localZoneGroup] An AWS Local Zone Group.
  const GetRecordsResourceRecordSetGeoproximityLocation({
    required this.awsRegion,
    required this.bias,
    required this.coordinates,
    required this.localZoneGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegion': awsRegion,
      'bias': bias,
      'coordinates': pulumi.Input.mapInputValue<GetRecordsResourceRecordSetGeoproximityLocationCoordinates, Map<String, dynamic>>(coordinates, (value) => value.toMap()),
      'localZoneGroup': localZoneGroup,
    };
  }

  factory GetRecordsResourceRecordSetGeoproximityLocation.fromMap(Map<String, dynamic> map) {
    return GetRecordsResourceRecordSetGeoproximityLocation(
      awsRegion: pulumi.Input.fromValue(map['awsRegion'] as String),
      bias: pulumi.Input.fromValue((map['bias'] as num).toInt()),
      coordinates: pulumi.Input.fromValue(GetRecordsResourceRecordSetGeoproximityLocationCoordinates.fromMap((map['coordinates']! as Map).cast<String, dynamic>())),
      localZoneGroup: pulumi.Input.fromValue(map['localZoneGroup'] as String),
    );
  }
}
