// ignore_for_file: unused_element, unnecessary_cast

import 'records_exclusive_resource_record_set_geoproximity_location_coordinates.dart';

class RecordsExclusiveResourceRecordSetGeoproximityLocation {
  /// AWS region of the resource where DNS traffic is directed to.
  final String? awsRegion;

  /// Increases or decreases the size of the geographic region from which Route 53 routes traffic to a resource.
  /// To expand the size of the geographic region from which Route 53 routes traffic to a resource, specify a positive integer from `1` to `99`.
  /// To shrink the size of the geographic region from which Route 53 routes traffic to a resource, specify a negative bias of `-1` to `-99`.
  /// See the [AWS documentation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy-geoproximity.html) for additional details.
  final int? bias;

  /// Coordinates for a geoproximity resource record.
  /// See `coordinates` below.
  final RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates?
  coordinates;

  /// AWS local zone group.
  /// Identify the Local Zones Group for a specific Local Zone by using the [`describe-availability-zones` CLI command](https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-availability-zones.html).
  final String? localZoneGroup;

  /// Creates a new [RecordsExclusiveResourceRecordSetGeoproximityLocation].
  /// [awsRegion] AWS region of the resource where DNS traffic is directed to.
  /// [bias] Increases or decreases the size of the geographic region from which Route 53 routes traffic to a resource.
  /// [coordinates] Coordinates for a geoproximity resource record.
  /// [localZoneGroup] AWS local zone group.
  RecordsExclusiveResourceRecordSetGeoproximityLocation({
    this.awsRegion,
    this.bias,
    this.coordinates,
    this.localZoneGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsRegion': ?awsRegion,
      'bias': ?bias,
      'coordinates': ?coordinates == null ? null : coordinates!.toMap(),
      'localZoneGroup': ?localZoneGroup,
    };
  }

  factory RecordsExclusiveResourceRecordSetGeoproximityLocation.fromMap(
    Map<String, dynamic> map,
  ) {
    return RecordsExclusiveResourceRecordSetGeoproximityLocation(
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      bias: map['bias'] == null ? null : map['bias'] as int,
      coordinates: map['coordinates'] == null
          ? null
          : RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates.fromMap(
              (map['coordinates'] as Map).cast<String, dynamic>(),
            ),
      localZoneGroup: map['localZoneGroup'] == null
          ? null
          : map['localZoneGroup'] as String,
    );
  }
}
