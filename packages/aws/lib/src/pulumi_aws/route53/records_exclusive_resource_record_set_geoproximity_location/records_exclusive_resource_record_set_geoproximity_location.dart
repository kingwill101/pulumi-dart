// ignore_for_file: unused_element, unnecessary_cast

import '../records_exclusive_resource_record_set_geoproximity_location_coordinates/records_exclusive_resource_record_set_geoproximity_location_coordinates.dart';

class RecordsExclusiveResourceRecordSetGeoproximityLocation {
  /// AWS region of the resource where DNS traffic is directed to.
  final String? awsRegion;

  /// Increases or decreases the size of the geographic region from which Route 53 routes traffic to a resource.
  /// To expand the size of the geographic region from which Route 53 routes traffic to a resource, specify a positive integer from <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`99`" pulumi-lang-dotnet="`99`" pulumi-lang-go="`99`" pulumi-lang-python="`99`" pulumi-lang-yaml="`99`" pulumi-lang-java="`99`">`99`</span>.
  /// To shrink the size of the geographic region from which Route 53 routes traffic to a resource, specify a negative bias of `-1` to `-99`.
  /// See the [AWS documentation](https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/routing-policy-geoproximity.html) for additional details.
  final int? bias;

  /// Coordinates for a geoproximity resource record.
  /// See <span pulumi-lang-nodejs="`coordinates`" pulumi-lang-dotnet="`Coordinates`" pulumi-lang-go="`coordinates`" pulumi-lang-python="`coordinates`" pulumi-lang-yaml="`coordinates`" pulumi-lang-java="`coordinates`">`coordinates`</span> below.
  final RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates?
      coordinates;

  /// AWS local zone group.
  /// Identify the Local Zones Group for a specific Local Zone by using the [`describe-availability-zones` CLI command](https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-availability-zones.html).
  final String? localZoneGroup;

  RecordsExclusiveResourceRecordSetGeoproximityLocation({
    this.awsRegion,
    this.bias,
    this.coordinates,
    this.localZoneGroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsRegionValue = awsRegion;
    if (awsRegionValue != null) {
      map['awsRegion'] = awsRegionValue;
    }
    final biasValue = bias;
    if (biasValue != null) {
      map['bias'] = biasValue;
    }
    final coordinatesValue = coordinates;
    if (coordinatesValue != null) {
      map['coordinates'] = coordinatesValue.toMap();
    }
    final localZoneGroupValue = localZoneGroup;
    if (localZoneGroupValue != null) {
      map['localZoneGroup'] = localZoneGroupValue;
    }
    return map;
  }

  factory RecordsExclusiveResourceRecordSetGeoproximityLocation.fromMap(
      Map<String, dynamic> map) {
    return RecordsExclusiveResourceRecordSetGeoproximityLocation(
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      bias: map['bias'] == null ? null : map['bias'] as int,
      coordinates: map['coordinates'] == null
          ? null
          : RecordsExclusiveResourceRecordSetGeoproximityLocationCoordinates
              .fromMap((map['coordinates'] as Map).cast<String, dynamic>()),
      localZoneGroup: map['localZoneGroup'] == null
          ? null
          : map['localZoneGroup'] as String,
    );
  }
}
