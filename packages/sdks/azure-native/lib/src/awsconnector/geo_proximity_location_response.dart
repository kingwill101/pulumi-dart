// ignore_for_file: unused_element, unnecessary_cast

import 'coordinates_response.dart';

/// Definition of GeoProximityLocation
class GeoProximityLocationResponse {
  /// <p> The Amazon Web Services Region the resource you are directing DNS traffic to, is in. </p>
  final String? awsRegion;
  /// <p> The bias increases or decreases the size of the geographic region from which Route 53 routes traffic to a resource. </p> <p>To use <code>Bias</code> to change the size of the geographic region, specify the applicable value for the bias:</p> <ul> <li> <p>To expand the size of the geographic region from which Route 53 routes traffic to a resource, specify a positive integer from 1 to 99 for the bias. Route 53 shrinks the size of adjacent regions. </p> </li> <li> <p>To shrink the size of the geographic region from which Route 53 routes traffic to a resource, specify a negative bias of -1 to -99. Route 53 expands the size of adjacent regions. </p> </li> </ul>
  final int? bias;
  /// <p> Contains the longitude and latitude for a geographic region. </p>
  final CoordinatesResponse? coordinates;
  /// <p> Specifies an Amazon Web Services Local Zone Group. </p> <p>A local Zone Group is usually the Local Zone code without the ending character. For example, if the Local Zone is <code>us-east-1-bue-1a</code> the Local Zone Group is <code>us-east-1-bue-1</code>.</p> <p>You can identify the Local Zones Group for a specific Local Zone by using the <a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-availability-zones.html'>describe-availability-zones</a> CLI command:</p> <p>This command returns: <code>'GroupName': 'us-west-2-den-1'</code>, specifying that the Local Zone <code>us-west-2-den-1a</code> belongs to the Local Zone Group <code>us-west-2-den-1</code>.</p>
  final String? localZoneGroup;

  /// Creates a new [GeoProximityLocationResponse].
  /// [awsRegion] <p> The Amazon Web Services Region the resource you are directing DNS traffic to, is in. </p>
  /// [bias] <p> The bias increases or decreases the size of the geographic region from which Route 53 routes traffic to a resource. </p> <p>To use <code>Bias</code> to change the size of the geographic region, specify the applicable value for the bias:</p> <ul> <li> <p>To expand the size of the geographic region from which Route 53 routes traffic to a resource, specify a positive integer from 1 to 99 for the bias. Route 53 shrinks the size of adjacent regions. </p> </li> <li> <p>To shrink the size of the geographic region from which Route 53 routes traffic to a resource, specify a negative bias of -1 to -99. Route 53 expands the size of adjacent regions. </p> </li> </ul>
  /// [coordinates] <p> Contains the longitude and latitude for a geographic region. </p>
  /// [localZoneGroup] <p> Specifies an Amazon Web Services Local Zone Group. </p> <p>A local Zone Group is usually the Local Zone code without the ending character. For example, if the Local Zone is <code>us-east-1-bue-1a</code> the Local Zone Group is <code>us-east-1-bue-1</code>.</p> <p>You can identify the Local Zones Group for a specific Local Zone by using the <a href='https://docs.aws.amazon.com/cli/latest/reference/ec2/describe-availability-zones.html'>describe-availability-zones</a> CLI command:</p> <p>This command returns: <code>'GroupName': 'us-west-2-den-1'</code>, specifying that the Local Zone <code>us-west-2-den-1a</code> belongs to the Local Zone Group <code>us-west-2-den-1</code>.</p>
  GeoProximityLocationResponse({
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

  factory GeoProximityLocationResponse.fromMap(Map<String, dynamic> map) {
    return GeoProximityLocationResponse(
      awsRegion: map['awsRegion'] == null ? null : map['awsRegion'] as String,
      bias: map['bias'] == null ? null : map['bias'] as int,
      coordinates: map['coordinates'] == null ? null : CoordinatesResponse.fromMap((map['coordinates'] as Map).cast<String, dynamic>()),
      localZoneGroup: map['localZoneGroup'] == null ? null : map['localZoneGroup'] as String,
    );
  }
}

